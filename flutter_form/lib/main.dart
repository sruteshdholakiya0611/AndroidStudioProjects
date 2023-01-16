import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Consolas',
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter App'),
    );
  }
}

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
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal),
      ),
      body: Center(
        child: Container(
          height: 600,
          /*decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFF6895ED),
              style: BorderStyle.solid,
              width: 1.0,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),*/
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(padding: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Registration', textScaleFactor: 2.5, style: TextStyle(color: Color(0xFF777777),),),
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    // icon: Icon(Icons.person_outline_rounded),
                    border: OutlineInputBorder(),
                    labelText: '| First Name',
                    labelStyle: TextStyle(fontSize: 22),
                    hintText: 'first name',
                    hintStyle: TextStyle(fontSize: 18),
                    prefixIcon: Icon(Icons.person_outline_rounded),
                    // errorText: 'Please Enter First Name.',
                    errorStyle: TextStyle(fontSize: 20),
                  ),
                  style: TextStyle(fontSize: 20.5, color: Color(0xFF555555),),
                  autofocus: true,
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    // icon: Icon(Icons.person_add_alt_1_outlined),
                    border: OutlineInputBorder(),
                    // label: Text('Data'),
                    labelText: '| Last Name',
                    labelStyle: TextStyle(fontSize: 22),
                    hintText: 'last name',
                    hintStyle: TextStyle(fontSize: 18),
                    prefixIcon: Icon(Icons.person_add_alt_1_outlined),
                    // contentPadding: EdgeInsets.all(10),
                    // errorText: 'Please Enter Last Name.',
                    // errorStyle: TextStyle(fontSize: 20),
                  ),
                  style: TextStyle(fontSize: 20.5, color: Color(0xFF555555),),
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  autofocus: true,
                ),
              ),
              /*const Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    // icon: Icon(Icons.person_add_alt_1_outlined),
                    border: OutlineInputBorder(),
                    // label: Text('Data'),
                    labelText: '| E-Mail Id',
                    labelStyle: TextStyle(fontSize: 22),
                    hintText: 'email id',
                    hintStyle: TextStyle(fontSize: 18),
                    prefixIcon: Icon(Icons.attach_email_outlined),
                    // contentPadding: EdgeInsets.all(10),
                    // errorText: 'Please Enter Last Name.',
                    // errorStyle: TextStyle(fontSize: 20),
                  ),
                  style: TextStyle(fontSize: 20.5, color: Color(0xFF555555),),
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  autofocus: true,
                ),
              ),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    // icon: Icon(Icons.person_add_alt_1_outlined),
                    border: OutlineInputBorder(),
                    // label: Text('Data'),
                    labelText: '| Mobile No.',
                    labelStyle: TextStyle(fontSize: 22),
                    hintText: 'mobile no.',
                    hintStyle: TextStyle(fontSize: 18),
                    prefixIcon: Icon(Icons.phone_callback_outlined),
                    // contentPadding: EdgeInsets.all(10),
                    // errorText: 'Please Enter Last Name.',
                    // errorStyle: TextStyle(fontSize: 20),
                  ),
                  style: TextStyle(fontSize: 20.5, color: Color(0xFF555555),),
                  textInputAction: TextInputAction.done,
                  obscureText: true,
                  autofocus: true,
                ),
              ),*/
              Align(
                alignment: Alignment.centerRight,
                child: Padding(padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: ElevatedButton(onPressed: (){},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(horizontal: 20, vertical: 15),),
                      textStyle: MaterialStateProperty.all<TextStyle>(const TextStyle(fontFamily: 'Consolas')),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
                      fixedSize: MaterialStateProperty.all<Size>(const Size(140, 65)),
                      alignment: Alignment.centerRight,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text('Next', style: TextStyle(fontSize: 22)),
                        Padding(padding: EdgeInsets.only(left: 15),
                          child: Icon(Icons.navigate_next_outlined, size: 25,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}