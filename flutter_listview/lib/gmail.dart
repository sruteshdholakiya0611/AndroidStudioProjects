import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_listview/profile.dart';
// import 'package:flutter_listview/bottom_sheet.dart';

class GmailScreen extends StatefulWidget {
  const GmailScreen({Key? key}) : super(key: key);

  @override
  State<GmailScreen> createState() => _GmailScreenState();
}

class _GmailScreenState extends State<GmailScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<String> subTitle = <String>[
    'Information Technology',
    'Computer Engineering',
    'Mechanical Engineering',
    'Civil Engineering',
    'Electrical Engineering',
    'Electronics and Communication'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Colors.purple, Colors.blue]),
          ),
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        titleTextStyle: const TextStyle(fontFamily: 'Consolas',
          fontSize: 30,
          fontWeight: FontWeight.normal,
          letterSpacing: 8,
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0, bottom: 5),
          child: Text('G-Mail'),
        ),
        toolbarHeight: 150,
        toolbarTextStyle: const TextStyle(fontFamily: 'Consolas'),
        elevation: 5,
        backgroundColor: const Color(0xFF6895ED),
        shadowColor: const Color(0xFF6895ED),
        scrolledUnderElevation: 10,
        leading: IconButton(
          onPressed: (){
            _scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.tune_rounded),
          iconSize: 40,
          splashColor: const Color(0xFF6895ED),
        ),
        leadingWidth: 80,
        actions: [
          /*PopupMenuButton(
              icon: const Icon(Icons.more_vert_rounded),
              iconSize: 45,
              tooltip: 'Click On',
              splashRadius: 50,
              elevation: 10,
              shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              itemBuilder: (context)=>[
                PopupMenuItem(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.help_outline_outlined),
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
                  onTap: (){
                    Navigator.pop(context);
                  },
                  padding: const EdgeInsets.all(8),
                  child: Row(
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
              ]),*/
          IconButton(onPressed: (){
            showDialog(context: context,
                builder: (context) => SimpleDialog(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      },
                        icon: const Icon(Icons.remove_done_outlined),
                        padding: const EdgeInsets.all(10),
                        color: const Color(0xFF777777),
                        iconSize: 50,
                        splashRadius: 50,
                        splashColor: const Color(0xFF6895ED),
                      ),
                      const Text('User Account'),
                    ],
                  ),
                  titleTextStyle: const TextStyle(fontSize: 30,
                    fontFamily: 'Consolas',
                    fontWeight: FontWeight.normal,
                    letterSpacing: 6,
                    wordSpacing: 5,
                    color: Color(0xFF777777),
                  ),
                  contentPadding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  semanticLabel: 'Add Account',
                  children: [
                    SizedBox(
                      width: 400,
                      child: SimpleDialogOption(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: ListTile(
                          leading: const Icon(Icons.account_circle_rounded,
                            size: 65,
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          iconColor: const Color(0xFF6895ED),
                          title: const Text('USer Name',
                          style: TextStyle(fontSize: 25),
                          ),
                          textColor: const Color(0xFF777777),
                          subtitle: const Text('user@gmail.com', style: TextStyle(fontSize: 22),),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                          mouseCursor: SystemMouseCursors.grab,
                          minVerticalPadding: 20,
                          minLeadingWidth: 60,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));
                          },
                          selected: true,
                          selectedTileColor: const Color(0xFFF0F8FF),
                        ),
                      ),
                    ),
                    SimpleDialogOption(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle_rounded,
                          size: 60,
                        ),
                        iconColor: const Color(0xFFB0C4DE),
                        title: const Text('USer1',
                          style: TextStyle(fontSize: 25),
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        textColor: const Color(0xFF777777),
                        subtitle: const Text('user@gmail.com', style: TextStyle(fontSize: 22),),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                        mouseCursor: SystemMouseCursors.grab,
                        minVerticalPadding: 20,
                        minLeadingWidth: 60,
                        onTap: (){
                        },
                      ),
                    ),
                    SimpleDialogOption(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListTile(
                        leading: const Icon(Icons.account_circle_rounded,
                          size: 60,
                        ),
                        iconColor: const Color(0xFFB0C4DE),
                        title: const Text('USer2',
                          style: TextStyle(fontSize: 25),
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        textColor: const Color(0xFF777777),
                        subtitle: const Text('user@gmail.com', style: TextStyle(fontSize: 22),),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                        mouseCursor: SystemMouseCursors.grab,
                        minVerticalPadding: 20,
                        minLeadingWidth: 60,
                        onTap: (){
                        },
                      ),
                    ),
                    SimpleDialogOption(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListTile(
                        leading: const Icon(Icons.add_circle,
                          size: 50,
                        ),
                        iconColor: const Color(0xFF999999),
                        title: const Text('Add User',
                          style: TextStyle(fontSize: 27),
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        textColor: const Color(0xFF777777),
                        mouseCursor: SystemMouseCursors.grab,
                        minVerticalPadding: 20,
                        minLeadingWidth: 60,
                        onTap: (){
                        },
                      ),
                    ),
                  ],
                ),
            );
          },
            padding: const EdgeInsets.all(10),
            icon: const Icon(Icons.account_circle_rounded),
            iconSize: 50,
            splashColor: const Color(0xFF6895ED),
            splashRadius: 50,
          ),
        ],
      ),
      drawer: Drawer(
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
                  Icons.alternate_email,
                  size: 80,
                ),
                iconColor: const Color(0xFFF9F9F9),
                title: const Text('Mail',
                  style: TextStyle(fontSize: 40, letterSpacing: 10, wordSpacing: 10),
                ),
                textColor: const Color(0xFFFFFFFF),
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                style: ListTileStyle.drawer,
                horizontalTitleGap: 20,
                minLeadingWidth: 65,
                onTap: (){
                  // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));
                },
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.all_inbox,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('All Inboxes',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
              onTap: (){
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SecurityScreen()));
              },
            ),
            const Divider(thickness: 1.5),
            ListTile(
              leading: const Icon(
                Icons.inbox_rounded,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Primary',
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
                Icons.group_outlined,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Social',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
              onTap: (){
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const NotificationScreen()));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.auto_awesome,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Promotions',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
              onTap: (){
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MessageScreen()));
              },
            ),
            const Divider(thickness: 1.5),
            ListTile(
              leading: const Icon(
                Icons.star_half_rounded,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Starred',
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
            ListTile(
              leading: const Icon(
                Icons.label_important_outline_rounded,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Important',
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
            ListTile(
              leading: const Icon(
                Icons.send_time_extension_outlined,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Send',
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
            ListTile(
              leading: const Icon(
                Icons.report_outlined,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Spam',
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
            ListTile(
              leading: const Icon(
                Icons.delete,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Trash',
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
            const Divider(thickness: 1.5),
            ListTile(
              leading: const Icon(
                Icons.settings_outlined,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Settings',
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
            ListTile(
              leading: const Icon(
                Icons.help_outline_rounded,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Help & Feedback',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
              onTap: (){
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HelpScreen()));
              },
            ),
          ],
        ),
      ),
      body: ListView.custom(
        itemExtent: 150,
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
          childrenDelegate: SliverChildListDelegate([
            for(var index in subTitle)
              ListTile(
                leading: const Icon(
                  Icons.email_rounded,
                  size: 50,
                ),
                iconColor: const Color(0xFF999999),
                title: const Text('G-Mail',
                  style: TextStyle(fontSize: 25),
                ),
                textColor: const Color(0xFF777777),
                subtitle: Text(
                  '${index.toString()} \nThis is gmail from BVM Engineering Collage.',
                  style: const TextStyle(fontSize: 20),
                ),
                isThreeLine: true,
                trailing: IconButton(onPressed: () {
                  showDialog(context: context, builder: (context) => AlertDialog(
                    title: const Text('Email'),
                    content: Text(index),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                    ),
                  );
                },
                  icon: const Icon(Icons.navigate_next_outlined),
                  iconSize: 35,
                  splashRadius: 50,
                  splashColor: const Color(0xFF6895ED),
                ),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                contentPadding: const EdgeInsets.all(15),
                style: ListTileStyle.drawer,
                // selected: true,
                // selectedTileColor: const Color(0xFFB0C4DE),
                // selectedColor: const Color(0xFFFFFFFF),
                horizontalTitleGap: 10,
                minLeadingWidth: 80,
              ),
          ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: const Color(0xFF6895ED),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        elevation: 10,
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}