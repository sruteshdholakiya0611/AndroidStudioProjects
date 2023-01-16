import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_clip_path/profile.dart';
import 'package:flutter_clip_path/search.dart';
import 'package:flutter_clip_path/settings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isIndex = true;
  bool isWallet = true;
  bool isDownload = true;
  bool isSearch = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(300),
          child: ClipPath(
            clipper: Clipper(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0xFFF0F8FF),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Opacity(
                      opacity: 0.25,
                      child: SvgPicture.asset(
                        'svgIcons/Mail.svg',
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: const Text(
                            'Flutter App',
                            style: TextStyle(
                              fontFamily: 'Consolas',
                              fontSize: 35,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1.5,
                              color: const Color(0xFFF0F8FF),
                              style: BorderStyle.solid,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(50)),
                            color: const Color(0xFFF0F8FF),
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen(), fullscreenDialog: true),);
                            },
                            child: SvgPicture.asset(
                              'svgIcons/User.svg',
                              width: 75,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                isIndex
                    ? SvgPicture.asset(
                        'svgIcons/Setting slider.svg',
                        width: 200,
                      )
                    : isWallet
                        ? SvgPicture.asset(
                            'svgIcons/Wallet.svg',
                            width: 200,
                          )
                        : isDownload
                            ? SvgPicture.asset(
                                'svgIcons/Download.svg',
                                width: 200,
                              )
                            : isSearch
                                ? SvgPicture.asset(
                                    'svgIcons/Search.svg',
                                    width: 200,
                                  )
                                : SvgPicture.asset(
                                    'svgIcons/Pin.svg',
                                    width: 200,
                                  ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: SizedBox.fromSize(
          size: const Size.fromHeight(150),
          child: ClipPath(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Color(0xFFF0F8FF),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isIndex = !isIndex;
                      });
                      setState(() {
                        isWallet = false;
                      });
                      setState(() {
                        isDownload = false;
                      });
                      setState(() {
                        isSearch = false;
                      });
                    },
                    child: SvgPicture.asset(
                      'svgIcons/Setting slider.svg',
                      width: isIndex ? 60 : 50,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isWallet = !isWallet;
                      });
                      setState(() {
                        isIndex = false;
                      });
                      setState(() {
                        isDownload = false;
                      });
                      setState(() {
                        isSearch = false;
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SettingsScreen()));
                    },
                    child: SvgPicture.asset(
                      'svgIcons/Wallet.svg',
                      width: isWallet ? 60 : 50,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDownload = !isDownload;
                      });
                      setState(() {
                        isWallet = false;
                      });
                      setState(() {
                        isIndex = false;
                      });
                      setState(() {
                        isSearch = false;
                      });
                    },
                    child: SvgPicture.asset(
                      'svgIcons/Download.svg',
                      width: isDownload ? 60 : 50,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isSearch = !isSearch;
                      });
                      setState(() {
                        isWallet = false;
                      });
                      setState(() {
                        isDownload = false;
                      });
                      setState(() {
                        isIndex = false;
                      });
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const SearchScreen()));
                    },
                    child: SvgPicture.asset(
                      'svgIcons/Search.svg',
                      width: isSearch ? 60 : 50,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width / 3, size.height / 1.18);
    path.lineTo(size.width / 1.5, size.height / 1.18);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1397199, size.height * 0.5440123);
    path0.lineTo(size.width * 0.1398511, size.height * 0.3629886);
    path0.quadraticBezierTo(size.width * 0.3298983, size.height * 0.5126440,
        size.width * 0.5162883, size.height * 0.3635678);
    path0.quadraticBezierTo(size.width * 0.5160632, size.height * 0.4089595,
        size.width * 0.5153881, size.height * 0.5451345);
    path0.lineTo(size.width * 0.1397199, size.height * 0.5440123);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
// class RPSCustomPainter extends CustomPainter{
//
//   @override
//   void paint(Canvas canvas, Size size) {
//
//
//
//     Paint paint0 = Paint()
//       ..color = const Color.fromARGB(255, 33, 150, 243)
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 1;
//
//
//     Path path0 = Path();
//     path0.moveTo(size.width*0.2816715,size.height*0.3627714);
//     path0.quadraticBezierTo(size.width*0.2807009,size.height*0.4965979,size.width*0.2803774,size.height*0.5412067);
//     path0.quadraticBezierTo(size.width*0.2807056,size.height*0.4983265,size.width*0.3747305,size.height*0.4947969);
//     path0.lineTo(size.width*0.4682772,size.height*0.4929868);
//     path0.quadraticBezierTo(size.width*0.5621708,size.height*0.4977292,size.width*0.5616926,size.height*0.5412067);
//     path0.quadraticBezierTo(size.width*0.5619270,size.height*0.4964078,size.width*0.5626303,size.height*0.3620112);
//     path0.lineTo(size.width*0.2816715,size.height*0.3627714);
//     path0.close();
//
//     canvas.drawPath(path0, paint0);
//
//
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }
//
// }
