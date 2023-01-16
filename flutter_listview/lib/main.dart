import 'package:flutter/material.dart';
import 'package:flutter_listview/home.dart';
import 'package:flutter_listview/splash_screen.dart';
import 'package:flutter_listview/storage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Listview',
      theme: ThemeData(
        fontFamily: 'Consolas',
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      routes: {
        '/home' : (context) => const MyHomePage(),
        '/storage' : (context) => const StorageScreen(),
        '/splash' : (context) => const SplashScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}