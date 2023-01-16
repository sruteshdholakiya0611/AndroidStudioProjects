import 'package:flutter/material.dart';
import 'package:flutter_pageview/bottomnavigationbar.dart';

class FloatingActionButtonScreen extends StatefulWidget {
  const FloatingActionButtonScreen({Key? key}) : super(key: key);

  @override
  State<FloatingActionButtonScreen> createState() => _FloatingActionButtonScreenState();
}

class _FloatingActionButtonScreenState extends State<FloatingActionButtonScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(0),
      height: 100,
      width: 100,
      child: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context,
              builder: (context) => const BottomNavigationBarScreen()
          );
        },
        tooltip: 'Send',
        mouseCursor: SystemMouseCursors.click,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        isExtended: true,
        splashColor: const Color(0xFF999999),
        backgroundColor: const Color(0xFF6895ED),
        child: const Icon(
          Icons.label_important_outlined,
          size: 45,
          semanticLabel: 'Send Icon',
        ),
      ),
    );
  }
}
