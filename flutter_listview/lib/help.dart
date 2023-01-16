import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {

    var list = List.generate(8, (index) =>
        'Index : $index'
    );

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
          child: Text('Help'),
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
            Icons.help_outline_rounded,
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
      body: ListView.separated(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10),
          itemBuilder: (context, item) => Align(
            alignment: Alignment.center,
            child: ListTile(
              leading: const Icon(
                Icons.transform_sharp,
                size: 50,
              ),
              iconColor: const Color(0xFF999999),
              title: const Text('Help',
                style: TextStyle(fontSize: 25),
              ),
              textColor: const Color(0xFF777777),
              subtitle: Text('Device Setting, Storage, ... \n${list[item]}',
                style: const TextStyle(fontSize: 20),
              ),
              trailing: IconButton(
                alignment: Alignment.centerRight,
                  onPressed: (){},
                  icon: const Icon(Icons.navigate_next_outlined),
                iconSize: 40,
                padding: const EdgeInsets.all(10),
                splashColor: const Color(0xFF6895ED),
                splashRadius: 50,
                tooltip: 'Click On',
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
          separatorBuilder: (context, item) => const Divider(height: 10, thickness: 1,),
          itemCount: list.length,
      ),
    );
  }
}
