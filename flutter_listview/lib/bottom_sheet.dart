import 'package:flutter/material.dart';

class ListTitle{
  final IconData iconData;
  final String title;

  ListTitle({
    required this.iconData,
    required this.title,
 });
}

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({Key? key}) : super(key: key);

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
/*
  List icons = [
    Icons.select_all,
    Icons.cut,
    Icons.copy,
    Icons.paste,
    Icons.delete,
  ];*/

  final List<ListTitle> _list = <ListTitle>[
    ListTitle(iconData: Icons.select_all, title: 'Select All'),
    ListTitle(iconData: Icons.cut, title: 'Cut'),
    ListTitle(iconData: Icons.copy, title: 'Copy'),
    ListTitle(iconData: Icons.paste, title: 'Paste'),
    ListTitle(iconData: Icons.delete, title: 'Delete'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      child: BottomSheet(onClosing: (){},
        shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        elevation: 10,
            builder: (context) => ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shrinkWrap: true,
              itemBuilder: (context, index) =>
              Align(
                alignment: Alignment.center,
                child: ListTile(
                  leading: Icon(
                    _list[index].iconData,
                    size: 35,
                  ),
                  iconColor: const Color(0xFF999999),
                  title: Text(_list[index].title,
                    style: const TextStyle(fontSize: 25),
                  ),
                  textColor: const Color(0xFF777777),
                  /*trailing: IconButton(onPressed: (){},
                    icon: const Icon(Icons.navigate_next_outlined),
                    iconSize: 35,
                    splashRadius: 50,
                    splashColor: const Color(0xFF6895ED),
                  ),*/
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  contentPadding: const EdgeInsets.all(15),
                  style: ListTileStyle.drawer,
                  horizontalTitleGap: 10,
                  minLeadingWidth: 60,
                ),
              ),
              separatorBuilder: (context, index) => const Divider(thickness: 1.5,),
              itemCount: _list.length,
            ),
      ),
    );
  }
}
