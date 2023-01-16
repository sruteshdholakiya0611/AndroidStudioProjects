import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigationbar/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Consolas',
        primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            button: TextStyle(fontSize: 25),
          )
      ),
      home: const SplashScreen(),
    );
  }
}