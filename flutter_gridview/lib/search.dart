import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _textEditingControllerSearch =
      TextEditingController();

  bool isSearch = true;
  String itemName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xFFF0F8FF),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFB0C4DE),
              spreadRadius: 2,
              blurRadius: 10,
            ),
          ],
        ),
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF9F9F9),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PopupMenuButton(
                        padding: const EdgeInsets.all(10),
                        icon: const Icon(
                          Icons.account_circle_rounded,
                          color: Color(0xFF999999),
                        ),
                        iconSize: 65,
                        elevation: 10,
                        tooltip: 'User Profile',
                        splashRadius: 65,
                        color: const Color(0xFFF0F8FF),
                        constraints: const BoxConstraints(
                          maxWidth: 358,
                        ),
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(
                            color: Color(0xFFFFFFFF),
                            width: 2,
                          ),
                        ),
                        position: PopupMenuPosition.over,
                        onSelected: (item) {
                          setState(() {
                            itemName = (item as String?)!;
                          });
                        },
                        itemBuilder: (context) => <PopupMenuEntry>[
                              PopupMenuItem(
                                mouseCursor: SystemMouseCursors.click,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 25, horizontal: 5),
                                enabled: false,
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 5),
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  leading: const Icon(
                                    Icons.engineering_rounded,
                                    size: 75,
                                  ),
                                  iconColor: const Color(0xFF565656),
                                  textColor: const Color(0xFF777777),
                                  title: const Text(
                                    'User_ Name_',
                                    style: TextStyle(
                                      fontSize: 28,
                                    ),
                                  ),
                                  subtitle: const Text(
                                    'user123@gmail.com',
                                    style: TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                  trailing: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.logout_outlined,
                                    ),
                                    iconSize: 35,
                                    color: const Color(0xFF000000),
                                    splashRadius: 35,
                                    splashColor: const Color(0xFF6895ED),
                                    padding: const EdgeInsets.all(8),
                                  ),
                                  horizontalTitleGap: 20,
                                  mouseCursor: SystemMouseCursors.click,
                                  minVerticalPadding: 10,
                                  minLeadingWidth: 10,
                                ),
                                onTap: () {},
                              ),
                              const PopupMenuDivider(),
                              PopupMenuItem(
                                value: 1,
                                padding: const EdgeInsets.all(10),
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
                                      color: Color(0xFF999999),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Edit Profile',
                                      style: TextStyle(
                                        color: Color(0xFF777777),
                                        fontSize: 25,
                                        fontFamily: 'Consolas',
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {},
                              ),
                              PopupMenuItem(
                                value: 2,
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.settings_rounded,
                                      size: 45,
                                      color: Color(0xFF999999),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      'Settings',
                                      style: TextStyle(
                                        color: Color(0xFF777777),
                                        fontSize: 25,
                                        fontFamily: 'Consolas',
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () {},
                              ),
                            ]),
                  ]),
            ),
            Container(
              margin: const EdgeInsets.only(top: 100),
              padding: const EdgeInsets.all(12.5),
              child: TextFormField(
                controller: _textEditingControllerSearch,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF555555),
                ),
                autofocus: false,
                showCursor: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                  hintText: 'Search...',
                  hintStyle: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF989898),
                  ),
                  suffixIcon: isSearch
                      ? IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                          iconSize: 35,
                        )
                      : IconButton(
                          onPressed: () {
                            setState(() {
                              isSearch = true;
                              _textEditingControllerSearch.clear();
                            });
                          },
                          icon: const Icon(Icons.search_off),
                          iconSize: 30,
                        ),
                  suffixIconConstraints: const BoxConstraints(
                    minHeight: 80,
                    minWidth: 60,
                  ),
                  suffixIconColor: const Color(0xFF999999),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color(0xFF6895ED),
                      width: 2,
                      style: BorderStyle.solid,
                    ),
                  ),
                ),
                onChanged: (inputText) {
                  if (inputText.isNotEmpty) {
                    setState(() {
                      isSearch = false;
                    });
                  } else {
                    setState(() {
                      isSearch = true;
                    });
                  }
                },
              ),
            ),
            Positioned(
              top: 20,
              left: 5,
              child: IconButton(
                onPressed: () {},
                mouseCursor: SystemMouseCursors.click,
                icon: const Icon(Icons.tune_rounded),
                iconSize: 45,
                color: const Color(0xFF999999),
                splashRadius: 45,
                splashColor: const Color(0xFF6895ED),
                hoverColor: const Color(0xFFB0C4DE),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
