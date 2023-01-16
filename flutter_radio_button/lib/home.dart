import 'package:flutter/material.dart';
import 'package:flutter_unicons/flutter_unicons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Unicon(
                  Unicons.uniHouseUserMonochrome,
                  size: 100,
                ),
                Unicon(
                  Unicons.uniUser,
                  size: 100,
                  color: const Color(0xFF6895ED),
                  fit: BoxFit.contain,
                  animationCurve: Curves.fastOutSlowIn,
                  mainAxisAlignment: MainAxisAlignment.center,
                  allowDrawingOutsideViewBox: true,
                ),
                Unicon(
                  Unicons.uniUserLocation,
                  size: 100,
                ),
                Unicon(
                  Unicons.uniChat,
                  size: 100,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Unicon(
                  Unicons.uniAtMonochrome,
                  size: 100,
                ),
                Unicon(
                  Unicons.uniLink,
                  size: 100,
                ),
                Unicon(
                  Unicons.uniSetting,
                  size: 100,
                ),
                Unicon(
                  Unicons.uniSearchAlt,
                  size: 100,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Unicon(
                  Unicons.uniEnvelope,
                  size: 100,
                ),
                Unicon(
                  Unicons.uniPhone,
                  size: 100,
                ),
                Unicon(
                  Unicons.uniTagAlt,
                  size: 100,
                ),
                Unicon(
                  Unicons.uniQuestionCircle,
                  size: 100,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Unicon(
                  Unicons.uniSigninMonochrome,
                  size: 100,
                ),
                Unicon(
                  Unicons.uniSignOutAltMonochrome,
                  size: 100,
                ),
                Unicon(
                  Unicons.uniArrow,
                  size: 100,
                ),
                Unicon(
                  Unicons.uniArrowRandom,
                  size: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
