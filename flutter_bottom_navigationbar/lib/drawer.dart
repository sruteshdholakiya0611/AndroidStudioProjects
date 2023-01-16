import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigationbar/search.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  bool isDay = true;
  bool _customTileExpanded = false;

  int _selectedIndex = 0;
  void selectIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 400,
      backgroundColor: const Color(0xFFF0F8FF),
      semanticLabel: 'Drawer',
      elevation: 10,
      shape: const BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
      child: ListView(
        padding: const EdgeInsets.all(10),
        shrinkWrap: true,
        children: [
          DrawerHeader(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      color: const Color(0xFF6895ED).withOpacity(0.6),
                      spreadRadius: 2,
                      blurRadius: 10,
                  ),
                ],
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xFFE6E6FA),
                    Color(0xFFFFFAFA),
                    Color(0xFFF5FFFA),
                    Color(0xFFF0FFFF)
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.engineering_rounded,
                    size: 90,
                    color: Color(0xFF999999),
                    semanticLabel: 'User',
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'User_name',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF777777),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'user123@gmail.com',
                        style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF888888),
                            ),
                      ),
                    ],
                  ),
                ],
              ),
          ),
          const Divider(thickness: 1.5),
          ListTile(
            leading: const Icon(
              Icons.manage_search_outlined,
              size: 50,
            ),
            iconColor: const Color(0xFF999999),
            title: const Text(
              'Search',
              style: TextStyle(fontSize: 28),
            ),
            textColor: const Color(0xFF777777),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: const EdgeInsets.all(15),
            style: ListTileStyle.drawer,
            horizontalTitleGap: 10,
            minLeadingWidth: 80,
            selected: _selectedIndex == 0,
            selectedTileColor: const Color(0xFF6895ED).withOpacity(0.1),
            // selectedColor: const Color(0xFF000000),
            onTap: () => {selectIndex(0), Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchScreen()))},
          ),
          ListTile(
            leading: const Icon(
              Icons.email_rounded,
              size: 50,
            ),
            iconColor: const Color(0xFF999999),
            title: const Text(
              'G-Mail',
              style: TextStyle(fontSize: 28),
            ),
            textColor: const Color(0xFF777777),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: const EdgeInsets.all(15),
            style: ListTileStyle.drawer,
            horizontalTitleGap: 10,
            minLeadingWidth: 80,
            selected: _selectedIndex == 1,
            selectedTileColor: const Color(0xFF6895ED).withOpacity(0.1),
            onTap: () => selectIndex(1),
          ),
          ListTile(
            leading: const Icon(
              Icons.notifications_active,
              size: 50,
            ),
            iconColor: const Color(0xFF999999),
            title: const Text(
              'Notification',
              style: TextStyle(fontSize: 28),
            ),
            textColor: const Color(0xFF777777),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: const EdgeInsets.all(15),
            style: ListTileStyle.drawer,
            horizontalTitleGap: 10,
            minLeadingWidth: 80,
            selected: _selectedIndex == 2,
            selectedTileColor: const Color(0xFF6895ED).withOpacity(0.1),
            onTap: () => selectIndex(2),
          ),
          ListTile(
            leading: const Icon(
              Icons.forum_outlined,
              size: 50,
            ),
            iconColor: const Color(0xFF999999),
            title: const Text(
              'Message',
              style: TextStyle(fontSize: 28),
            ),
            textColor: const Color(0xFF777777),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: const EdgeInsets.all(15),
            style: ListTileStyle.drawer,
            horizontalTitleGap: 10,
            minLeadingWidth: 80,
            selected: _selectedIndex == 3,
            selectedTileColor: const Color(0xFF6895ED).withOpacity(0.1),
            onTap: () => selectIndex(3),
          ),
          ListTile(
            leading: const Icon(
              Icons.dashboard_outlined,
              size: 50,
            ),
            iconColor: const Color(0xFF999999),
            title: const Text(
              'DashBoard',
              style: TextStyle(fontSize: 28),
            ),
            textColor: const Color(0xFF777777),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: const EdgeInsets.all(15),
            style: ListTileStyle.drawer,
            horizontalTitleGap: 10,
            minLeadingWidth: 80,
            selected: _selectedIndex == 4,
            selectedTileColor: const Color(0xFF6895ED).withOpacity(0.1),
            onTap: () => selectIndex(4),
          ),
          ExpansionTile(
            initiallyExpanded: false,
            controlAffinity: ListTileControlAffinity.trailing,
            expandedCrossAxisAlignment: CrossAxisAlignment.center,
            leading: const Icon(
              Icons.settings_outlined,
              size: 50,
            ),
            iconColor: const Color(0xFF6895ED),
            title: Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: const Text(
                'Settings',
                style: TextStyle(fontSize: 28),
              ),
            ),
            collapsedTextColor: const Color(0xFF777777),
            collapsedIconColor: const Color(0xFF999999),
            textColor: Colors.blueAccent,
            backgroundColor: const Color(0xFF6895ED).withOpacity(0.1),
            childrenPadding: const EdgeInsets.all(10),
            tilePadding: const EdgeInsets.all(15),
            trailing: Icon(
              _customTileExpanded
                  ? Icons.swap_vert_rounded
                  : Icons.swap_horiz_rounded,
              size: 45,
            ),
            children: <Widget>[
              ListTile(
                leading: Icon(
                  isDay ? Icons.light_mode_rounded : Icons.dark_mode_rounded,
                  size: 50,
                ),
                iconColor: const Color(0xFF999999),
                title: Text(
                  isDay ? 'Light Mode' : 'Dark Mode',
                  style: const TextStyle(fontSize: 28),
                ),
                textColor: const Color(0xFF777777),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                contentPadding: const EdgeInsets.all(15),
                style: ListTileStyle.drawer,
                horizontalTitleGap: 10,
                minLeadingWidth: 80,
                onTap: (){
                  setState(() {
                    isDay =! isDay;
                  });
                },
              ),
            ],
            onExpansionChanged: (bool expanded) {
              setState(() => _customTileExpanded = expanded);
            },
          ),
          const Divider(thickness: 1.5),
          ListTile(
            leading: const Icon(
              Icons.label_important_outline_rounded,
              size: 50,
            ),
            iconColor: const Color(0xFF999999),
            title: const Text(
              'Important',
              style: TextStyle(fontSize: 28),
            ),
            textColor: const Color(0xFF777777),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: const EdgeInsets.all(15),
            style: ListTileStyle.drawer,
            horizontalTitleGap: 10,
            minLeadingWidth: 80,
            selected: _selectedIndex == 5,
            selectedTileColor: const Color(0xFF6895ED).withOpacity(0.1),
            onTap: () => selectIndex(5),
          ),
          const Divider(thickness: 1.5),
          ListTile(
            leading: const Icon(
              Icons.logout_outlined,
              size: 50,
            ),
            iconColor: const Color(0xFF999999),
            title: const Text(
              'Logout',
              style: TextStyle(fontSize: 28),
            ),
            textColor: const Color(0xFF777777),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: const EdgeInsets.all(15),
            style: ListTileStyle.drawer,
            horizontalTitleGap: 10,
            minLeadingWidth: 80,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
