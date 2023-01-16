import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigationbar/appbar.dart';
import 'package:flutter_bottom_navigationbar/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Widget> _widget = <Widget>[
    const Center(
      child: Text(
        'Flutter Home', style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
      ),
    ),
    const Center(
      child: Text(
        'Flutter DashBoard', style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
      ),
    ),
    const Center(
      child: Text(
        'Flutter Phone Settings', style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
      ),
    ),
    const Center(
      child: Text(
        'Flutter Message', style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
      ),
    ),
  ];

  int _currentIndex = 0;
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: AppBarScreen(title: 'Flutter App',),
      ),
      body: _widget[_currentIndex],
      drawer: const DrawerScreen(),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          elevation: 0,
          indicatorShape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          height: 120,
          iconTheme: MaterialStateProperty.all(const IconThemeData(
            size: 32,
            color: Color(0xFF999999),
          )),
          labelTextStyle: MaterialStateProperty.all(const TextStyle(
              fontSize: 22,
              height: 1.5,
              color: Color(0xFF555555),
          )),
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        ),
        child: NavigationBar(
          labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
          backgroundColor: const Color(0xFFF0F8FF),
          selectedIndex: _currentIndex,
          onDestinationSelected: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.account_balance, size: 35,),
              icon: Icon(Icons.account_balance_outlined),
              label: 'Home',
              tooltip: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.dashboard_rounded, size: 35,),
              icon: Icon(Icons.dashboard_outlined),
              label: 'DashBoard',
              tooltip: 'DashBoard',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.perm_phone_msg_rounded, size: 35,),
              icon: Icon(Icons.perm_phone_msg_outlined),
              label: 'Phone',
              tooltip: 'Phone',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.forum_rounded, size: 35,),
              icon: Icon(Icons.forum_outlined),
              label: 'Message',
              tooltip: 'Message',
            ),
          ],
        ),
      ),
      // floatingActionButton: const FloatingActionButtonScreen(),
    );
  }
}