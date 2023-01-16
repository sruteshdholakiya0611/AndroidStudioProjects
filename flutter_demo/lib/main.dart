import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Consolas',
      ),
      home: const MyDemoApp()
    );
  }
}

class MyDemoApp extends StatefulWidget{
  const MyDemoApp({Key? key}) : super(key: key);

  @override
  State<MyDemoApp> createState() => DemoApp();
}

class DemoApp extends State<MyDemoApp>{
  String demoText = "Flutter Demo Application";

  void updateText(){
    setState(() {
      demoText = "I Am Srutesh Dholakiya";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F1F1),
      appBar: AppBar(
        backgroundColor: Colors.indigo[300],
        title: const Text("Flutter App", style: TextStyle(fontFamily: 'Colonna MT', fontSize: 35,), textDirection: TextDirection.rtl,),
      ),
      body: Center(
        child: Text(demoText, style: const TextStyle(fontSize: 20.0, color: Colors.black,)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: updateText,
        tooltip: 'Flutter',
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.indigoAccent,
                offset: Offset(0, 5),
                blurRadius: 90.0,
                spreadRadius: 20.0,
                blurStyle: BlurStyle.inner,
              ),
            ],
            shape: BoxShape.circle,
          ),
          child: const FittedBox(
            fit: BoxFit.fill,
            child: Center(
              child: Text("F" , style: TextStyle(fontFamily: 'Colonna MT', fontSize: 35, fontStyle: FontStyle.normal),),
            ),
          )
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(
            height: 70.0,
            decoration: const BoxDecoration(
            // color: Colors.blueAccent[100],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          margin: const EdgeInsets.only(left: 12.0, right: 12.0),
          padding: const EdgeInsets.all(12.0),
        ),
      ),
    );
  }

}
