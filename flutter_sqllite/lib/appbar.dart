import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sqllite/body.dart';

class AppbarScreen extends StatefulWidget {
  const AppbarScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<AppbarScreen> createState() => _AppbarScreenState();
}

class _AppbarScreenState extends State<AppbarScreen> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.title),
      titleTextStyle: const TextStyle(
          fontFamily: 'Consolas',
          fontSize: 35,
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
          Icons.format_textdirection_l_to_r_rounded,
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
            // Navigator.push(context, MaterialPageRoute(builder: (context)=> const DynamicTextField()));
          },
          icon: const Icon(Icons.settings_suggest_outlined),
          iconSize: 45,
          splashRadius: 45,
          splashColor: const Color(0xFF6895ED),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.login_rounded),
          iconSize: 55,
          splashRadius: 55,
          splashColor: const Color(0xFF6895ED),
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
