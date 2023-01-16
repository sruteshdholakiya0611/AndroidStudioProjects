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
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => TabApp();
}

class TabApp extends State<MyHomePage> with TickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontStyle: FontStyle.normal),
            title: const Text('Flutter App'),
            bottom: TabBar(
              controller: _tabController,
                tabs: const [
                  Tab(icon: Icon(Icons.account_balance),),
                  Tab(icon: Icon(Icons.account_balance_wallet),),
                  Tab(icon: Icon(Icons.dashboard_rounded),),
                ],
            ),
          ),
        body: TabBarView(
           controller: _tabController,
            children: const [
              Center(
                child: Icon(
                  Icons.account_balance,
                  color: Color(0xFF6495ED),
                  size: 30,
                ),
              ),
              Center(
                child: Icon(
                  Icons.account_balance_wallet,
                  color: Color(0xFF6495ED),
                  size: 30,
                ),
              ),
              Center(
                child: Icon(
                  Icons.dashboard_rounded,
                  color: Color(0xFF6495ED),
                  size: 30,
                ),
              ),
            ],
        ),
    );
  }

}
// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key? key,}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         initialIndex: 1,
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontStyle: FontStyle.normal),
//             title: const Text('Flutter App'),
//             bottom: const TabBar(
//                 tabs: [
//                   Tab(icon: Icon(Icons.account_balance),),
//                   Tab(icon: Icon(Icons.account_balance_wallet),),
//                   Tab(icon: Icon(Icons.dashboard_rounded),),
//                 ],
//             ),
//           ),
//           body: const TabBarView(
//             children: [
//               Center(
//                 child: Icon(
//                   Icons.account_balance,
//                   color: Color(0xFF6495ED),
//                   size: 30,
//                 ),
//               ),
//               Center(
//                 child: Icon(
//                   Icons.account_balance_wallet,
//                   color: Color(0xFF6495ED),
//                   size: 30,
//                 ),
//               ),
//               Center(
//                 child: Icon(
//                   Icons.dashboard_rounded,
//                   color: Color(0xFF6495ED),
//                   size: 30,
//                 ),
//               ),
//             ],
//           ),
//         ),
//     );
//   }
// }
