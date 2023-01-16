import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
              title: const Text(
                'User',
                style: TextStyle(fontSize: 30),
              ),
              textColor: const Color(0xFFFFFFFF),
              subtitle: const FittedBox(
                child: Text(
                  'user123@gmail.com',
                  style: TextStyle(fontSize: 24),
                ),
              ),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              style: ListTileStyle.drawer,
              horizontalTitleGap: 20,
              minLeadingWidth: 85,
              onTap: () {},
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(
              Icons.security_outlined,
              size: 50,
            ),
            iconColor: const Color(0xFF999999),
            title: const Text(
              'Security & Privacy',
              style: TextStyle(fontSize: 28),
            ),
            textColor: const Color(0xFF777777),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: const EdgeInsets.all(15),
            style: ListTileStyle.drawer,
            horizontalTitleGap: 10,
            minLeadingWidth: 80,
            onTap: () {},
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
            onTap: () {},
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
            onTap: () {},
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
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.help_outline_rounded,
              size: 50,
            ),
            iconColor: const Color(0xFF999999),
            title: const Text(
              'Help',
              style: TextStyle(fontSize: 28),
            ),
            textColor: const Color(0xFF777777),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            contentPadding: const EdgeInsets.all(15),
            style: ListTileStyle.drawer,
            horizontalTitleGap: 10,
            minLeadingWidth: 80,
            onTap: () {},
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
