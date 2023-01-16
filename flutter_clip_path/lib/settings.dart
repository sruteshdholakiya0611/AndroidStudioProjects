import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(300),
        child: ClipPath(
          clipper: SettingClipper(),
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xFFF0F8FF),
              ),
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: Opacity(
                        opacity: 0.5,
                        child: SvgPicture.asset('svgIcons/Settings.svg')),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 150),
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 10,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        FontAwesomeIcons.downLeftAndUpRightToCenter,
                        size: 35,
                        color: Color(0xFF999999),
                        semanticLabel: 'Close Icon',
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    right: 10,
                    child: SvgPicture.asset('svgIcons/Search.svg',
                      width: 62,
                    ),
                  ),
                ],
              )),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: Color(0xFFF0F8FF),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}

class SettingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        0, size.height / 1.5, size.width / 3, size.height / 1.5);
    path.lineTo(size.width / 3, size.height / 1.5);
    path.lineTo(size.width / 1.5, size.height / 1.5);
    path.quadraticBezierTo(
        size.width, size.height / 1.5, size.width, size.height / 3);
    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
