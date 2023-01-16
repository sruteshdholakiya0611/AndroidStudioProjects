import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(250),
        child: ClipPath(
          clipper: SearchClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              color: Color(0xFF999999),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
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

class SearchClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0);
    path.lineTo(0, size.height*0.5);
    // path.quadraticBezierTo(0, size.height, size.width/3, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width/3, size.height);
    path.lineTo(size.width/1.5, size.height);
    // path.quadraticBezierTo(size.width, size.height, size.width, size.height/2);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height*0.5);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
