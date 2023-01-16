import 'package:flutter/material.dart';

class Profile{
  IconData icons;
  String title;
  String subTitle;

  Profile({
    required this.icons,
    required this.title,
    required this.subTitle,
  });
}

final List<Profile> _profile = <Profile>[
  Profile(icons: Icons.engineering, title: 'First Name', subTitle: 'User'),
  Profile(icons: Icons.supervisor_account_outlined, title: 'Last Name', subTitle: 'Surname'),
  Profile(icons: Icons.forum_outlined, title: 'Bio', subTitle: 'Dream Boy'),
  Profile(icons: Icons.attach_email_outlined, title: 'E-Mail', subTitle: 'user@gmail.com'),
  Profile(icons: Icons.perm_phone_msg_outlined, title: 'Phone', subTitle: '9876543210'),
  Profile(icons: Icons.person_pin_circle, title: 'Address', subTitle: 'surat, Gujarat'),
  Profile(icons: Icons.password_outlined, title: 'Password', subTitle: 'User@1234'),
];

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  /*List icons = [
    Icons.engineering,
    Icons.supervisor_account_outlined,
    Icons.forum_outlined,
    Icons.attach_email_outlined,
    Icons.perm_phone_msg_outlined,
    Icons.person_pin_circle,
    Icons.password_outlined,
  ];

  List name = [
    'First Name',
    'Last Name',
    'Bio',
    'E-Mail',
    'Phone',
    'Address',
    'Password'
  ];

  List subName = [
    'User',
    'Surname',
    'Dream Boy',
    'user@gmail.com',
    '9876543210',
    'surat, Gujarat',
    'User@1234'
  ];*/

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
          child: Text('Profile'),
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
            Icons.co_present_outlined,
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
      body: ListView.builder(
        itemCount: _profile.length,
          itemExtent: 100,
          padding: const EdgeInsets.all(8),
          itemBuilder: (BuildContext context, index) =>
              Align(
                alignment: Alignment.center,
                child: ListTile(
                  leading: Icon(
                    // icons[index],
                    _profile[index].icons,
                    size: 50,
                  ),
                  iconColor: const Color(0xFF999999),
                  title: Text(
                    // name[index],
                    _profile[index].title,
                    style: const TextStyle(fontSize: 25),
                  ),
                  textColor: const Color(0xFF777777),
                  subtitle: Text(
                    // subName[index],
                    _profile[index].subTitle,
                    style: const TextStyle(fontSize: 20),
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
      ),
    );
  }
}
