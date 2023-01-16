import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<DeleteAlbum> fetchData() async {
  http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/3'));

  if(response.statusCode == 200){
    return DeleteAlbum.fromJson(jsonDecode(response.body));
  }
  else{
    throw Exception('Failed To load data!');
  }
}

Future<DeleteAlbum> deleteData(String id) async {
   http.Response response = await http.delete(Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  if(response.statusCode == 200){
    return DeleteAlbum.fromJson(jsonDecode(response.body));
  }
  else {
    throw Exception('Failed To Delete Data!');
  }
}

class DeleteAlbum{
  final int? id;
  final String? title;

  const DeleteAlbum({
    this.id,
    this.title
  });

  factory DeleteAlbum.fromJson(Map<String, dynamic> json){
    return DeleteAlbum(
        id: json['id'],
        title: json['title']
    );
  }
}

class DeletePage extends StatefulWidget {
  const DeletePage({Key? key}) : super(key: key);

  @override
  State<DeletePage> createState() => _DeletePageState();
}

class _DeletePageState extends State<DeletePage> {
  late Future<DeleteAlbum> _dataAlbum;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dataAlbum = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delete API'),
        titleTextStyle: const TextStyle(
            fontFamily: 'Consolas',
            fontSize: 25,
            fontWeight: FontWeight.normal),
        toolbarHeight: 100,
        toolbarTextStyle: const TextStyle(fontFamily: 'Consolas'),
        elevation: 5,
        scrolledUnderElevation: 10,
        shadowColor: const Color(0xFF6895ED),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.logout_rounded),
              iconSize: 30,
              mouseCursor: MouseCursor.uncontrolled,
            ),
          ),
        ],
      ),
      body: Center(
        child: FutureBuilder<DeleteAlbum>(builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            if(snapshot.hasData){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(snapshot.data?.title ?? 'Deleted', style: const TextStyle(fontSize: 25,),),
                  ElevatedButton(
                    child: const Text('Delete Data', style: TextStyle(fontSize: 20),),
                    onPressed: () {
                      setState(() {
                        _dataAlbum =
                            deleteData(snapshot.data!.id.toString());
                      });
                    },
                  ),
                ],
              );
            }
            else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
          }

          return const CircularProgressIndicator();
        },
        future: _dataAlbum,
        ),
      ),
    );
  }
}
