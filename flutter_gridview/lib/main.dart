import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gridview/form.dart';
import 'package:flutter_gridview/search.dart';

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
      theme: ThemeData(
        fontFamily: 'Consolas',
        primarySwatch: Colors.blue,
        dividerTheme: const DividerThemeData(
          color: Color(0xFF778899),
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter GridView'),
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
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
          decoration: const BoxDecoration(
            color: Color(0xFFF0F8FF),
          ),
          child: AppBar(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            title: Center(
                child: Text(
              widget.title,
              textAlign: TextAlign.center,
            )),
            titleTextStyle: const TextStyle(
              fontFamily: 'Consolas',
              fontSize: 30,
              fontWeight: FontWeight.normal,
            ),
            scrolledUnderElevation: 8,
            shadowColor: const Color(0xFFB0C4DE),
            elevation: 5,
            backgroundColor: const Color(0xFF6895ED),
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()));
              },
              icon: const Icon(Icons.tune_rounded),
              iconSize: 40,
              splashRadius: 40,
              splashColor: const Color(0xFF6895ED),
            ),
            leadingWidth: 50,
            actions: [
              IconButton(
                onPressed: () {},
                padding: const EdgeInsets.all(0),
                icon: const Icon(Icons.account_circle_rounded),
                iconSize: 55,
                splashRadius: 55,
                splashColor: const Color(0xFF6895ED),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
            ),
          ),
        ),
      ),
      body: GridView(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 225,
        ),
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF0F0F0),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        selectedFontSize: 22.5,
        currentIndex: selectedIndex,
        mouseCursor: SystemMouseCursors.grab,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        unselectedFontSize: 20,
        onTap: (index){
          setState((){
            selectedIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            activeIcon: Icon(Icons.account_balance),
            icon: Icon(Icons.account_balance_rounded),
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchScreen()));
              },
              child: const Icon(Icons.search),
            ),
            icon: const Icon(Icons.manage_search_rounded),
            label: 'Search',
            tooltip: 'Search',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        splashColor: const Color(0xFF6895ED),
        onPressed: (){},
        tooltip: 'Increment',
        backgroundColor: const Color(0xFF6895ED),
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text('Second Screen'),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ThirdScreen()));
          },
            icon: const Icon(Icons.more_vert_rounded),
            iconSize: 45,
            splashColor: const Color(0xFF6895ED),
            splashRadius: 50,
          ),
        ],
      ),*/
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFB0C4DE),
                  spreadRadius: 2,
                  blurRadius: 10,
                ),
              ],
            ),
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 350,
                        ),
                        const Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                                padding: EdgeInsets.all(12),
                                child: Text(
                                  'LIst Items',
                                  textScaleFactor: 3.5,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Color(0xFF777777)),
                                ))),
                        const SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          minLeadingWidth: 50,
                          contentPadding: const EdgeInsets.all(10),
                          leading: const Icon(
                            Icons.list_alt_rounded,
                            size: 55,
                          ),
                          title: const Text(
                            'List Item : 1',
                            style: TextStyle(fontSize: 25),
                          ),
                          textColor: const Color(0xFF777777),
                          subtitle: const Text(
                            'List Tile',
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: const Icon(
                            Icons.done_all_rounded,
                            size: 45,
                          ),
                          onTap: () {},
                        ),
                        const Divider(
                          thickness: 1.5,
                        ),
                        ListTile(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          minLeadingWidth: 50,
                          contentPadding: const EdgeInsets.all(10),
                          leading: const Icon(
                            Icons.list_alt_rounded,
                            size: 55,
                          ),
                          title: const Text(
                            'List Item : 2',
                            style: TextStyle(fontSize: 25),
                          ),
                          textColor: const Color(0xFF777777),
                          subtitle: const Text(
                            'List Tile',
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: const Icon(
                            Icons.done_all_rounded,
                            size: 45,
                          ),
                          onTap: () {},
                        ),
                        const Divider(
                          thickness: 1.5,
                        ),
                        ListTile(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          minLeadingWidth: 50,
                          contentPadding: const EdgeInsets.all(10),
                          leading: const Icon(
                            Icons.list_alt_rounded,
                            size: 55,
                          ),
                          title: const Text(
                            'List Item : 3',
                            style: TextStyle(fontSize: 25),
                          ),
                          textColor: const Color(0xFF777777),
                          subtitle: const Text(
                            'List Tile',
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: const Icon(
                            Icons.done_all_rounded,
                            size: 45,
                          ),
                          onTap: () {},
                        ),
                        const Divider(
                          thickness: 1.5,
                        ),
                        ListTile(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          minLeadingWidth: 50,
                          contentPadding: const EdgeInsets.all(10),
                          leading: const Icon(
                            Icons.list_alt_rounded,
                            size: 55,
                          ),
                          title: const Text(
                            'List Item : 4',
                            style: TextStyle(fontSize: 25),
                          ),
                          textColor: const Color(0xFF777777),
                          subtitle: const Text(
                            'List Tile',
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: const Icon(
                            Icons.done_all_rounded,
                            size: 45,
                          ),
                          onTap: () {},
                        ),
                        const Divider(
                          thickness: 1.5,
                        ),
                        ListTile(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          minLeadingWidth: 50,
                          contentPadding: const EdgeInsets.all(10),
                          leading: const Icon(
                            Icons.list_alt_rounded,
                            size: 55,
                          ),
                          title: const Text(
                            'List Item : 5',
                            style: TextStyle(fontSize: 25),
                          ),
                          textColor: const Color(0xFF777777),
                          subtitle: const Text(
                            'List Tile',
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: const Icon(
                            Icons.done_all_rounded,
                            size: 45,
                          ),
                          onTap: () {},
                        ),
                        const Divider(
                          thickness: 1.5,
                        ),
                        ListTile(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          minLeadingWidth: 50,
                          contentPadding: const EdgeInsets.all(10),
                          leading: const Icon(
                            Icons.list_alt_rounded,
                            size: 55,
                          ),
                          title: const Text(
                            'List Item : 6',
                            style: TextStyle(fontSize: 25),
                          ),
                          textColor: const Color(0xFF777777),
                          subtitle: const Text(
                            'List Tile',
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: const Icon(
                            Icons.done_all_rounded,
                            size: 45,
                          ),
                          onTap: () {},
                        ),
                        const Divider(
                          thickness: 1.5,
                        ),
                        ListTile(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          minLeadingWidth: 50,
                          contentPadding: const EdgeInsets.all(10),
                          leading: const Icon(
                            Icons.list_alt_rounded,
                            size: 55,
                          ),
                          title: const Text(
                            'List Item : 7',
                            style: TextStyle(fontSize: 25),
                          ),
                          textColor: const Color(0xFF777777),
                          subtitle: const Text(
                            'List Tile',
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: const Icon(
                            Icons.done_all_rounded,
                            size: 45,
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xFF6895ED).withOpacity(0.2),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Color(0xFFF0F8FF),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ThirdScreen()));
                        },
                        icon: const Icon(Icons.tune_rounded),
                        iconSize: 45,
                        splashRadius: 45,
                        splashColor: const Color(0xFF6895ED),
                        color: const Color(0xFF999999),
                        padding: const EdgeInsets.all(10),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'LIst TIle',
                          textScaleFactor: 2.5,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF777777),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings_outlined),
                        iconSize: 45,
                        splashRadius: 45,
                        splashColor: const Color(0xFF6895ED),
                        color: const Color(0xFF999999),
                        padding: const EdgeInsets.all(10),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.account_circle_rounded),
                        iconSize: 65,
                        focusColor: const Color(0xFF6895ED),
                        hoverColor: const Color(0xFFB0C4DE),
                        splashRadius: 65,
                        splashColor: const Color(0xFF6895ED),
                        color: const Color(0xFF999999),
                        padding: const EdgeInsets.all(10),
                        tooltip: 'USer Account',
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 250,
                  left: 20,
                  right: 20,
                  height: 80,
                  child: Container(
                    // alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xFF000000).withOpacity(0.2),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFF6895ED)),
                        elevation: MaterialStateProperty.all(5),
                        shadowColor:
                            MaterialStateProperty.all(const Color(0xFF000000)),
                        // fixedSize: MaterialStateProperty.all(const Size(200, 50))
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.done_all_rounded,
                            size: 50,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'LIst Tile',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          /*GridView.count(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ],
          ),*/
        ],
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text('Third Screen'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FourthScreen()));
            },
            icon: const Icon(Icons.more_vert_rounded),
            iconSize: 45,
            splashColor: const Color(0xFF6895ED),
            splashRadius: 50,
          ),
        ],
      ),*/
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFB0C4DE),
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ]),
            child: Stack(
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: const Color(0xFF6895ED).withOpacity(0.2),
                  ),
                ),
                CustomScrollView(
                  shrinkWrap: true,
                  slivers: [
                    SliverAppBar(
                      pinned: false,
                      snap: true,
                      stretch: false,
                      floating: true,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      backgroundColor: Colors.transparent,
                      title: const Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                        ),
                        child: Text(
                          'Home',
                        ),
                      ),
                      toolbarHeight: 80,
                      titleTextStyle: const TextStyle(
                          fontFamily: 'Consolas',
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF777777),
                          fontSize: 30),
                      // shadowColor: const Color(0xFF6895ED),
                      flexibleSpace: const FlexibleSpaceBar(
                        background: FlutterLogo(),
                      ),
                      expandedHeight: 220,
                      collapsedHeight: 120,
                      leading: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FourthScreen()));
                        },
                        icon: const Icon(Icons.tune_rounded),
                        iconSize: 45,
                        color: const Color(0xFF999999),
                        splashColor: const Color(0xFF6895ED),
                        splashRadius: 45,
                      ),
                      actions: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.home_filled),
                          iconSize: 45,
                          splashRadius: 45,
                          padding: const EdgeInsets.all(10),
                          splashColor: const Color(0xFF6895ED),
                          color: const Color(0xFF999999),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.account_circle_rounded),
                          iconSize: 65,
                          splashRadius: 65,
                          padding: const EdgeInsets.all(10),
                          splashColor: const Color(0xFF6895ED),
                          color: const Color(0xFF999999),
                        ),
                      ],
                    ),
                    SliverList(
                        delegate: SliverChildListDelegate([
                      Container(
                        height: 250,
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFFFFFFFF),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Verify Items : 0',
                              textScaleFactor: 2.5,
                              style: TextStyle(color: Color(0xFF777777)),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)))),
                                  elevation: MaterialStateProperty.all(5),
                                  fixedSize: MaterialStateProperty.all(
                                      const Size(300, 80))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.done_all_rounded,
                                    size: 45,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Verify',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ])),
                    SliverList(
                        delegate: SliverChildBuilderDelegate(
                      (context, index) => Container(
                        padding: const EdgeInsets.all(10),
                        color: const Color(0xFFFFFFFF),
                        child: ListTile(
                          tileColor: const Color(0xFF999999),
                          selected: index == selectedIndex,
                          minVerticalPadding: 10,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          minLeadingWidth: 50,
                          contentPadding: const EdgeInsets.all(10),
                          leading: const Icon(
                            Icons.list_alt_rounded,
                            size: 55,
                          ),
                          title: Text(
                            'List Item : $index',
                            style: const TextStyle(fontSize: 25),
                          ),
                          textColor: const Color(0xFF777777),
                          subtitle: const Text(
                            'List Tile',
                            style: TextStyle(fontSize: 20),
                          ),
                          trailing: const Icon(
                            Icons.done_all_rounded,
                            size: 45,
                          ),
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                        ),
                      ),
                      childCount: 15,
                    )),
                  ],
                ),
                /*Positioned(
                  top: 250,
                    left: 20,
                    right: 20,
                    height: 250,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFFF9F9F9),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Verify Items : 0', textScaleFactor: 2.5,
                          style: TextStyle(color: Color(0xFF777777)),
                          ),
                          const SizedBox(height: 25,),
                          ElevatedButton(onPressed: (){},
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                              elevation: MaterialStateProperty.all(5),
                              fixedSize: MaterialStateProperty.all(const Size(300, 80))
                            ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: const [
                                  Icon(Icons.done_all_rounded, size: 45,),
                                  SizedBox(width: 20,),
                                  Text('Verify',
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ],
                              ),
                          ),
                        ],
                      ),
                    ),
                ),*/
              ],
            ),
          ),
        ],
      ),
      /*GridView.extent(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Container(
            color: const Color(0xFF999999),
          ),
          Container(
            color: const Color(0xFF999999),
          ),
          Container(
            color: const Color(0xFF999999),
          ),
          Container(
            color: const Color(0xFF999999),
          ),
        ],
      ),*/
    );
  }
}

