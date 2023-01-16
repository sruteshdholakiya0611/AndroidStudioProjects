import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Consolas',
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          button: TextStyle(fontSize: 20.0),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal,),
        title: const Text('Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 30),
                child: IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.align_horizontal_left_rounded,
                    color: Color(0xFF6895ED),
                    size: 50,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('Click On', style: TextStyle(fontSize: 25),),
              ),
            ],),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                  Padding(padding: EdgeInsets.only(left: 10, right: 10),
                    child: Icon(Icons.align_horizontal_left_rounded, size: 30, color: Color(0xFF6895ED),),
                  ),
                  Text('Left Side', style: TextStyle(fontFamily: 'Consolas', fontSize: 20, color: Color(0xFF999999)),),
                ],),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),),
                backgroundColor: const Color(0xFFF1F1F1),
                padding: const EdgeInsets.all(10),
                behavior: SnackBarBehavior.fixed,
                dismissDirection: DismissDirection.horizontal,
                action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {}
                ),
                duration: const Duration(seconds: 5),
              ),
          );
        },
        tooltip: 'Click On',
        child: const Icon(Icons.vertical_align_top, size: 30,),
      ),
    );
  }
}
