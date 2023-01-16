import 'package:flutter/material.dart';
import 'package:flutter_listview/drawer.dart';
import 'package:flutter_listview/files.dart';

class StorageScreen extends StatefulWidget {
  const StorageScreen({Key? key}) : super(key: key);

  @override
  State<StorageScreen> createState() => _StorageScreenState();
}

class _StorageScreenState extends State<StorageScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  /*List icons = [
    {
      'icon' : 'cloudIcons',
      'name' : [
        {
          'icon' : 'Icons.cloud',
        },
        {
          'icon' : 'Icons.add_to_drive_outlined',
        },
        {
          'icon' : 'Icons.download_outlined',
        },
      ]
    },
    {
      'icon' : 'localIcons',
      'name' : [
        {
          'icon' : 'Icons.folder_shared_outlined',
        },
        {
          'icon' : 'Icons.photo_outlined',
        },
        {
          'icon' : 'Icons.download_outlined',
        },
      ]
    },
  ];*/

  List cloudIcons = [
    Icons.cloud,
    Icons.add_to_drive_outlined,
    Icons.download_outlined,
    Icons.smart_button_outlined,
    Icons.music_note_outlined,
    Icons.video_library_rounded,
  ];

  List localIcons = [
    Icons.folder_shared_outlined,
    Icons.download_outlined,
    Icons.photo_outlined,
    Icons.music_note_outlined,
    Icons.video_library_rounded,
    Icons.auto_awesome,
    Icons.folder_special_outlined,
    Icons.sd_card,
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          key: _scaffoldKey,
          drawer: const DrawerScreen(),
          body: NestedScrollView(
            floatHeaderSlivers: true,
            controller: ScrollController(),
            headerSliverBuilder: (context, flag) => [
              SliverAppBar(
                leading: IconButton(
                  onPressed: (){
                    _scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.tune_rounded),
                  iconSize: 40,
                  splashColor: const Color(0xFF6895ED),
                ),
                centerTitle: false,
                floating: true,
                pinned: true,
                snap: false,
                stretch: true,
                title: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text('Storage'),
                ),
                titleTextStyle: const TextStyle(fontFamily: 'Consolas',
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 5,
                  wordSpacing: 5,
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'images/img_2.png',
                    semanticLabel: 'Background Image',
                    fit: BoxFit.cover,
                    scale: 10,
                    excludeFromSemantics: true,
                    filterQuality: FilterQuality.low,
                  ),
                ),
                elevation: 5,
                scrolledUnderElevation: 10,
                collapsedHeight: 150,
                expandedHeight: 400,
                shadowColor: const Color(0xFFB0C4DE),
                forceElevated: false,
                toolbarTextStyle: const TextStyle(fontFamily: 'Consolas',
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 5,
                  wordSpacing: 5,
                ),
                backgroundColor: const Color(0xFF6895ED).withOpacity(0.9),
                leadingWidth: 80,
                actions: [
                  IconButton(onPressed: (){
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
                    icon: const Icon(Icons.dashboard_outlined),
                    iconSize: 42,
                    splashRadius: 50,
                    splashColor: const Color(0xFFF0F8FF),
                    padding: const EdgeInsets.all(10),
                  ),
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
                bottom: const TabBar(
                  labelStyle: TextStyle(fontFamily: 'Consolas', fontSize: 20),
                  unselectedLabelColor: Color(0xFFFFFFFF),
                  indicatorWeight: 4,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Color(0xFFFFFFFF),
                  labelPadding: EdgeInsets.all(12),
                  tabs: [
                    Tab(
                      icon: Icon(Icons.memory_outlined,
                        size: 35,
                        semanticLabel: 'Local Storage',
                      ),
                      text: 'Local Storage',
                    ),
                    Tab(
                      icon: Icon(
                          Icons.streetview_rounded,
                        size: 35,
                        semanticLabel: 'Cloud Storage',
                      ),
                      text: 'Cloud Storage',
                    ),
                  ],
                ),
              ),
            ],
            body: TabBarView(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
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
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemExtent: 150,
                    itemCount: localIcons.length,
                    itemBuilder: (context, index) =>
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
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
                        child: Align(
                          alignment: Alignment.center,
                          child: ListTile(
                            leading: Icon(
                              localIcons[index],
                              size: 50,
                            ),
                            iconColor: const Color(0xFF999999),
                            title: const Text('Local Storage',
                              style: TextStyle(fontSize: 25),
                            ),
                            textColor: const Color(0xFF777777),
                            subtitle: Text('Device Storage : $index',
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
                  ),
                ),

                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
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
                  child: ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(10),
                    itemBuilder: (context, index) => Align(
                        alignment: Alignment.center,
                        child: ListTile(
                          leading: Icon(
                            cloudIcons[index],
                            size: 50,
                          ),
                          iconColor: const Color(0xFF999999),
                          title: const Text('Cloud Storage',
                            style: TextStyle(fontSize: 25),
                          ),
                          textColor: const Color(0xFF777777),
                          subtitle: Text('Device Storage : ${index+1}',
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
                      separatorBuilder: (context, index)=> const Divider(),
                      itemCount: cloudIcons.length,
                  ),
                ),
              ],
            )
          ),
        ),
    );
  }
}
