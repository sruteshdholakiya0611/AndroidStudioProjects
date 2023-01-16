import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_listview/drawer.dart';
import 'package:path_provider/path_provider.dart';

class FileScreen extends StatefulWidget {
  const FileScreen({Key? key}) : super(key: key);

  @override
  State<FileScreen> createState() => _FileScreenState();
}

class _FileScreenState extends State<FileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  String? text;

  Future<String> _getDirPath() async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<void> _readData() async {
    final directoryPath = await _getDirPath();
    final myFile = File('$directoryPath/text.txt');
    final data = await myFile.readAsString();

    setState(() {
      text = data;
    });
  }

  final _textEditingController = TextEditingController();

  Future<void> _writeData() async {
    final directoryPath = await _getDirPath();
    final myFile = File('$directoryPath/text.txt');
    myFile.writeAsString(_textEditingController.text);
    _textEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const DrawerScreen(),
      body: NestedScrollView(
        controller: ScrollController(),
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
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
              child: Text('Files'),
            ),
            titleTextStyle: const TextStyle(
              fontFamily: 'Consolas',
              fontSize: 30,
              fontWeight: FontWeight.normal,
              letterSpacing: 5,
              wordSpacing: 5,
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/img_3.png',
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
            toolbarTextStyle: const TextStyle(
              fontFamily: 'Consolas',
              fontSize: 30,
              fontWeight: FontWeight.normal,
              letterSpacing: 5,
              wordSpacing: 5,
            ),
            backgroundColor: const Color(0xFF6895ED).withOpacity(0.9),
            leadingWidth: 80,
            actions: [
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_rounded),
                  iconSize: 45,
                  tooltip: 'Click On',
                  splashRadius: 50,
                  elevation: 10,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.help_outline_outlined),
                                iconSize: 30,
                                color: const Color(0xFF999999),
                                splashRadius: 50,
                                splashColor: const Color(0xFF6895ED),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 5, left: 15),
                                child: Text(
                                  'Help',
                                  style: TextStyle(
                                      fontSize: 25, color: Color(0xFF777777)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.logout_outlined),
                                iconSize: 30,
                                color: const Color(0xFF999999),
                                splashRadius: 50,
                                splashColor: const Color(0xFF6895ED),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 5, left: 15),
                                child: Text(
                                  'Logout',
                                  style: TextStyle(
                                      fontSize: 25, color: Color(0xFF777777)),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
            ],
          ),
        ],
        body: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xFFF9F9F9),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFB0C4DE),
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
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color(0xFFF9F9F9),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFB0C4DE),
                      spreadRadius: 2,
                      // blurStyle: BlurStyle.outer,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: ListTile(
                  leading: const Icon(
                    Icons.folder_shared_outlined,
                    size: 50,
                  ),
                  iconColor: const Color(0xFF999999),
                  title: Text(
                    text ?? 'Files',
                    style: const TextStyle(fontSize: 25),
                  ),
                  textColor: const Color(0xFF777777),
                  subtitle: Text(
                    'Device Storage : ${index + 1}',
                    style: const TextStyle(fontSize: 20),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      showDialog(context: context,
                          builder: (context) => SimpleDialog(
                            titlePadding: const EdgeInsets.fromLTRB(24, 24, 24, 10),
                            title: const Text('Write File'),
                            titleTextStyle: const TextStyle(
                              fontFamily: 'Consolas',
                              color: Color(0xFF777777),
                              fontSize: 30,
                              letterSpacing: 10,
                              wordSpacing: 10,
                              shadows: [
                                Shadow(color: Color(0xFF999999),blurRadius: 1.5),
                              ],
                            ),
                            elevation: 10,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            contentPadding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                            children: [
                              Container(
                                width: 400,
                                height: 170,
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
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextField(
                                      selectionControls: MaterialTextSelectionControls(),
                                      showCursor: true,
                                      maxLength: 100,
                                      controller: _textEditingController,
                                      maxLengthEnforcement: MaxLengthEnforcement.enforced,
                                      textAlignVertical: TextAlignVertical.center,
                                      keyboardType: TextInputType.text,
                                      mouseCursor: SystemMouseCursors.text,
                                      autofocus: true,
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                                        border: UnderlineInputBorder(),
                                        labelText: 'Text FIle',
                                        labelStyle: TextStyle(
                                          fontSize: 28,
                                        ),
                                        prefixIcon: Icon(Icons.forum_rounded, size: 40,),
                                        prefixIconColor: Color(0xFF999999),
                                        prefixIconConstraints: BoxConstraints(
                                          minWidth: 70,
                                        ),
                                        hintText: 'Enter Text',
                                        hintStyle: TextStyle(fontSize: 20),
                                      ),
                                      style: const TextStyle(color: Color(0xFF777777), fontSize: 25, fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: SimpleDialogOption(
                                      child: IconButton(
                                        onPressed: (){
                                          _textEditingController.clear();
                                        },
                                        icon: const Icon(Icons.remove_done_outlined),
                                        iconSize: 45,
                                        color: const Color(0xFF999999),
                                        splashRadius: 50,
                                        splashColor: const Color(0xFF6895ED),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SimpleDialogOption(
                                      child: IconButton(
                                        onPressed: _writeData,
                                        icon: const Icon(Icons.send_time_extension_outlined),
                                        iconSize: 45,
                                        color: const Color(0xFF999999),
                                        splashRadius: 50,
                                        splashColor: const Color(0xFF6895ED),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                              /*Container(
                                padding: const EdgeInsets.all(10),
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
                                child: ListTile(
                                  leading: const Icon(
                                    Icons.wallet,
                                    size: 50,
                                  ),
                                  iconColor: const Color(0xFF999999),
                                  title: const Text(*//*text ??*//* 'Text File',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  textColor: const Color(0xFF777777),
                                  subtitle: const Text('Device Storage',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  trailing: IconButton(onPressed: (){},
                                    icon: const Icon(Icons.done_all_rounded),
                                    iconSize: 35,
                                    splashRadius: 50,
                                    splashColor: const Color(0xFF6895ED),
                                  ),
                                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                                  contentPadding: const EdgeInsets.all(15),
                                  style: ListTileStyle.drawer,
                                  horizontalTitleGap: 10,
                                  minLeadingWidth: 80,
                                  onTap: (){},
                                ),
                              ),*/
                            ],
                          ),
                      );
                    },
                    icon: const Icon(Icons.navigate_next_outlined),
                    iconSize: 35,
                    splashRadius: 50,
                    splashColor: const Color(0xFF6895ED),
                  ),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  contentPadding: const EdgeInsets.all(15),
                  style: ListTileStyle.drawer,
                  horizontalTitleGap: 10,
                  minLeadingWidth: 80,
                  onTap: _readData,
                ),
              ),
            ),
            itemCount: 4,
            separatorBuilder: (context, index) => const Divider(
              thickness: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}

