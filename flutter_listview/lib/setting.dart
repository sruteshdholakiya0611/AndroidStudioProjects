import 'package:flutter/material.dart';
import 'package:flutter_listview/files.dart';
import 'package:flutter_listview/user_popup_menu.dart';
import 'package:flutter_listview/storage.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  bool switchState = false;
  IconData iconData = Icons.dark_mode;

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
          child: Text('Settings'),
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
            Icons.settings_suggest_outlined,
            size: 40,
            color: Color(0xFFFFFFFF),
          ),
        ),
        leadingWidth: 80,
        actions: [
          IconButton(onPressed: (){
              switchState ? iconData = Icons.dark_mode : iconData = Icons.light_mode;
              setState((){
                switchState =! switchState;
              });
          },
            icon: Icon(iconData),
            iconSize: 35,
            splashRadius: 50,
            splashColor: const Color(0xFFF0F8FF),
          ),
          const PopupMenuScreen(),
          /*IconButton(onPressed: (){
            showModalBottomSheet(context: context,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)
                )),
                isScrollControlled: true,
                builder: (context) => ListView(
                  controller: ScrollController(),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  shrinkWrap: true,
                  children: [
                      Align(
                        alignment: Alignment.center,
                        child: ListTile(
                          hoverColor: const Color(0xFF6895ED),
                          contentPadding: const EdgeInsets.all(10),
                          leading: const Icon(
                            Icons.history,
                            size: 35,
                          ),
                          title: const Text('History',
                            style: TextStyle(fontSize: 25, color: Color(0xFF777777),),
                          ),
                          textColor: const Color(0xFF777777),
                          trailing: IconButton(onPressed: (){},
                            icon: const Icon(Icons.navigate_next_outlined),
                            iconSize: 35,
                            splashRadius: 50,
                            splashColor: const Color(0xFF6895ED),
                          ),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          style: ListTileStyle.drawer,
                          horizontalTitleGap: 10,
                          minLeadingWidth: 50,
                          onTap: (){},
                          // tileColor: const Color(0xFF777777),
                        )
                      ),
                    const Divider(thickness: 1.5,),
                    Align(
                        alignment: Alignment.center,
                        child: ListTile(
                          hoverColor: const Color(0xFF6895ED),
                          contentPadding: const EdgeInsets.all(10),
                          leading: const Icon(
                            Icons.insert_drive_file_rounded,
                            size: 35,
                          ),
                          title: const Text('Files',
                            style: TextStyle(fontSize: 25, color: Color(0xFF777777),),
                          ),
                          textColor: const Color(0xFF777777),
                          trailing: IconButton(onPressed: (){},
                            icon: const Icon(Icons.navigate_next_outlined),
                            iconSize: 35,
                            splashRadius: 50,
                            splashColor: const Color(0xFF6895ED),
                          ),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          style: ListTileStyle.drawer,
                          horizontalTitleGap: 10,
                          minLeadingWidth: 50,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const FileScreen()));
                          },
                          // tileColor: const Color(0xFF777777),
                        )
                    ),
                    const Divider(thickness: 1.5,),
                    Align(
                        alignment: Alignment.center,
                        child: ListTile(
                          hoverColor: const Color(0xFF6895ED),
                          contentPadding: const EdgeInsets.all(10),
                          leading: const Icon(
                            Icons.heart_broken,
                            size: 35,
                          ),
                          title: const Text('Favorite',
                            style: TextStyle(fontSize: 25, color: Color(0xFF777777),),
                          ),
                          textColor: const Color(0xFF777777),
                          trailing: IconButton(onPressed: (){},
                            icon: const Icon(Icons.navigate_next_outlined),
                            iconSize: 35,
                            splashRadius: 50,
                            splashColor: const Color(0xFF6895ED),
                          ),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          style: ListTileStyle.drawer,
                          horizontalTitleGap: 10,
                          minLeadingWidth: 50,
                          onTap: (){},
                          // tileColor: const Color(0xFF777777),
                        )
                    ),
                    const Divider(thickness: 1.5,),
                    Align(
                        alignment: Alignment.center,
                        child: ListTile(
                          hoverColor: const Color(0xFF6895ED),
                          contentPadding: const EdgeInsets.all(10),
                          leading: const Icon(
                            Icons.qr_code_2,
                            size: 35,
                          ),
                          title: const Text('QR Code',
                            style: TextStyle(fontSize: 25, color: Color(0xFF777777),),
                          ),
                          textColor: const Color(0xFF777777),
                          trailing: IconButton(onPressed: (){},
                            icon: const Icon(Icons.navigate_next_outlined),
                            iconSize: 35,
                            splashRadius: 50,
                            splashColor: const Color(0xFF6895ED),
                          ),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          style: ListTileStyle.drawer,
                          horizontalTitleGap: 10,
                          minLeadingWidth: 50,
                          onTap: (){},
                        )
                    ),
                    const Divider(thickness: 1.5,),
                    Align(
                        alignment: Alignment.center,
                        child: ListTile(
                          hoverColor: const Color(0xFF6895ED),
                          contentPadding: const EdgeInsets.all(10),
                          leading: const Icon(
                            Icons.bookmark,
                            size: 35,
                          ),
                          iconColor: const Color(0xFF999999),
                          title: const Text('Saved',
                            style: TextStyle(fontSize: 25, color: Color(0xFF777777),),
                          ),
                          textColor: const Color(0xFF777777),
                          trailing: IconButton(onPressed: (){},
                            icon: const Icon(Icons.navigate_next_outlined),
                            iconSize: 35,
                            splashRadius: 50,
                            splashColor: const Color(0xFF6895ED),
                          ),
                          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                          style: ListTileStyle.drawer,
                          horizontalTitleGap: 10,
                          minLeadingWidth: 50,
                          onTap: (){},
                        ),
                    ),
                  ],
                )
            );
          },
            icon: const Icon(Icons.tune_rounded),
            iconSize: 45,
            splashRadius: 50,
            splashColor: const Color(0xFFF0F8FF),
            padding: const EdgeInsets.all(10),
          ),*/
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
        ],
      ),
      body: ListView(
        reverse: false,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemExtent: 200,
        padding: const EdgeInsets.all(10),
        children: [
          Container(
            margin: const EdgeInsets.all(10),
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
                    icon: const Icon(Icons.account_circle_rounded),
                    iconSize: 65,
                    color: const Color(0xFF999999),
                    splashRadius: 50,
                    splashColor: const Color(0xFF6895ED),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(bottom: 5, left: 15),
                        child: Text('User', style: TextStyle(fontSize: 30, color: Color(0xFF777777)),),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text('user@gmail.com', style: TextStyle(fontSize: 24, color: Color(0xFF777777)),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
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
                    iconSize: 55,
                    color: const Color(0xFF999999),
                    splashRadius: 50,
                    splashColor: const Color(0xFF6895ED),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, left: 15),
                    child: Text('Google Drive', style: TextStyle(fontSize: 30, color: Color(0xFF777777)),),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
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
                    icon: const Icon(Icons.g_mobiledata),
                    iconSize: 55,
                    color: const Color(0xFF999999),
                    splashRadius: 50,
                    splashColor: const Color(0xFF6895ED),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5, left: 15),
                    child: Text('Google Setting', style: TextStyle(fontSize: 30, color: Color(0xFF777777)),),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
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
                    icon: const Icon(Icons.key),
                    iconSize: 55,
                    color: const Color(0xFF999999),
                    splashRadius: 50,
                    splashColor: const Color(0xFF6895ED),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5, left: 15),
                    child: Text('User Account', style: TextStyle(fontSize: 30, color: Color(0xFF777777)),),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
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
                    onPressed: (){
                    },
                    icon: const Icon(Icons.notifications),
                    iconSize: 55,
                    color: const Color(0xFF999999),
                    splashRadius: 50,
                    splashColor: const Color(0xFF6895ED),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5, left: 15),
                    child: Text('Notification', style: TextStyle(fontSize: 30, color: Color(0xFF777777)),),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
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
                    icon: const Icon(Icons.security_outlined),
                    iconSize: 55,
                    color: const Color(0xFF999999),
                    splashRadius: 50,
                    splashColor: const Color(0xFF6895ED),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5, left: 15),
                    child: Text('Device Security', style: TextStyle(fontSize: 30, color: Color(0xFF777777)),),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
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
                    icon: const Icon(Icons.link_rounded),
                    iconSize: 55,
                    color: const Color(0xFF999999),
                    splashRadius: 50,
                    splashColor: const Color(0xFF6895ED),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5, left: 15),
                    child: Text('Links', style: TextStyle(fontSize: 30, color: Color(0xFF777777)),),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
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
                    icon: const Icon(Icons.person_pin_circle),
                    iconSize: 55,
                    color: const Color(0xFF999999),
                    splashRadius: 50,
                    splashColor: const Color(0xFF6895ED),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5, left: 15),
                    child: Text('Location', style: TextStyle(fontSize: 30, color: Color(0xFF777777)),),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
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
                    icon: const Icon(Icons.phonelink_setup),
                    iconSize: 55,
                    color: const Color(0xFF999999),
                    splashRadius: 50,
                    splashColor: const Color(0xFF6895ED),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 5, left: 15),
                    child: Text('About Phone', style: TextStyle(fontSize: 30, color: Color(0xFF777777)),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
