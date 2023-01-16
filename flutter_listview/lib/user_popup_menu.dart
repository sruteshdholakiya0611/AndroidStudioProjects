import 'package:flutter/material.dart';
import 'package:flutter_listview/profile.dart';

class PopupMenuScreen extends StatefulWidget {
  const PopupMenuScreen({Key? key}) : super(key: key);

  @override
  State<PopupMenuScreen> createState() => _PopupMenuScreenState();
}

class _PopupMenuScreenState extends State<PopupMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
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
          padding: const EdgeInsets.symmetric(vertical: 10),
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
    );
  }
}
