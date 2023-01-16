import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showDialog(context: context, builder: (context)=> const AlertDialog(
          contentPadding: EdgeInsets.all(10),
          title: Text('Input Text', style: TextStyle(
            fontSize: 25,
            letterSpacing: 10,
            wordSpacing: 10,
          ),),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            side: BorderSide(
              color: Color(0xFFF0F8FF),
              width: 2,
            ),
          ),
        ));
      },
    );
  }
}
