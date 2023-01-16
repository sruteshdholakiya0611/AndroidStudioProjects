// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_serialization/user.dart';
import 'package:json_serialization/json_serializable_user.dart';

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

  UserCustom userObj = UserCustom(id: '19IT472', name: 'Srutesh Dholakiya');

  String userJson = '{"id":"19IT472","name":"Srutesh Dholakiya"}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(
            fontFamily: 'Consolas',
            fontSize: 30,
            fontWeight: FontWeight.normal,
        ),
        shape: const RoundedRectangleBorder(side: BorderSide(color: Color(0xFF6895ED))),
        title: Text(widget.title),
        toolbarHeight: 150,
        actions: [
          Padding(padding: const EdgeInsets.all(10),
            child: IconButton(onPressed: (){},
              icon: const Icon(Icons.settings),
              iconSize: 30,
              splashRadius: 50,
            ),
          ),
          Padding(padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const NextScreen()));
                },
                  icon: const Icon(Icons.dashboard_outlined),
                  iconSize: 30,
                  splashRadius: 50,
                ),
                const Text('Next',
                  style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 25),
                ),
              ],
            )
          ),
        ],
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 10, spreadRadius: 2.5, color: Color(0xFF6895ED)),
            ],
          ),
          transformAlignment: Alignment.center,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 100,
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Flutter Custom', style: TextStyle(fontSize: 40,
                    color: Color(0xFF777777),
                    letterSpacing: 5,
                  ),),
                )
              ),
              const Padding(padding: EdgeInsets.all(20),
                child: Text(
                  'Flutter Serialization',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                ),
              ),
              ElevatedButton(onPressed: (){
                Map<String, dynamic> serializeMap = userObj.toJson();
                var json = jsonEncode(serializeMap);
                print(json.toString());
              },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  fixedSize: MaterialStateProperty.all(const Size(280, 80)),
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                  shadowColor: MaterialStateProperty.all(const Color(0xFF999999)),
                  elevation: MaterialStateProperty.all(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(padding: EdgeInsets.all(10),
                      child: Icon(Icons.space_dashboard_rounded, size: 35,),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child: Text('Serialization', style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(20),
                child: Text(
                  'Flutter De-Serialization',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                ),
              ),
              ElevatedButton(onPressed: (){
                Map<String, dynamic> deSerializeMap = jsonDecode(userJson);
                UserCustom userModel = UserCustom.fromJson(deSerializeMap);
                print('Name : ${userModel.name}');
                print(userModel.id.toString());
              },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  fixedSize: MaterialStateProperty.all(const Size(320, 80)),
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                  shadowColor: MaterialStateProperty.all(const Color(0xFF999999)),
                  elevation: MaterialStateProperty.all(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(padding: EdgeInsets.all(10),
                      child: Icon(Icons.space_dashboard_rounded, size: 35,),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child: Text('Deserialization', style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NextScreen extends StatefulWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {

  User userObj = User(id: '19IT472', name: 'Srutesh Dholakiya', email: 'sruteshdholakiya@gmail.com');

  String userJson = '{"id":"19IT472","name":"Srutesh Dholakiya","email":"sruteshdholakiya@gmail.com"}';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(
          fontFamily: 'Consolas',
          fontSize: 30,
          fontWeight: FontWeight.normal,
        ),
        shape: const RoundedRectangleBorder(side: BorderSide(color: Color(0xFF6895ED))),
        title: const Text('Json Serialization'),
        toolbarHeight: 100,
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(blurStyle: BlurStyle.outer, blurRadius: 10, spreadRadius: 2.5, color: Color(0xFF6895ED)),
            ],
          ),
          transformAlignment: Alignment.center,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                  height: 100,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('Flutter Package', style: TextStyle(fontSize: 40,
                      color: Color(0xFF777777),
                      letterSpacing: 5,
                    ),),
                  )
              ),
              const Padding(padding: EdgeInsets.all(20),
                child: Text(
                  'Flutter Serialization',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                ),
              ),
              ElevatedButton(onPressed: (){
                Map<String, dynamic> serializeMap = userObj.toJson();
                var json = jsonEncode(serializeMap);
                print(json.toString());
              },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  fixedSize: MaterialStateProperty.all(const Size(280, 80)),
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                  shadowColor: MaterialStateProperty.all(const Color(0xFF999999)),
                  elevation: MaterialStateProperty.all(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(padding: EdgeInsets.all(10),
                      child: Icon(Icons.space_dashboard_rounded, size: 35,),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child: Text('Serialization', style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.all(20),
                child: Text(
                  'Flutter De-Serialization',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
                ),
              ),
              ElevatedButton(onPressed: (){
                Map<String, dynamic> deSerializeMap = jsonDecode(userJson);
                User userModel = User.fromJson(deSerializeMap);
                print('Name : ${userModel.name}');
                print('Email ID : ${userModel.email}');
                print(userModel.id.toString());
              },
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                  fixedSize: MaterialStateProperty.all(const Size(320, 80)),
                  shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                  shadowColor: MaterialStateProperty.all(const Color(0xFF999999)),
                  elevation: MaterialStateProperty.all(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(padding: EdgeInsets.all(10),
                      child: Icon(Icons.space_dashboard_rounded, size: 35,),
                    ),
                    Padding(padding: EdgeInsets.all(10),
                      child: Text('Deserialization', style: TextStyle(fontSize: 25),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}