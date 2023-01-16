import 'package:flutter/material.dart';
import 'package:flutter_listview/home.dart';

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
    timeOut();
  }

  timeOut() async{
    await Future.delayed(
      const Duration(seconds: 20),
          ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const MyHomePage())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children : [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Color(0xFFF0F8FF),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                FlutterLogo(
                  size: 200,
                ),
                SizedBox(
                  height: 70,
                ),
                Text('Flutter List App',
                  style: TextStyle(
                    fontSize: 35,
                    letterSpacing: 10,
                    wordSpacing: 8,
                    color: Color(0xFF999999),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ),
          Positioned(
            bottom: 120,
            left: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircularProgressIndicator(color: Color(0xFF6895ED), semanticsValue: 'Loading',),
                SizedBox(
                  height: 20,
                ),
                Text('  Loading...',
                  style: TextStyle(
                    fontSize: 25,
                    letterSpacing: 6,
                    color: Color(0xFF999999),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
      ],
      ),
    );
  }
}
