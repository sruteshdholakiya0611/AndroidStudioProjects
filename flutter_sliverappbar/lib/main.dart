import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Sliver Appbar',
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

class CustomPopUpMenuItem{
  CustomPopUpMenuItem(this.title, this.icon);
  String title;
  IconData icon;
}

class _MyHomePageState extends State<MyHomePage> {

  String textData = ' ';

  // List icons = [
  //   Column(children: const [
  //     Icon(Icons.align_vertical_top_rounded),
  //     Text('Top'),
  //   ],),
  //   Column(children: const [
  //     Icon(Icons.align_vertical_bottom_rounded),
  //     Text('Bottom'),
  //   ],),
  //   Column(children: const [
  //     Icon(Icons.align_horizontal_left_rounded),
  //     Text('Left'),
  //   ],),
  //   Column(children: const [
  //     Icon(Icons.align_horizontal_right_rounded),
  //     Text('Right'),
  //   ],),
  // ];

  CustomScrollView _customScrollView(String text){
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          snap: true,
          stretch: true,
          collapsedHeight: 60,
          expandedHeight: 250,
          shadowColor: const Color(0xFF6895ED),
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            title: const Text('Flutter App', style: TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: Color(0xFF777777)), textAlign: TextAlign.start,),
            background: Image.asset('assets/images/img1.png', width: 40.0, height: 80.0, matchTextDirection: true,),
            centerTitle: false,
            expandedTitleScale: 1.5,
            titlePadding: const EdgeInsets.only(left: 100, top: 15, right: 10, bottom: 80),
          ),
          backgroundColor: const Color(0xFFFFFFFF),
          bottom: const TabBar(
            indicatorColor: Color(0xFFFFFFFF),
            labelColor: Color(0xFF6895ED),
            unselectedLabelColor: Color(0xFF999999),
            tabs: [
              Tab(
                icon: Icon(Icons.home_rounded),
                child: Text('Home', style: TextStyle(fontSize: 18),),
              ),
              Tab(
                icon: Icon(Icons.mark_email_unread_rounded),
                child: Text('Email', style: TextStyle(fontSize: 18),),
              ),
              Tab(
                icon: Icon(Icons.mark_chat_unread_rounded),
                child: Text('Chat', style: TextStyle(fontSize: 18),),
              ),
            ],
          ),
          actions: [
            PopupMenuButton<String>(itemBuilder: (context) => [
              PopupMenuItem(value: 'Top',child: Row(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 10, right: 20),
                    child: Icon(Icons.align_vertical_top_rounded, color: Color(0xFF6895ED),),
                  ),
                  Text('Top', style: TextStyle(color: Color(0xFF777777)),),
                ],
              ),
              ),
              PopupMenuItem(value: 'Bottom', child: Row(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 10, right: 20),
                    child: Icon(Icons.align_vertical_bottom_rounded, color: Color(0xFF6895ED),),
                  ),
                  Text('Bottom', style: TextStyle(color: Color(0xFF777777)),),
                ],
              ),),
              PopupMenuItem(value: 'Left', child: Row(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 10, right: 20),
                    child: Icon(Icons.align_horizontal_left_rounded, color: Color(0xFF6895ED),),
                  ),
                  Text('Left', style: TextStyle(color: Color(0xFF777777)),),
                ],
              ),),
              PopupMenuItem(value: 'Right', child: Row(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 10, right: 20),
                    child: Icon(Icons.align_horizontal_right_rounded, color: Color(0xFF6895ED),),
                  ),
                  Text('Right', style: TextStyle(color: Color(0xFF777777)),),
                ],
              ),
              ),
            ],
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2, color: Color(0xFFFFFFFF), style: BorderStyle.none),
                  borderRadius: BorderRadius.circular(10),
              ),
              splashRadius: 50,
              position: PopupMenuPosition.over,
              padding: const EdgeInsets.all(10),
              icon: const Icon(Icons.settings, color: Color(0xFF999999),),
              iconSize: 28,
              tooltip: 'Setting',
              onSelected: (String value){
                setState((){
                  textData = value.toString();
                });
              },
            ),
          ],
        ),
        SliverList(delegate: SliverChildListDelegate([
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.all(20), child: Icon(Icons.align_horizontal_left_rounded, size: 50, color: Color(0xFF6895ED),),),
                Padding(padding: const EdgeInsets.all(15), child: Text(text, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.normal),),),
              ],
            ),
          ),
          SizedBox(
            height: 500,
            child: Center(
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 50, right: 20),
                    child: Icon(Icons.label_important_rounded, size: 100, color: Color(0xFFB0C4DE),),
                  ),
                  Text(textData, style: const TextStyle(fontSize: 50, color: Color(0xFF6895ED)),),
                ],
              ),
            ),
          )
        ]),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
          body: TabBarView(
            children: [
              _customScrollView("Home"),
              _customScrollView("Email"),
              _customScrollView("Chat"),
            ],
          )
      ),
    );
  }
}