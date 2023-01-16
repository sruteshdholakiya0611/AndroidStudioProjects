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
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 25),
          bodyText2: TextStyle(fontSize: 20),
        ),
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
  bool flag = false;

  void _incrementCounter() {
    setState(() {
      flag = !flag;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Flutter Demo Application',
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              child: Text(flag ? 'Lenovo Laptop' : 'Apple Laptop'),
            ),
                const RatingBox(),
            //   ],
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Click On',
        child: const Icon(Icons.add_alert_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class RatingBox extends StatefulWidget {
  const RatingBox({Key? key}) : super(key: key);

  @override
  State<RatingBox> createState() => _RatingBoxState();
}

class _RatingBoxState extends State<RatingBox> {
  int rating = 0;
  
  void _setRatingOne(){
    setState((){
      rating = 1;
    });
  }

  void _setRatingTwo(){
    setState((){
      rating = 2;
    });
  }

  void _setRatingThree(){
    setState((){
      rating = 3;
    });
  }

  void _setRatingFour(){
    setState((){
      rating = 4;
    });
  }

  void _setRatingFive(){
    setState((){
      rating = 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: IconButton(
            color: const Color(0xFF6895ED),
            icon: (rating >= 1)? const Icon(Icons.star) : const Icon(Icons.star_border),
            onPressed: (){
              _setRatingOne();
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: IconButton(
            color: const Color(0xFF6895ED),
            icon: (rating >= 2)? const Icon(Icons.star) : const Icon(Icons.star_border),
            onPressed: (){
              _setRatingTwo();
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: IconButton(
            color: const Color(0xFF6895ED),
            icon: (rating >= 3)? const Icon(Icons.star) : const Icon(Icons.star_border),
            onPressed: (){
              _setRatingThree();
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: IconButton(
            color: const Color(0xFF6895ED),
            icon: (rating >= 4)? const Icon(Icons.star) : const Icon(Icons.star_border),
            onPressed: (){
              _setRatingFour();
            },
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: IconButton(
            color: const Color(0xFF6895ED),
            icon: (rating >= 5)? const Icon(Icons.star) : const Icon(Icons.star_border),
            onPressed: (){
              _setRatingFive();
            },
          ),
        ),
      ],
    );
  }
}