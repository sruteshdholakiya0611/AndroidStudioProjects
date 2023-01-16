import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bottom_navigationbar/profile.dart';

class AppBarScreen extends StatefulWidget {
  const AppBarScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AppBarScreen> createState() => _AppBarScreenState();
}

class _AppBarScreenState extends State<AppBarScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
      ),
      backgroundColor: const Color(0xFFF0F8FF),
      elevation: 0,
      title: Text(widget.title),
      titleTextStyle: const TextStyle(
        fontFamily: 'Consolas',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
        fontSize: 32,
        color: Color(0xFF777777),
        letterSpacing: 5,
        wordSpacing: 5,
        debugLabel: 'title',
        overflow: TextOverflow.ellipsis,
      ),
      titleSpacing: 10,
      toolbarHeight: 200,
      scrolledUnderElevation: 5,
      foregroundColor: const Color(0xFF999999),
      leadingWidth: 80,
      leading: IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(Icons.tune_rounded),
        iconSize: 45,
        color: const Color(0xFF999999),
      ),
      shadowColor: const Color(0xFF6895ED),
      flexibleSpace: const Hero(
        tag: 'user',
        transitionOnUserGestures: true,
        child: Icon(
            Icons.supervisor_account_outlined,
            size: 250,
            color: Color(0xFFDCDCDC),
          ),
      ),
      toolbarTextStyle: const TextStyle(
        fontFamily: 'Consolas',
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.normal,
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const FullScreenDialog(),
                    fullscreenDialog: true,
                ));
          },
          icon: const Icon(Icons.account_circle_sharp),
          iconSize: 65,
          color: const Color(0xFF999999),
          splashColor: const Color(0xFF6895ED),
          splashRadius: 50,
        ),
        const SizedBox(
          width: 10,
        ),
      ],
    );
  }
}

class FullScreenDialog extends StatelessWidget {
  const FullScreenDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color(0xFF777777),
        backgroundColor: const Color(0xFFF0F8FF),
        title: const Text('User Dialog'),
        titleTextStyle: const TextStyle(
          fontStyle: FontStyle.normal,
          fontFamily: 'Consolas',
          fontWeight: FontWeight.normal,
          fontSize: 30,
          color: Color(0xFF777777),
          letterSpacing: 5,
          wordSpacing: 5,
          overflow: TextOverflow.clip
        ),
        titleSpacing: 5,
        toolbarHeight: 200,
        elevation: 0,
        scrolledUnderElevation: 5,
        shadowColor: const Color(0xFF6895ED),
        leadingWidth: 80,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close_rounded),
          iconSize: 48,
          color: const Color(0xFF999999),
        ),
        actions: [
          PopupMenuButton(
            tooltip: 'Account',
            constraints: const BoxConstraints(
              maxWidth: 350,
            ),
            elevation: 10,
            padding: const EdgeInsets.all(10),
            icon: const Icon(Icons.settings_outlined),
            iconSize: 55,
            splashRadius: 50,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(
                color: Color(0xFFF0F8FF),
                width: 2.15,
              ),
            ),
            itemBuilder: (context) => <PopupMenuEntry>[
              const PopupMenuDivider(
                height: 10,
              ),
              PopupMenuItem(
                height: 120,
                padding: const EdgeInsets.all(10),
                mouseCursor: SystemMouseCursors.click,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.person_pin,
                      size: 75,
                      color: Color(0xFF6895ED),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'User',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF777777),
                          ),
                        ),
                        Text(
                          'User123@gmail.com',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF999999),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(
                height: 25,
              ),
              PopupMenuItem(
                height: 80,
                padding: const EdgeInsets.all(10),
                mouseCursor: SystemMouseCursors.click,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.manage_accounts,
                      size: 45,
                      color: Color(0xFFC0C0C0),
                      semanticLabel: 'Edit Profile',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF777777),
                      ),
                    ),
                  ],
                ),
              ),
              PopupMenuItem(
                height: 80,
                padding: const EdgeInsets.all(10),
                mouseCursor: SystemMouseCursors.click,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.switch_account_rounded,
                      size: 45,
                      color: Color(0xFFC0C0C0),
                      semanticLabel: 'Switch Account',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Switch Account',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF777777),
                      ),
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(
                height: 5,
              ),
              PopupMenuItem(
                height: 80,
                padding: const EdgeInsets.all(10),
                mouseCursor: SystemMouseCursors.click,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.logout_outlined,
                      size: 45,
                      color: Color(0xFFC0C0C0),
                      semanticLabel: 'Logout',
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF777777),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Center(
        child: TextButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));
          },
          child: const Text("USer dialog", style: TextStyle(
            fontSize: 25
          ),),
        ),
      ),
    );
  }
}
