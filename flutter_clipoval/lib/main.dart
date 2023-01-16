import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        fontFamily: 'Consolas',
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter App'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        titleTextStyle: const TextStyle(
          fontFamily: 'Consolas',
          fontSize: 30,
          fontWeight: FontWeight.normal,
        ),
        toolbarHeight: 80,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              clipper: MyClip(),
              child: Image.network('https://storage.googleapis.com/cms-storage-bucket/a9d6ce81aee44ae017ee.png',
                fit: BoxFit.contain,
                width: 250,
                height: 300,
              ),
            ),
            const Text(
              'Click on floating button',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class MyClip extends CustomClipper<Rect>{

  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return const Rect.fromLTRB(0, 0, 250, 215);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}