import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController _textEditingControllerSearch;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingControllerSearch = TextEditingController();
  }

  SnackBar _snackBar(String textName) {
    return SnackBar(
      margin: const EdgeInsets.all(10),
      content: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.label_important_rounded,
              size: 45,
              color: Color(0xFF999999),
              semanticLabel: 'label',
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              textName,
              style: const TextStyle(
                  fontFamily: 'Consolas',
                  fontSize: 25,
                  color: Color(0xFF555555),
              ),
            ),
          ],
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
      backgroundColor: const Color(0xFFF0F8FF),
      padding: const EdgeInsets.all(10),
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      action: SnackBarAction(
          label: 'Undo',
          onPressed: () {}
      ),
      duration: const Duration(seconds: 5),
      elevation: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(250),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color(0xFFF0F8FF),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0),
            child: TextField(
              controller: _textEditingControllerSearch,
              autofocus: true,
              obscureText: false,
              mouseCursor: SystemMouseCursors.text,
              textCapitalization: TextCapitalization.words,
              textInputAction: TextInputAction.search,
              keyboardType: TextInputType.text,
              showCursor: true,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.normal,
                color: Color(0xFF777777),
              ),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xFF555555)),
                    borderRadius: BorderRadius.circular(10)),
                iconColor: const Color(0xFF555555),
                hintText: 'Search...',
                hintStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  color: Color(0xFF989898),
                ),
                prefixIcon: const Icon(
                  Icons.search_rounded,
                  size: 35,
                  semanticLabel: 'Search Icon',
                ),
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 70,
                  minHeight: 80,
                ),
                prefixIconColor: const Color(0xFF999999),
                suffixIcon: const Icon(
                  Icons.auto_awesome_rounded,
                  size: 35,
                  semanticLabel: 'lance Icon',
                ),
                suffixIconConstraints: const BoxConstraints(
                  minWidth: 60,
                  minHeight: 60,
                ),
                suffixIconColor: const Color(0xFF999999),
              ),
              onChanged: (inputText) {},
            ),
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(_snackBar('textName'));
            },
            child: Text('Open SnackBar',),
          ),
        ),
      ),
    );
  }
}
