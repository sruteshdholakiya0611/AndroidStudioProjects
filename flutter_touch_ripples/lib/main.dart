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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Consolas',
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          button: TextStyle(fontSize: 20),
        )
      ),
      home: const InkWellWidget(),
    );
  }
}

class InkWellWidget extends StatelessWidget{
  const InkWellWidget({Key? key}) : super(key: key);

  SnackBar _snackBar(String textName){
    return SnackBar(
      content: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.only(left: 10, right: 10),
            child: Icon(Icons.format_align_left_outlined, size: 30, color: Color(0xFF6895ED),),
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
        child:
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(_snackBar('Tap'));
              },
              onDoubleTap: (){
                ScaffoldMessenger.of(context).showSnackBar(_snackBar('Double Tap'));
              },
              hoverColor: const Color(0xFF6895ED),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text('Click On', style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal),),
              ),
            ),
      ),
    );
  }

}
