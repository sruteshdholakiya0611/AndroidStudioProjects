import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer App',
      theme: ThemeData(
        fontFamily: 'Consolas',
        primarySwatch: Colors.blue,
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
        centerTitle: false,
        titleTextStyle: const TextStyle(
        fontFamily: 'Colonna MT',
        fontSize: 35,
        fontStyle: FontStyle.normal,
      ),
        title: const Text("Flutter App",),
        actions: const <Widget>[],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 150,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Color(0xFF7986CB),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset.zero,
                      blurStyle: BlurStyle.inner,
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
                margin: const EdgeInsets.all(0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Icon(Icons.touch_app_outlined, color: Colors.white, size: 30,),
                    Text("Drawer App", style: TextStyle(fontSize: 30, color: Colors.white,), textAlign: TextAlign.left,),
                  ],
                ),
              ),
            ),
            const ListTile(
              title: Text("Flutter IT", style: TextStyle(fontSize: 20),),
              leading: Icon(Icons.account_balance_wallet),
            ),
            const ListTile(
              title: Text("Flutter CS", style: TextStyle(fontSize: 20),),
              leading: Icon(Icons.add_home_work),
            ),
            const ListTile(
              title: Text("Flutter EC", style: TextStyle(fontSize: 20),),
              leading: Icon(Icons.done_all),
            ),
          ],
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
             Text("Flutter Demo Application",
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 25.0,
        color: const Color(0x9FFFFFFF),
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 70,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Flutter',
        child: const Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
