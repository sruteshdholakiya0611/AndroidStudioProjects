import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Consolas',
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          button: TextStyle(fontSize: 20),
          bodyText1: TextStyle(fontSize: 30,),
          bodyText2: TextStyle(fontSize: 20, color: Color(0xFFFFFFFF)),
        ),
      ),
      home: const ListenerPointer(),
    );
  }
}
class ListenerPointer extends StatefulWidget{
  const ListenerPointer({Key? key}) : super(key: key);

  @override
  State<ListenerPointer> createState() {
    return _ListenerPointer();
  }
}
class _ListenerPointer extends State<ListenerPointer>{
  int pointerDown = 0;
  int pointerUp = 0;
  double pointerX = 0;
  double pointerY = 0;
  String pointerHover = '';

  SnackBar _snackBar(String textName){
    return SnackBar(
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.only(left: 10, right: 10),
            child: Icon(Icons.mark_chat_unread, size: 30, color: Color(0xFF6895ED),),
          ),
          Text(textName, style: const TextStyle(fontFamily: 'Consolas', fontSize: 20, color: Color(0xFF999999)),),
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
          child: Listener(
            onPointerCancel: (PointerEvent event) {
              setState((){
                ScaffoldMessenger.of(context).showSnackBar(_snackBar(pointerHover = 'Cancel'));
              });
            },
            onPointerHover: (PointerEvent event) {
              setState((){
                ScaffoldMessenger.of(context).showSnackBar(_snackBar(pointerHover = 'Hover'));
              });
            },
            onPointerMove: (PointerEvent event){
              setState((){
                pointerX = event.position.dx;
                pointerY = event.position.dy;
              });
            },
            onPointerDown: (PointerEvent event) {
              setState((){
                pointerDown++;
              });
            },
            onPointerUp: (PointerEvent event) {
              setState((){
                pointerUp++;
              });
            },
            child: Container(
              height: 250,
              decoration: const BoxDecoration(
                color: Color(0xFF6895ED),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Padding(padding: EdgeInsets.all(20),
                          child: Icon(Icons.mark_chat_unread, size: 40, color: Color(0xFFFFFFFF),),
                        ),
                        Text('Pointer Event', style: TextStyle(fontSize: 25),),
                      ],
                    ),
                    Text('Pointer Down : $pointerDown \nPointer UP : $pointerUp'),
                    Padding(padding: const EdgeInsets.only(top: 20),
                      child: Text('Position: (${pointerX.toStringAsFixed(2)}, ${pointerY.toStringAsFixed(2)})'),
                    ),
                  ],
                ),
              )
            )
          ),
        )
    );
  }
}
