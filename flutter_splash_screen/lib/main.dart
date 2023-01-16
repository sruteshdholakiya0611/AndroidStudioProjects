import 'dart:async';

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
        textTheme: const TextTheme(
            bodyText2: TextStyle(fontSize: 30, fontWeight: FontWeight.normal),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(const Duration(seconds: 5), () {
    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SplashScreen()));
    // },);
    Future.delayed(const Duration(seconds: 60), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SplashScreen()));
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Image(
              image: AssetImage('assets/images/img2.gif'),
              height: 300,
              width: 400,
              repeat: ImageRepeat.repeatY,
              filterQuality: FilterQuality.high,
              alignment: Alignment.topCenter,
              // color: Color(0xFF6895ED),
              // fit: BoxFit.fill,
            ),
            Padding(padding: EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10),
              child: Text(
                'Flutter Application',
                style: TextStyle(color: Color(0xFF999999), fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SplashScreen extends StatelessWidget{
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 250,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Padding(padding: EdgeInsets.only(left: 5, bottom: 20),
                    child: Text('Chat | E-Mail App', style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: Color(0xFF555555),),
                  ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: const EdgeInsets.only(right: 20),
                    child: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen(title: 'Chat App', iconData: Icons.mark_chat_read_rounded,)));
                    }, icon: const Icon(Icons.mark_unread_chat_alt_outlined),
                      iconSize: 70,
                      color: const Color(0xFF6895ED),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5, bottom: 20),
                    child: Text('Chat App', style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal, color: Color(0xFF777777), fontStyle: FontStyle.italic),),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(padding: const EdgeInsets.only(right: 20),
                    child: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondScreen(title: 'E-Mail App', iconData: Icons.mark_email_read_rounded,)));
                    }, icon: const Icon(Icons.mark_email_unread_outlined),
                      iconSize: 70,
                      color: const Color(0xFF6895ED),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(top: 5, bottom: 10),
                    child: Text('E-Mail App', style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal, color: Color(0xFF777777), fontStyle: FontStyle.italic),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget{
  const SecondScreen({Key? key, required this.title, required this.iconData}) : super(key: key);

  final String title;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(top: 10),
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                },
                  icon: Icon(iconData),
                  iconSize: 180,
                  color: const Color(0xFF6895ED),
                ),
              ),
              const Padding(padding: EdgeInsets.all(10),
                child: Text('E-Mail | Chat App', style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal, color: Color(0xFF777777),),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}