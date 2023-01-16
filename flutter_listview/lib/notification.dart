import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: const TextStyle(fontFamily: 'Consolas',
          fontSize: 30,
          fontWeight: FontWeight.normal,
          letterSpacing: 8,
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 10.0, bottom: 5),
          child: Text('Notification'),
        ),
        toolbarHeight: 150,
        toolbarTextStyle: const TextStyle(fontFamily: 'Consolas'),
        elevation: 5,
        backgroundColor: const Color(0xFF6895ED),
        shadowColor: const Color(0xFF6895ED),
        scrolledUnderElevation: 10,
        leading: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Icon(
            Icons.notifications_active,
            size: 40,
            color: Color(0xFFFFFFFF),
          ),
        ),
        leadingWidth: 80,
        actions: [
          PopupMenuButton(
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
              ]),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        reverse: false,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemExtent: 120,
        children: [
          Align(
            alignment: Alignment.center,
            child: ListTile(
              leading: const Icon(
                Icons.attach_email_outlined,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('G-Mail',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              subtitle: const Text('Computer Science',
                style: TextStyle(fontSize: 20),
              ),
              trailing: PopupMenuButton(
                tooltip: 'Click On',
                // padding: const EdgeInsets.all(15),
                splashRadius: 50,
                icon: const Icon(
                  Icons.more_vert_rounded,
                ),
                iconSize: 40,
                elevation: 10,
                shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.copy),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('copy', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.content_paste_go_rounded),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('past', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              // selected: true,
              // selectedTileColor: Color(0xFFB0C4DE),
              // selectedColor: Color(0xFF6895ED),
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ListTile(
              leading: const Icon(
                Icons.attach_email_outlined,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('G-Mail',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              subtitle: const Text('Information Technology',
                style: TextStyle(fontSize: 20),
              ),
              trailing: PopupMenuButton(
                tooltip: 'Click On',
                // padding: const EdgeInsets.all(15),
                splashRadius: 50,
                icon: const Icon(
                  Icons.more_vert_rounded,
                ),
                iconSize: 40,
                elevation: 10,
                shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.copy),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('copy', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.content_paste_go_rounded),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('past', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              // selected: true,
              // selectedTileColor: Color(0xFFB0C4DE),
              // selectedColor: Color(0xFF6895ED),
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ListTile(
              leading: const Icon(
                Icons.fmd_good_outlined,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Location',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              subtitle: const Text('Information Technology',
                style: TextStyle(fontSize: 20),
              ),
              trailing: PopupMenuButton(
                tooltip: 'Click On',
                // padding: const EdgeInsets.all(15),
                splashRadius: 50,
                icon: const Icon(
                  Icons.more_vert_rounded,
                ),
                iconSize: 40,
                elevation: 10,
                shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.copy),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('copy', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.content_paste_go_rounded),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('past', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              // selected: true,
              // selectedTileColor: Color(0xFFB0C4DE),
              // selectedColor: Color(0xFF6895ED),
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ListTile(
              leading: const Icon(
                Icons.security_outlined,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Device Security',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              subtitle: const Text('Information Technology',
                style: TextStyle(fontSize: 20),
              ),
              trailing: PopupMenuButton(
                tooltip: 'Click On',
                // padding: const EdgeInsets.all(15),
                splashRadius: 50,
                icon: const Icon(
                  Icons.more_vert_rounded,
                ),
                iconSize: 40,
                elevation: 10,
                shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.copy),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('copy', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.content_paste_go_rounded),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('past', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              // selected: true,
              // selectedTileColor: Color(0xFFB0C4DE),
              // selectedColor: Color(0xFF6895ED),
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ListTile(
              leading: const Icon(
                Icons.add_to_drive_rounded,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Google Drive',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              subtitle: const Text('Computer Engineering',
                style: TextStyle(fontSize: 20),
              ),
              trailing: PopupMenuButton(
                tooltip: 'Click On',
                // padding: const EdgeInsets.all(15),
                splashRadius: 50,
                icon: const Icon(
                  Icons.more_vert_rounded,
                ),
                iconSize: 40,
                elevation: 10,
                shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.copy),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('copy', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.content_paste_go_rounded),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('past', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              // selected: true,
              // selectedTileColor: Color(0xFFB0C4DE),
              // selectedColor: Color(0xFF6895ED),
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: ListTile(
              leading: const Icon(
                Icons.settings_outlined,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Setting',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              subtitle: const Text('navigation bar, appbar, ...',
                style: TextStyle(fontSize: 20),
              ),
              trailing: PopupMenuButton(
                tooltip: 'Click On',
                // padding: const EdgeInsets.all(15),
                splashRadius: 50,
                icon: const Icon(
                  Icons.more_vert_rounded,
                ),
                iconSize: 40,
                elevation: 10,
                shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.copy),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('copy', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: const Icon(Icons.content_paste_go_rounded),
                          iconSize: 30,
                          color: const Color(0xFF999999),
                          splashRadius: 50,
                          splashColor: const Color(0xFF6895ED),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5, left: 15),
                          child: Text('past', style: TextStyle(fontSize: 25, color: Color(0xFF777777)),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: const EdgeInsets.all(15),
              style: ListTileStyle.drawer,
              // selected: true,
              // selectedTileColor: Color(0xFFB0C4DE),
              // selectedColor: Color(0xFF6895ED),
              horizontalTitleGap: 10,
              minLeadingWidth: 80,
            ),
          ),
        ],
      ),
    );
  }
}