import 'package:flutter/material.dart';

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
        textTheme: const TextTheme(
          button: TextStyle(fontSize: 20),
        )
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
  bool _light = true;
  late IconData _iconData = Icons.lightbulb;
  
  String textData = '';

  SnackBar _snackBar(String textName){
    return SnackBar(
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.only(left: 10, right: 10),
            child: Icon(Icons.format_align_left_outlined, size: 30, color: Color(0xFF6895ED),),
          ),
          Text(textData = textName, style: const TextStyle(fontFamily: 'Consolas', fontSize: 20, color: Color(0xFF999999)),),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal),
        title: const Text('Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Flutter Demo Application',
              style: TextStyle(fontSize: 18),
            ),
            IconButton(
              iconSize: 40,
              color: _light ? const Color(0xFF6895ED) : const Color(0xFF999999),
              onPressed: (){
                setState((){
                  _light = !_light;
                });
              },
              icon: const Icon(Icons.light_mode_rounded),
            ),
            GestureDetector(
              onTap: (){
                setState((){
                  _light = !_light;
                });
              },
              onDoubleTap: () {
                setState((){
                  ScaffoldMessenger.of(context).showSnackBar(_snackBar('Double Tab'));
                });
              },
              onForcePressPeak: (index) {
                setState((){
                  ScaffoldMessenger.of(context).showSnackBar(_snackBar('Force Press'));
                });
              },
              onLongPress: () {
                setState((){
                  ScaffoldMessenger.of(context).showSnackBar(_snackBar('Long Press'));
                });
              },
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: const Color(0xFF6895ED),),
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    _light ? 'LIGHT ON' : 'LIGHT OFF',
                    style: const TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
                  ),
                ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState((){
            _iconData = _light ?  Icons.lightbulb : Icons.lightbulb_outline;
          });
        },
        tooltip: 'Click On',
        child: Icon(_iconData, size: 25,),
      ),
    );
  }
}