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
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontSize: 20)
        ),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/chat': (context) => const ChatRoute(),
        '/des_chat': (context) => const DescriptionChatRoute(),
        '/email': (context) => const EmailRoute(),
        '/des_email': (context) => const DescriptionEmailRoute(),
      },
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal),
        title: const Text('Flutter App'),
      ),
      body: Center(
          child: Container(
            height: 300,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              // border: Border(bottom: BorderSide(width: 0.5, color: Color(0xFF6895ED))),
              // boxShadow: [BoxShadow(color: Color(0xFF6895ED), spreadRadius: 5, blurRadius: 10, offset: Offset(0, 0)),
              //   BoxShadow(color: Color(0xFF999999), spreadRadius: 5, blurRadius: 10, offset: Offset(0, 0))],
            ),
            child: Column(
              children: [
                Padding(padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text('Notification', textScaleFactor: 2, style: TextStyle(color: Color(0xFF999999)),)
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5, bottom: 5),
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 50,
                          color: const Color(0xFFB0C4DE),
                          onPressed: () {
                            Navigator.pushNamed(context, '/chat');
                          },
                          icon: const Icon(Icons.mark_chat_unread_rounded,),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5, bottom: 10),
                        child: Text('| Chat Notification',
                          style: TextStyle(fontSize: 25,),),
                      ),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5, bottom: 5),
                        child: IconButton(
                          splashRadius: 50,
                          iconSize: 50,
                          color: const Color(0xFFB0C4DE),
                          onPressed: () {
                            Navigator.pushNamed(context, '/email');
                          },
                          icon: const Icon(Icons.mark_email_unread_rounded,),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 5, bottom: 10),
                        child: Text('| E-Mail Notification',
                          style: TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}

class ChatRoute extends StatelessWidget{
  const ChatRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat App'),
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: IconButton(
                splashRadius: 80,
                iconSize: 80,
                color: const Color(0xFFB0C4DE),
                onPressed: () {
                  Navigator.pushNamed(context, '/des_chat');
                },
                  icon: const Icon(Icons.mark_chat_unread_rounded,),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text('Click ON',
              style: TextStyle(fontSize: 25),),
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionChatRoute extends StatelessWidget{
  const DescriptionChatRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Check App'),
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: IconButton(
                splashRadius: 100,
                iconSize: 180,
                color: const Color(0xFFB0C4DE),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.mark_chat_read_rounded,),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text('E-Mail ID | Chat',
                style: TextStyle(fontSize: 30),),
            ),
          ],
        ),
      ),
    );
  }
}

class EmailRoute extends StatelessWidget{
  const EmailRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Mail App'),
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: IconButton(
                splashRadius: 80,
                iconSize: 80,
                color: const Color(0xFFB0C4DE),
                onPressed: () {
                  Navigator.pushNamed(context, '/des_email');
                },
                icon: const Icon(Icons.mark_email_unread_rounded,),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text('Click ON',
                style: TextStyle(fontSize: 25),),
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionEmailRoute extends StatelessWidget{
  const DescriptionEmailRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Mail Check App'),
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: IconButton(
                splashRadius: 100,
                iconSize: 180,
                color: const Color(0xFFB0C4DE),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.mark_email_read_rounded,),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text('E-Mail ID | Chat',
                style: TextStyle(fontSize: 30),),
            ),
          ],
        ),
      ),
    );
  }
}