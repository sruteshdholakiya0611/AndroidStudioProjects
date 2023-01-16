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
        primarySwatch: Colors.blue,
      ),
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
        drawer: Drawer(
          width: 350,
          semanticLabel: 'Drawer Application',
          child: ListView(
            children: <Widget>[
              SizedBox(
                child: DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color(0xFF6495ED),
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(10),
                    //   topRight: Radius.circular(10),
                    // ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
                  margin: const EdgeInsets.all(0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image.asset('assets/images/logo.png', width: 40.0, height: 80.0, fit: BoxFit.fill,),
                      ),
                      // const Padding(
                      //     padding: EdgeInsets.only(right: 20),
                      //   child: Icon(Icons.dashboard_outlined, color: Colors.white, size: 30,),
                      // ),
                      const Text("Drawer App", style: TextStyle(fontSize: 30, color: Colors.white,), textAlign: TextAlign.left,),
                    ],
                  ),
                ),
              ),
              ListTile(
                title: const Text("Flutter IT", style: TextStyle(fontSize: 20, ),),
                onTap: () {
                  Navigator.pop(context);
                },
                leading: const Icon(Icons.account_balance_wallet),
              ),
              ListTile(
                title: const Text("Flutter CS", style: TextStyle(fontSize: 20),),
                leading: const Icon(Icons.add_home_work),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text("Flutter EC", style: TextStyle(fontSize: 20),),
                leading: const Icon(Icons.done_all),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_home_work_rounded),
            tooltip: 'Show home',
            hoverColor: Colors.blueAccent,
            onPressed: () {},
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20.0, left: 20.0),
            child: Icon(Icons.account_balance_wallet),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondRoute()));
              },
              icon: const Icon(Icons.align_horizontal_right_outlined),
            tooltip: 'Click On',
            hoverColor: Colors.indigoAccent,
          ),
        ],
        leading: IconButton(
          onPressed: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.space_dashboard_rounded),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("Flutter Demo Application", style: TextStyle(fontSize: 20, color: Color(0xFF000000)),),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class SecondRoute extends StatelessWidget{
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.align_horizontal_left_outlined)
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.5, left: 10.5),
            child: IconButton(
              icon: const Icon(Icons.add_home_work_rounded),
              tooltip: 'Show home',
              hoverColor: Colors.blueAccent,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.5),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ThirdRoute()));
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(10.5),
                  primary: Colors.white,
                  // side: const BorderSide(color: Colors.white, width: 5),
                  backgroundColor: Colors.blueAccent,
                  textStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 20),
                ),
                child: const Text("Third Route"),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(15.5),
              child: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ThirdRoute()));
              }, icon: const Icon(Icons.account_balance_wallet)),
            ),
            const Text("Flutter Second Route", style: TextStyle(fontSize: 20, color: Color(0xFF000000)),),
          ],
        ),
      ),
    );
  }
}
class ThirdRoute extends StatelessWidget{
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Route"),
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: const Icon(Icons.align_horizontal_left_outlined)
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10.5, left: 10.5),
            child: IconButton(
              icon: const Icon(Icons.add_home_work_rounded),
              tooltip: 'Show home',
              hoverColor: Colors.blueAccent,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()));
              },
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.5),
              child: IconButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()));
              }, icon: const Icon(Icons.account_balance)),
            ),
            const Text("Flutter Third Route", style: TextStyle(fontSize: 20, color: Color(0xFF000000)),),
          ],
        ),
      ),
    );
  }
}