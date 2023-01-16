import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:network_app/album.dart';
import 'package:http/http.dart' as http;
import 'package:network_app/delete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Consolas',
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late Future<Album> dataAlbum;

  Future<Album> fetchData() async {
    http.Response response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/3'));

    if(response.statusCode == 200){
      return Album.fromJson(jsonDecode(response.body));
    }
    else{
      throw Exception('Failed To load data!');
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataAlbum = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal),
        title: Text(widget.title),
        toolbarHeight: 200,
        toolbarTextStyle: const TextStyle(fontFamily: 'Consolas'),
        shadowColor: const Color(0xFF6895ED),
        elevation: 10,
        titleSpacing: 10,
        actions: [
          Padding(padding: const EdgeInsets.all(10),
            child: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const DeletePage()));
              },
              icon: const Icon(Icons.delete),
              iconSize: 30,
              splashRadius: 50,
              splashColor: const Color(0xFF777777),
            ),
          ),
        ],
      ),
      body: Center(
        child: FutureBuilder<Album>(
          future: dataAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(snapshot.data!.title, style: const TextStyle(fontSize: 25,)),
              );
            }
            else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.keyboard_arrow_right_outlined),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
