import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250),
        child: ClipPath(
          clipper: ProfileClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color(0xFFF0F8FF),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10),
                  child: const Opacity(
                    opacity: 0.5,
                    child: Icon(
                      FontAwesomeIcons.userGroup,
                      size: 200,
                      color: Color(0xFFDCDCDC),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 120),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'user@123',
                        style: TextStyle(
                          fontFamily: 'Consolas',
                          fontSize: 35,
                          color: const Color(0xFF6895ED).withOpacity(0.75),
                        ),
                      ),
                      PopupMenuButton(
                        tooltip: 'Account',
                        constraints: const BoxConstraints(
                          maxWidth: 350,
                        ),
                        elevation: 10,
                        padding: const EdgeInsets.all(10),
                        icon: SvgPicture.asset('svgIcons/Settings.svg'),
                        iconSize: 65,
                        splashRadius: 50,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(
                            color: Color(0xFFF0F8FF),
                            width: 2.15,
                          ),
                        ),
                        itemBuilder: (context) => <PopupMenuEntry>[
                          const PopupMenuDivider(
                            height: 5,
                          ),
                          PopupMenuItem(
                            height: 120,
                            padding: const EdgeInsets.all(10),
                            mouseCursor: SystemMouseCursors.click,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset('svgIcons/User.svg',
                                  width: 75,
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
                            height: 30,
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
                                  FontAwesomeIcons.userPen,
                                  size: 40,
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
                                  FontAwesomeIcons.circleQuestion,
                                  size: 40,
                                  color: Color(0xFFC0C0C0),
                                  semanticLabel: 'Help',
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Help',
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
                    ],
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  height: 50,
                  width: 50,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset('svgIcons/Circle error.svg'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xFFF0F8FF),
        ),
      ),
    );
  }
}

class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.25, size.height / 1.5, size.width / 2,
        size.height / 1.25);
    path.lineTo(size.width / 2, size.height / 1.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.5,
        size.width * 0.50, size.height / 1.25);
    path.lineTo(size.width, size.height);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
