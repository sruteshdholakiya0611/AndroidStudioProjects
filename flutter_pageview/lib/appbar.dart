import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppbarScreen extends StatefulWidget {
  const AppbarScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AppbarScreen> createState() => _AppbarScreenState();
}

class _AppbarScreenState extends State<AppbarScreen> {

  int count = 1;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      titleTextStyle: const TextStyle(
          fontFamily: 'Chiller',
          fontSize: 45,
          letterSpacing: 10,
          wordSpacing: 8,
          fontWeight: FontWeight.normal,
          color: Color(0xFF777777)),
      elevation: 0,
      scrolledUnderElevation: 10,
      shadowColor: const Color(0xFF6895ED),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(
            color: Color(0xFFFFFFFF),
            width: 1.5,
          )),
      flexibleSpace: const FlexibleSpaceBar(
        background: Icon(
          Icons.deblur_sharp,
          size: 200,
          color: Color(0xFFDCDCDC),
        ),
      ),
      leading: Builder(builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(Icons.tune),
          iconSize: 45,
          splashRadius: 45,
          alignment: Alignment.center,
          splashColor: const Color(0xFF6895ED),
        );
      }),
      backgroundColor: const Color(0xFFF8F8FF),
      foregroundColor: const Color(0xFF999999),
      toolbarHeight: 200,
      toolbarTextStyle: const TextStyle(
        fontFamily: 'Consolas',
        fontSize: 28,
        fontWeight: FontWeight.normal,
      ),
      titleSpacing: 18,
      actions: [
        IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => Dialog(
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    side: BorderSide(
                      color: Color(0xFFF0F8FF),
                      width: 5,
                    )
                  ),
                  child: StatefulBuilder(builder: (context, setState)=>
                      ListView.builder(
                        shrinkWrap: true,
                        padding: const EdgeInsets.all(10),
                        itemBuilder: (BuildContext context, int index)=> Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          color: Color(0xFFF0F8FF),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(width: 10,),
                            IconButton(onPressed: (){
                                setState(() {
                                  count++;
                                });
                              },
                              splashRadius: 55,
                              splashColor: const Color(0xFF6895ED),
                              color: const Color(0xFFC0C0C0),
                              iconSize: 55,
                              icon: const Icon(
                                Icons.person_add_alt_1_rounded,
                                semanticLabel: 'Add User',
                              ),),
                            const SizedBox(width: 20,),
                            Text('Add User, $index', style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.normal,
                                color: const Color(0xFF777777)
                            ),)
                          ],
                        ),
                      ),
                        itemCount: count,
                      )
                  ),
                ));
          },
          icon: const Icon(Icons.settings_outlined),
          iconSize: 45,
          splashRadius: 45,
          splashColor: const Color(0xFF6895ED),
        ),
        PopupMenuButton(
          tooltip: 'Account',
          constraints: const BoxConstraints(
            maxWidth: 350,
          ),
          elevation: 10,
          padding: const EdgeInsets.all(10),
          icon: const Icon(Icons.account_circle_rounded),
          iconSize: 65,
          splashRadius: 65,
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
              child: GestureDetector(
                onTap: () {
                  // showDialog(context: context, builder: (context)=>Stack(
                  //   children: <Widget>[
                  //     Container(
                  //       padding: EdgeInsets.only(left: padding,top: avatarRadius
                  //           + padding, right: padding, bottom: padding
                  //       ),
                  //       margin: EdgeInsets.only(top: avatarRadius),
                  //       decoration: BoxDecoration(
                  //           shape: BoxShape.rectangle,
                  //           color: Colors.white,
                  //           borderRadius: BorderRadius.circular(padding),
                  //           boxShadow: [
                  //             BoxShadow(color: Colors.black,offset: Offset(0,10),
                  //                 blurRadius: 10
                  //             ),
                  //           ]
                  //       ),
                  //       child: Column(
                  //         mainAxisSize: MainAxisSize.min,
                  //         children: <Widget>[
                  //           Text(widget.title,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),),
                  //           SizedBox(height: 15,),
                  //           Text('widget.descriptions',style: TextStyle(fontSize: 14),textAlign: TextAlign.center,),
                  //           SizedBox(height: 22,),
                  //           Align(
                  //             alignment: Alignment.bottomRight,
                  //             child: FlatButton(
                  //                 onPressed: (){
                  //                   Navigator.of(context).pop();
                  //                 },
                  //                 child: Text(widget.title ,style: TextStyle(fontSize: 18),)),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //     Positioned(
                  //       left: padding,
                  //       right: padding,
                  //       child: CircleAvatar(
                  //         backgroundColor: Colors.transparent,
                  //         radius: avatarRadius,
                  //         child: ClipRRect(
                  //             borderRadius: BorderRadius.all(Radius.circular(avatarRadius)),
                  //             child: Icon(Icons.person_pin, size: 100,)
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ));
                  showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            side: BorderSide(
                              color: Color(0xFFF0F8FF),
                              width: 5,
                            )
                        ),
                        child: StatefulBuilder(builder: (context, setState)=>
                            ListView.builder(
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(10),
                              itemBuilder: (BuildContext context, int index)=> Container(
                                padding: const EdgeInsets.all(10),
                                margin: const EdgeInsets.all(10),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFF0F8FF),
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: 10,),
                                    IconButton(onPressed: (){
                                      setState(() {
                                        count++;
                                      });
                                    },
                                      splashRadius: 55,
                                      splashColor: const Color(0xFF6895ED),
                                      color: const Color(0xFFC0C0C0),
                                      iconSize: 55,
                                      icon: const Icon(
                                        Icons.person_add_alt_1_rounded,
                                        semanticLabel: 'Add User',
                                      ),),
                                    const SizedBox(width: 20,),
                                    Text('Add User, $index', style: const TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.normal,
                                        color: const Color(0xFF777777)
                                    ),)
                                  ],
                                ),
                              ),
                              itemCount: count,
                            )
                        ),
                      ));
                },
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
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent,
      ),
    );
  }
}