class FourthScreen extends StatefulWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text('Fourth Screen'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const FifthScreen()));
            },
            icon: const Icon(Icons.more_vert_rounded),
            iconSize: 45,
            splashColor: const Color(0xFF6895ED),
            splashRadius: 50,
          ),
        ],
      ),*/
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFFFFFFFF),
          boxShadow: [
            BoxShadow(
              color: Color(0xFFB0C4DE),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverAppBar(
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              toolbarHeight: 80,
              backgroundColor: const Color(0xFFF0F8FF),
              leading: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FifthScreen()));
                },
                icon: const Icon(Icons.tune_rounded),
                iconSize: 45,
                splashRadius: 45,
                splashColor: const Color(0xFF6895ED),
                color: const Color(0xFF999999),
              ),
              title: const Text('Settings'),
              titleTextStyle: const TextStyle(
                fontFamily: 'Consolas',
                fontSize: 30,
                color: Color(0xFF777777),
              ),
              expandedHeight: 250,
              collapsedHeight: 120,
              floating: true,
              pinned: true,
              snap: true,
              shadowColor: const Color(0xFF6895ED),
              flexibleSpace: FlexibleSpaceBar(
                background: Icon(
                  Icons.settings_suggest_outlined,
                  size: 200,
                  color: const Color(0xFF999999).withOpacity(0.2),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings_outlined),
                  iconSize: 45,
                  splashRadius: 45,
                  splashColor: const Color(0xFF6895ED),
                  color: const Color(0xFF999999),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.account_circle_rounded),
                  iconSize: 65,
                  splashRadius: 65,
                  splashColor: const Color(0xFF6895ED),
                  color: const Color(0xFF999999),
                ),
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF0F8FF),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  child: ListTile(
                    tileColor: const Color(0xFF999999),
                    minVerticalPadding: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    minLeadingWidth: 50,
                    contentPadding: const EdgeInsets.all(10),
                    leading: const Icon(
                      Icons.account_circle_rounded,
                      size: 65,
                    ),
                    title: const Text(
                      'User Account',
                      style: TextStyle(fontSize: 25),
                    ),
                    textColor: const Color(0xFF777777),
                    subtitle: const Text(
                      'List Tile',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                      size: 45,
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  child: ListTile(
                    tileColor: const Color(0xFF999999),
                    minVerticalPadding: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    minLeadingWidth: 50,
                    contentPadding: const EdgeInsets.all(10),
                    leading: const Icon(
                      Icons.wifi_protected_setup_rounded,
                      size: 55,
                    ),
                    title: const Text(
                      'Network Settings',
                      style: TextStyle(fontSize: 25),
                    ),
                    textColor: const Color(0xFF777777),
                    subtitle: const Text(
                      'List Tile',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                      size: 45,
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  child: ListTile(
                    tileColor: const Color(0xFF999999),
                    minVerticalPadding: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    minLeadingWidth: 50,
                    contentPadding: const EdgeInsets.all(10),
                    leading: const Icon(
                      Icons.local_library_sharp,
                      size: 55,
                    ),
                    title: const Text(
                      'Wallpapers and Themes',
                      style: TextStyle(fontSize: 25),
                    ),
                    textColor: const Color(0xFF777777),
                    subtitle: const Text(
                      'List Tile',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                      size: 45,
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  child: ListTile(
                    tileColor: const Color(0xFF999999),
                    minVerticalPadding: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    minLeadingWidth: 50,
                    contentPadding: const EdgeInsets.all(10),
                    leading: const Icon(
                      Icons.vibration_outlined,
                      size: 55,
                    ),
                    title: const Text(
                      'Sound and Vibration',
                      style: TextStyle(fontSize: 25),
                    ),
                    textColor: const Color(0xFF777777),
                    subtitle: const Text(
                      'List Tile',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                      size: 45,
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  child: ListTile(
                    tileColor: const Color(0xFF999999),
                    minVerticalPadding: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    minLeadingWidth: 50,
                    contentPadding: const EdgeInsets.all(10),
                    leading: const Icon(
                      Icons.security_outlined,
                      size: 55,
                    ),
                    title: const Text(
                      'Security',
                      style: TextStyle(fontSize: 25),
                    ),
                    textColor: const Color(0xFF777777),
                    subtitle: const Text(
                      'List Tile',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                      size: 45,
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  child: ListTile(
                    tileColor: const Color(0xFF999999),
                    minVerticalPadding: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    minLeadingWidth: 50,
                    contentPadding: const EdgeInsets.all(10),
                    leading: const Icon(
                      Icons.notifications_active,
                      size: 55,
                    ),
                    title: const Text(
                      'Notification',
                      style: TextStyle(fontSize: 25),
                    ),
                    textColor: const Color(0xFF777777),
                    subtitle: const Text(
                      'List Tile',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                      size: 45,
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  child: ListTile(
                    tileColor: const Color(0xFF999999),
                    minVerticalPadding: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    minLeadingWidth: 50,
                    contentPadding: const EdgeInsets.all(10),
                    leading: const Icon(
                      Icons.storage_outlined,
                      size: 55,
                    ),
                    title: const Text(
                      'Device Storage',
                      style: TextStyle(fontSize: 25),
                    ),
                    textColor: const Color(0xFF777777),
                    subtitle: const Text(
                      'List Tile',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                      size: 45,
                    ),
                    onTap: () {},
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  color: const Color(0xFFFFFFFF),
                  child: ListTile(
                    tileColor: const Color(0xFF999999),
                    minVerticalPadding: 10,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    minLeadingWidth: 50,
                    contentPadding: const EdgeInsets.all(10),
                    leading: const Icon(
                      Icons.phonelink_setup,
                      size: 55,
                    ),
                    title: const Text(
                      'About Device',
                      style: TextStyle(fontSize: 25),
                    ),
                    textColor: const Color(0xFF777777),
                    subtitle: const Text(
                      'List Tile',
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next_outlined,
                      size: 45,
                    ),
                    onTap: () {},
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
      /*GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 200,
        ),
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            color: const Color(0xFF6895ED).withOpacity(0.5),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
        itemCount: 5,
      ),*/
    );
  }
}

class FifthScreen extends StatefulWidget {
  const FifthScreen({Key? key}) : super(key: key);

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  @override
  Widget build(BuildContext context) {
    // timeDilation = 8.0;

    return Scaffold(
      /* appBar: AppBar(
        title: const Text('Fifth Screen'),
      ),*/
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5),
        child: Container(
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            borderRadius: BorderRadius.circular(5),
            boxShadow: const [
              BoxShadow(
                color: Color(0xFFB0C4DE),
                spreadRadius: 2,
                blurRadius: 10,
              ),
            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Stack(
                      children: [
                        /*ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            'https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569__480.jpg',
                            fit: BoxFit.contain,
                          ),
                        ),*/
                        Container(
                          padding: const EdgeInsets.all(10),
                          height: 400,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xFFF0F0FF),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: const Icon(
                            Icons.engineering_rounded,
                            size: 250,
                            color: Color(0xFFDCDCDC),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.tune_rounded),
                                iconSize: 45,
                                splashColor: const Color(0xFF6895ED),
                                splashRadius: 45,
                                color: const Color(0xFF999999),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Text(
                                'Profile',
                                style: TextStyle(
                                    fontFamily: 'Consolas',
                                    fontSize: 30,
                                    color: Color(0xFF777777)),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.settings_suggest_outlined),
                                iconSize: 50,
                                splashColor: const Color(0xFF6895ED),
                                splashRadius: 50,
                                color: const Color(0xFF999999),
                                padding: const EdgeInsets.all(10),
                              ),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const FormScreen()));
                                },
                                icon: const Icon(Icons.login_rounded),
                                iconSize: 60,
                                splashColor: const Color(0xFF6895ED),
                                splashRadius: 60,
                                color: const Color(0xFF999999),
                                padding: const EdgeInsets.all(10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 300, left: 10, right: 10, bottom: 25),
                    padding: const EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 6,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF0F8FF),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFB0C4DE),
                          spreadRadius: 1,
                          blurRadius: 10,
                        )
                      ],
                    ),
                    child: ListTile(
                      leading: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.account_circle_rounded),
                        iconSize: 120,
                        color: const Color(0xFF999999),
                      ),
                      title: const Text(
                        'User Name',
                        style: TextStyle(
                          fontSize: 35,
                          color: Color(0xFF777777),
                        ),
                      ),
                      subtitle: const Text(
                        'user@gmail.com',
                        style:
                            TextStyle(fontSize: 25, color: Color(0xFF999999)),
                      ),
                      minVerticalPadding: 20,
                    ),
                  ),
                  Positioned(
                    top: 400,
                    left: 120,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F8FF),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                        iconSize: 35,
                        color: const Color(0xFF999999),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F8FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  tileColor: const Color(0xFF999999),
                  minVerticalPadding: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  minLeadingWidth: 50,
                  contentPadding: const EdgeInsets.all(10),
                  leading: const Icon(
                    Icons.engineering_rounded,
                    size: 65,
                  ),
                  title: const Text(
                    'FIrst Name',
                    style: TextStyle(fontSize: 25),
                  ),
                  textColor: const Color(0xFF777777),
                  subtitle: const Text(
                    'List Tile',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: const Icon(
                    Icons.navigate_next_outlined,
                    size: 45,
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F8FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  tileColor: const Color(0xFF999999),
                  minVerticalPadding: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  minLeadingWidth: 50,
                  contentPadding: const EdgeInsets.all(10),
                  leading: const Icon(
                    Icons.supervisor_account_outlined,
                    size: 65,
                  ),
                  title: const Text(
                    'Last Name',
                    style: TextStyle(fontSize: 25),
                  ),
                  textColor: const Color(0xFF777777),
                  subtitle: const Text(
                    'List Tile',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: const Icon(
                    Icons.navigate_next_outlined,
                    size: 45,
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F8FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  tileColor: const Color(0xFF999999),
                  minVerticalPadding: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  minLeadingWidth: 50,
                  contentPadding: const EdgeInsets.all(10),
                  leading: const Icon(
                    Icons.mark_as_unread,
                    size: 65,
                  ),
                  title: const Text(
                    'E-Mail ID',
                    style: TextStyle(fontSize: 25),
                  ),
                  textColor: const Color(0xFF777777),
                  subtitle: const Text(
                    'List Tile',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: const Icon(
                    Icons.navigate_next_outlined,
                    size: 45,
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F8FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  tileColor: const Color(0xFF999999),
                  minVerticalPadding: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  minLeadingWidth: 50,
                  contentPadding: const EdgeInsets.all(10),
                  leading: const Icon(
                    Icons.perm_phone_msg_outlined,
                    size: 65,
                  ),
                  title: const Text(
                    'Mobile No.',
                    style: TextStyle(fontSize: 25),
                  ),
                  textColor: const Color(0xFF777777),
                  subtitle: const Text(
                    'List Tile',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: const Icon(
                    Icons.navigate_next_outlined,
                    size: 45,
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F8FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  tileColor: const Color(0xFF999999),
                  minVerticalPadding: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  minLeadingWidth: 50,
                  contentPadding: const EdgeInsets.all(10),
                  leading: const Icon(
                    Icons.person_pin_circle,
                    size: 65,
                  ),
                  title: const Text(
                    'Address',
                    style: TextStyle(fontSize: 25),
                  ),
                  textColor: const Color(0xFF777777),
                  subtitle: const Text(
                    'List Tile',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: const Icon(
                    Icons.navigate_next_outlined,
                    size: 45,
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F8FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  tileColor: const Color(0xFF999999),
                  minVerticalPadding: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  minLeadingWidth: 50,
                  contentPadding: const EdgeInsets.all(10),
                  leading: const Icon(
                    Icons.password_rounded,
                    size: 65,
                  ),
                  title: const Text(
                    'Password',
                    style: TextStyle(fontSize: 25),
                  ),
                  textColor: const Color(0xFF777777),
                  subtitle: const Text(
                    'User@1234',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: const Icon(
                    Icons.navigate_next_outlined,
                    size: 45,
                  ),
                  onTap: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFFF0F8FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  tileColor: const Color(0xFF999999),
                  minVerticalPadding: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  minLeadingWidth: 50,
                  contentPadding: const EdgeInsets.all(10),
                  leading: const Icon(
                    Icons.person_pin_rounded,
                    size: 65,
                  ),
                  title: const Text(
                    'User Account',
                    style: TextStyle(fontSize: 25),
                  ),
                  textColor: const Color(0xFF777777),
                  subtitle: const Text(
                    'List Tile',
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: const Icon(
                    Icons.navigate_next_outlined,
                    size: 45,
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      /*GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailScreen()));
        },
        child: Hero(
          tag: 'tag',
          child: Image.network('https://www.kindpng.com/picc/m/355-3557482_flutter-logo-png-transparent-png.png',
            height: 400,
            width: 400,
          ),
        ),
      ),*/
      /*GridView.custom(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 200,
        ),
        childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => Container(
            decoration: const BoxDecoration(
              color: Color(0xFFF0F8FF),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const DetailScreen()));
              },
              child: Hero(
                tag: 'tag',
                child: Image.network('https://www.kindpng.com/picc/m/355-3557482_flutter-logo-png-transparent-png.png'),
              ),
            ),
          ),
          childCount: 5,
        ),
      ),*/
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Center(
          child: Hero(
            tag: 'tag',
            child: Image.network(
                'https://www.kindpng.com/picc/m/355-3557482_flutter-logo-png-transparent-png.png'),
          ),
        ),
      ),
    );
  }
}
