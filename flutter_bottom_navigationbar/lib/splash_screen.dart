import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigationbar/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const MyHomePage(title: 'Flutter App'))),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color(0xFFF0F8FF),
        ),
        duration: const Duration(
          microseconds: 3000,
        ),
        child: Hero(
          createRectTween: (begin, end) {
            return MaterialRectCenterArcTween(begin: begin, end: end);
          },
          tag: 'user',
          transitionOnUserGestures: true,
          child: const Icon(
            Icons.supervisor_account_outlined,
            size: 400,
            color: Color(0xFFDCDCDC),
            semanticLabel: 'User',
          ),
        ),
      ),
    );
  }
}
