import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_listview/bottom_sheet.dart';
import 'package:flutter_listview/drawer.dart';
import 'package:flutter_listview/gmail.dart';
import 'package:flutter_listview/help.dart';
import 'package:flutter_listview/message.dart';
import 'package:flutter_listview/notification.dart';
import 'package:flutter_listview/user_popup_menu.dart';
import 'package:flutter_listview/profile.dart';
import 'package:flutter_listview/security.dart';
import 'package:flutter_listview/setting.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final List<Widget> pages = <Widget>[
      Container(
        height: 150,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFFF9F9F9),
          boxShadow: [
            BoxShadow(color: Color(0xFFB0C4DE),
              spreadRadius: 2,
              // blurStyle: BlurStyle.outer,
              blurRadius: 10,
            ),
          ],
        ),
        child: Align(
          alignment: Alignment.center,
          child: ListTile(
            leading: const Icon(
              Icons.account_balance,
              size: 50,
            ),
            iconColor: const Color(0xFF999999),
            title: const Text('Home',
              style: TextStyle(fontSize: 25),
            ),
            textColor: const Color(0xFF777777),
            subtitle: const Text('Device Storage ',
              style: TextStyle(fontSize: 20),
            ),
            trailing: IconButton(onPressed: (){
              Navigator.pushNamed(context, '/home');
            },
              icon: const Icon(Icons.navigate_next_outlined),
              iconSize: 35,
              splashRadius: 50,
              splashColor: const Color(0xFF6895ED),
            ),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: const EdgeInsets.all(15),
            style: ListTileStyle.drawer,
            // selected: true,
            // selectedTileColor: const Color(0xFFB0C4DE),
            // selectedColor: const Color(0xFFFFFFFF),
            horizontalTitleGap: 10,
            minLeadingWidth: 80,
          ),
        ),
      ),
      Container(
        height: 150,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFFF9F9F9),
          boxShadow: [
            BoxShadow(color: Color(0xFFB0C4DE),
              spreadRadius: 2,
              // blurStyle: BlurStyle.outer,
              blurRadius: 10,
            ),
          ],
        ),
        child: Align(
          alignment: Alignment.center,
          child: ListTile(
            leading: const Icon(
              Icons.storage,
              size: 50,
            ),
            iconColor: const Color(0xFF999999),
            title: const Text('Device Storage',
              style: TextStyle(fontSize: 25),
            ),
            textColor: const Color(0xFF777777),
            subtitle: const Text('Local Storage | Cloud Storage :',
              style: TextStyle(fontSize: 20),
            ),
            trailing: IconButton(onPressed: (){
              Navigator.pushNamed(context, '/storage');
            },
              icon: const Icon(Icons.navigate_next_outlined),
              iconSize: 35,
              splashRadius: 50,
              splashColor: const Color(0xFF6895ED),
            ),
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: const EdgeInsets.all(15),
            style: ListTileStyle.drawer,
            // selected: true,
            // selectedTileColor: const Color(0xFFB0C4DE),
            // selectedColor: const Color(0xFFFFFFFF),
            horizontalTitleGap: 10,
            minLeadingWidth: 80,
          ),
        ),
      ),
    ];

    return Scaffold(
      key: _scaffoldKey,
      /*appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.tune_rounded),
          iconSize: 40,
          splashColor: const Color(0xFF6895ED),
        ),
        backgroundColor: const Color(0xFFB0C4DE),
        titleTextStyle: const TextStyle(fontFamily: 'Consolas',
            fontSize: 30,
            fontWeight: FontWeight.normal,
            letterSpacing: 5,
          wordSpacing: 5,
        ),
        actionsIconTheme: const IconThemeData(
          color: Color(0xFFFFFFFF),
          size: 45,
          opacity: 1.0,
        ),
        title: Text(widget.title),
        foregroundColor: const Color(0xFFFFFFFF),
        toolbarHeight: 200,
        toolbarOpacity: 1.0,
        toolbarTextStyle: const TextStyle(fontFamily: 'Consolas'),
        elevation: 5,
        shadowColor: const Color(0xFF6895ED),
        scrolledUnderElevation: 10,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingScreen()));
            },
              icon: const Icon(Icons.settings),
              iconSize: 35,
              splashColor: const Color(0xFF999999),
              splashRadius: 50,
            ),
          ),
          PopupMenuButton(
            icon: const Icon(Icons.account_circle_sharp),
            iconSize: 45,
            tooltip: 'User Profile',
            splashRadius: 50,
            elevation: 10,
            padding: const EdgeInsets.all(10),
            shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                padding: const EdgeInsets.all(8),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));
                  },
                  leading: const Icon(
                    Icons.account_circle_outlined,
                    size: 50,
                  ),
                  iconColor: const Color(0xFF999999),
                  title: const Text('User Name',
                    style: TextStyle(fontSize: 25),
                  ),
                  textColor: const Color(0xFF777777),
                  subtitle: const Text('user@gmail.com',
                    style: TextStyle(fontSize: 20),
                  ),
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  contentPadding: const EdgeInsets.all(15),
                  style: ListTileStyle.drawer,
                  horizontalTitleGap: 5,
                  minLeadingWidth: 70,
                ),
              ),
              PopupMenuItem(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.manage_accounts_outlined),
                      iconSize: 30,
                      color: const Color(0xFF999999),
                      splashRadius: 50,
                      splashColor: const Color(0xFF6895ED),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, left: 15),
                      child: Text('Edit Profile', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.question_mark_rounded),
                      iconSize: 30,
                      color: const Color(0xFF999999),
                      splashRadius: 50,
                      splashColor: const Color(0xFF6895ED),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, left: 15),
                      child: Text('Help', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.logout_outlined),
                      iconSize: 30,
                      color: const Color(0xFF999999),
                      splashRadius: 50,
                      splashColor: const Color(0xFF6895ED),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, left: 15),
                      child: Text('Logout', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),*/
      drawer: const DrawerScreen(),
      /*Drawer(
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        width: 400,
        elevation: 10,
        semanticLabel: 'Drawer',
        child: ListView(
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          children: [
            DrawerHeader(
              margin: const EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: const Color(0xFF6895ED).withOpacity(0.8),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFB0C4DE),
                    spreadRadius: 2,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.engineering_rounded,
                  size: 80,
                ),
                iconColor: const Color(0xFFF9F9F9),
                title: const Text('User Name',
                  style: TextStyle(fontSize: 28),
                ),
                textColor: const Color(0xFFFFFFFF),
                subtitle: const Text('user@gmail.com',
                  style: TextStyle(fontSize: 22),
                ),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                style: ListTileStyle.drawer,
                horizontalTitleGap: 20,
                minLeadingWidth: 85,
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));
                },
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.security_outlined,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Security | Privacy',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SecurityScreen()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.attach_email_outlined,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('G-Mail',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const GmailScreen()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.notifications_active,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Notification',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const NotificationScreen()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.forum_outlined,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Message',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MessageScreen()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.help_outline_rounded,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Help',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HelpScreen()));
              },
            ),
            const Divider(thickness: 1.5),
            ListTile(
              leading: const Icon(
                Icons.logout_outlined,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Logout',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),*/
      body: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        shrinkWrap: true,
        controller: ScrollController(),
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: (){
                _scaffoldKey.currentState!.openDrawer();
              },
              icon: const Icon(Icons.tune_rounded),
              iconSize: 40,
              splashColor: const Color(0xFF6895ED),
            ),
            centerTitle: true,
            floating: true,
            pinned: true,
            snap: false,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('List App',
                textScaleFactor: 1.5,
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'Consolas',
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 5,
                  wordSpacing: 5,
                ),
              ),
              background: Image.asset(
                'images/img_1.png',
                semanticLabel: 'Background Image',
                fit: BoxFit.cover,
                scale: 10,
                excludeFromSemantics: true,
                filterQuality: FilterQuality.low,
              ),
              centerTitle: true,
              titlePadding: const EdgeInsets.all(20),
              expandedTitleScale: 1.25,
            ),
            elevation: 5,
            scrolledUnderElevation: 10,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
            ),
            collapsedHeight: 200,
            expandedHeight: 450,
            shadowColor: const Color(0xFFB0C4DE),
            forceElevated: false,
            toolbarTextStyle: const TextStyle(fontFamily: 'Consolas',
              fontSize: 30,
              fontWeight: FontWeight.normal,
              letterSpacing: 5,
              wordSpacing: 5,
            ),
            backgroundColor: const Color(0xFF6895ED).withOpacity(0.9),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: IconButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingScreen()));
                },
                  icon: const Icon(Icons.settings),
                  iconSize: 35,
                  splashColor: const Color(0xFF999999),
                  splashRadius: 50,
                ),
              ),
              const PopupMenuScreen(),
              /*PopupMenuButton(
                icon: const Icon(Icons.account_circle_sharp),
                iconSize: 45,
                tooltip: 'User Profile',
                splashRadius: 50,
                elevation: 10,
                padding: const EdgeInsets.all(10),
                shape: const BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));
                      },
                      leading: const Icon(
                        Icons.account_circle_outlined,
                        size: 50,
                      ),
                      iconColor: const Color(0xFF999999),
                      title: const Text('User Name',
                        style: TextStyle(fontSize: 25),
                      ),
                      textColor: const Color(0xFF777777),
                      subtitle: const Text('user@gmail.com',
                        style: TextStyle(fontSize: 20),
                      ),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      contentPadding: const EdgeInsets.all(15),
                      style: ListTileStyle.drawer,
                      horizontalTitleGap: 5,
                      minLeadingWidth: 70,
                    ),
                  ),
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.manage_accounts_outlined),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('Edit Profile', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.question_mark_rounded),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('Help', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.logout_outlined),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('Logout', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),*/
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) =>
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  height: 150,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFFF9F9F9),
                    boxShadow: [
                      BoxShadow(color: Color(0xFFB0C4DE),
                        spreadRadius: 2,
                        // blurStyle: BlurStyle.outer,
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: ListTile(
                      leading: const Icon(
                        Icons.account_balance_wallet,
                        size: 50,
                      ),
                      iconColor: const Color(0xFF999999),
                      title: const Text('Drive ',
                        style: TextStyle(fontSize: 25),
                      ),
                      textColor: const Color(0xFF777777),
                      subtitle: Text('Device Storage : ${index+1}',
                        style: const TextStyle(fontSize: 20),
                      ),
                      trailing: IconButton(onPressed: (){
                      },
                        icon: const Icon(Icons.navigate_next_outlined),
                        iconSize: 35,
                        splashRadius: 50,
                        splashColor: const Color(0xFF6895ED),
                      ),
                      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                      contentPadding: const EdgeInsets.all(15),
                      style: ListTileStyle.drawer,
                      // selected: true,
                      // selectedTileColor: const Color(0xFFB0C4DE),
                      // selectedColor: const Color(0xFFFFFFFF),
                      horizontalTitleGap: 10,
                      minLeadingWidth: 80,
                    ),
                  ),
                ),
              childCount: 4,
            ),
          ),
          /*SliverToBoxAdapter(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 600,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  height: 400,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFFF9F9F9),
                    boxShadow: [
                      BoxShadow(color: Color(0xFF6895ED),
                        spreadRadius: 2,
                        // blurStyle: BlurStyle.outer,
                        blurRadius: 10,
                        offset: Offset(5, 5),
                      ),
                      BoxShadow(color: Color(0xFFB0C4DE),
                        spreadRadius: 2,
                        // blurStyle: BlurStyle.outer,
                        blurRadius: 10,
                        offset: Offset(-5, -5),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 30,
                  right: 30,
                  height: 200,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFFF9F9F9),
                      boxShadow: [
                        BoxShadow(color: Color(0xFFB0C4DE),
                          spreadRadius: 2,
                          // blurStyle: BlurStyle.outer,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.add_to_drive_rounded),
                            iconSize: 65,
                            color: const Color(0xFF999999),
                            splashRadius: 50,
                            splashColor: const Color(0xFF6895ED),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5, left: 15),
                            child: Text('Google Drive', style: TextStyle(fontSize: 35, color: Color(0xFF777777)),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 30,
                  right: 30,
                  height: 200,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xFFF9F9F9),
                      boxShadow: [
                        BoxShadow(color: Color(0xFFB0C4DE),
                          spreadRadius: 2,
                          // blurStyle: BlurStyle.outer,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: (){},
                            icon: const Icon(Icons.email_rounded),
                            iconSize: 65,
                            color: const Color(0xFF999999),
                            splashRadius: 50,
                            splashColor: const Color(0xFF6895ED),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 5, bottom: 5, left: 15),
                            child: Text('Google E-Mail', style: TextStyle(fontSize: 35, color: Color(0xFF777777)),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),*/
          SliverList(delegate: SliverChildListDelegate([
            pages.elementAt(_selectedIndex),
          ]))
        ],
      ),
      /*body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.topCenter,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xFFF9F9F9),
              boxShadow: [
                BoxShadow(color: Color(0xFF6895ED),
                  spreadRadius: 2,
                  // blurStyle: BlurStyle.outer,
                  blurRadius: 10,
                  offset: Offset(5, 5),
                ),
                BoxShadow(color: Color(0xFFB0C4DE),
                  spreadRadius: 2,
                  // blurStyle: BlurStyle.outer,
                  blurRadius: 10,
                  offset: Offset(-5, -5),
                ),
              ],
            ),
          ),
          Positioned(
            top: 50,
            left: 30,
            right: 30,
            height: 200,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFFF9F9F9),
                boxShadow: [
                  BoxShadow(color: Color(0xFFB0C4DE),
                    spreadRadius: 2,
                    // blurStyle: BlurStyle.outer,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.add_to_drive_rounded),
                      iconSize: 65,
                      color: const Color(0xFF999999),
                      splashRadius: 50,
                      splashColor: const Color(0xFF6895ED),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, left: 15),
                      child: Text('Google Drive', style: TextStyle(fontSize: 35, color: Color(0xFF777777)),),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 300,
            left: 30,
            right: 30,
            height: 200,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFFF9F9F9),
                boxShadow: [
                  BoxShadow(color: Color(0xFFB0C4DE),
                    spreadRadius: 2,
                    // blurStyle: BlurStyle.outer,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.email_rounded),
                      iconSize: 65,
                      color: const Color(0xFF999999),
                      splashRadius: 50,
                      splashColor: const Color(0xFF6895ED),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5, left: 15),
                      child: Text('Google E-Mail', style: TextStyle(fontSize: 35, color: Color(0xFF777777)),),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 550,
            left: 30,
            right: 30,
            height: 200,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFFF9F9F9),
                boxShadow: [
                  BoxShadow(color: Color(0xFFB0C4DE),
                    spreadRadius: 2,
                    // blurStyle: BlurStyle.outer,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: (){},
                      icon: const Icon(Icons.chat_bubble_rounded),
                      iconSize: 65,
                      color: const Color(0xFF999999),
                      splashRadius: 50,
                      splashColor: const Color(0xFF6895ED),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 5, left: 15),
                      child: Text('Google Chat', style: TextStyle(fontSize: 35, color: Color(0xFF777777)),),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),*/
      bottomNavigationBar: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        currentIndex: _selectedIndex,
        mouseCursor: SystemMouseCursors.grab,
        iconSize: 30,
        elevation: 5,
        selectedLabelStyle: const TextStyle(
          fontFamily: 'Consolas',
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'Consolas',
        ),
        selectedIconTheme: const IconThemeData(size: 35),
        selectedFontSize: 20,
        unselectedFontSize: 16,
        backgroundColor: const Color(0xFFF0F8FF),
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.account_balance),
            icon: Icon(Icons.account_balance_rounded,),
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.storage),
            icon: Icon(Icons.storage_outlined),
            label: 'Storage',
            tooltip: 'Storage',
          ),
        ],
        onTap: (index){
          /*switch(index){
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyApp()));
              break;

            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const StorageScreen()));
              break;
          }*/
          /*if(index == 0){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyHomePage()));
          }
          else if(index == 1){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const StorageScreen()));
          }
          else{
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyHomePage()));
          }*/
          setState((){
            _selectedIndex = index;
          });
        },
      ),
      // bottomSheet: const BottomSheetScreen(),
    );
  }
}