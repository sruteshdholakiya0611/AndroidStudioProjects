import 'package:flutter/material.dart';

class SecurityScreen extends StatefulWidget {
  const SecurityScreen({Key? key}) : super(key: key);

  @override
  State<SecurityScreen> createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {

  List icons = [
    Icons.admin_panel_settings_rounded,
    Icons.lock_open_outlined,
    Icons.private_connectivity_rounded,
    Icons.add_to_drive_outlined,
    Icons.password_outlined,
  ];

  List title = [
    'Manage Security',
    'Change Lock Pin',
    'Manage Account',
    'Drive Storage',
    'Change Password',
  ];

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
          child: Text('Security'),
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
            Icons.security_outlined,
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
      body: ListView.custom(
        itemExtent: 100,
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
          childrenDelegate: SliverChildBuilderDelegate((context, index) => Align(
            alignment: Alignment.center,
            child: ListTile(
              leading: Icon(
                icons[index],
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: Text(title[index],
                style: const TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              subtitle: const Text('Device Security',
                style: TextStyle(fontSize: 20),
              ),
              trailing: IconButton(onPressed: (){},
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
            childCount: icons.length,
          ),
        /*childrenDelegate: SliverChildListDelegate(
          [
            Align(
              alignment: Alignment.center,
              child: ListTile(
                leading: const Icon(
                  Icons.security_outlined,
                  size: 50,
                ),
                iconColor: const Color(0xFF999999),
                title: const Text('Security',
                  style: TextStyle(fontSize: 25),
                ),
                textColor: const Color(0xFF777777),
                subtitle: const Text('Device Security',
                  style: TextStyle(fontSize: 20),
                ),
                trailing: IconButton(onPressed: (){},
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
          ],
        ),*/
      ),
    );
  }
}
