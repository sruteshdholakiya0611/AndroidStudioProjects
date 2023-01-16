import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (BuildContext context) {
        return SizedBox(
          height: 450,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Color(0xFFF0F8FF),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 120),
                  height: 5.0,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2.5),
                    color: const Color(0xFFD3D3D3),
                  ),
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                    color: const Color(0xFFF8F8FF),
                  ),
                  child: const Icon(
                    Icons.add_to_drive_outlined,
                    size: 180,
                    color: Color(0xFFDCDCDC),
                  )),
            ],
          ),
        );
      },
    );
  }
}
