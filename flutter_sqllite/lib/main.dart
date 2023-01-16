import 'package:flutter/material.dart';
import 'package:flutter_sqllite/appbar.dart';
import 'package:flutter_sqllite/body.dart';
import 'package:flutter_sqllite/bottomnavigationbar.dart';
import 'package:flutter_sqllite/drawer.dart';
import 'package:flutter_sqllite/floatingactionbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SQLite',
      theme: ThemeData(
        fontFamily: 'Consolas',
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter SQLite'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: AppbarScreen(title: widget.title)),
      body: const BodyScreen(),
      floatingActionButton: const FloatingActionButtonScreen(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      drawer: const DrawerScreen(),
      // bottomNavigationBar: const BottomNavigationBarScreen(),
    );
  }
}