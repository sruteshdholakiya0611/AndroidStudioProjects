import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BottomSheet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Consolas',
        primarySwatch: Colors.blue,
      ),
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
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontStyle: FontStyle.normal),
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.add_home_work_rounded,),
                            title: const Text('Home', style: TextStyle(fontSize: 18,),),
                            onTap: () {Navigator.pop(context);},
                            iconColor: const Color(0xFFB0C4DE),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                            // shape: const Border(bottom: BorderSide(width: 1.0, color: Color(0xFF000000))),
                          ),
                          ListTile(
                            leading: const Icon(Icons.account_balance_wallet,),
                            title: const Text('Wallet', style: TextStyle(fontSize: 18,),),
                            onTap: () {Navigator.pop(context);},
                            iconColor: const Color(0xFFB0C4DE),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                          ),
                          Padding(padding: const EdgeInsets.only(bottom: 10),
                            child: ListTile(
                              leading: const Icon(Icons.dashboard_rounded,),
                              title: const Text('Account Balance', style: TextStyle(fontSize: 18,),),
                              onTap: () {Navigator.pop(context);},
                              iconColor: const Color(0xFFB0C4DE),
                              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                            ),
                          ),
                        ],
                      );
                    }
                );
              },
                icon: const Icon(
                  Icons.settings,
                  color: Color(0xFF6895ED),
                  size: 30.0,
                ),
              tooltip: 'Click ON',
            ),
            const Text(
              'Click On',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.normal, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        // shape: const CircularNotchedRectangle(),
        color: const Color(0xFFF1F2F3),
        notchMargin: 0,
        child: Container(
          height: 60,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const BottomSheets()));
        },
        backgroundColor: const Color(0xFF6895ED),
        icon: const Icon(
          Icons.align_vertical_top_rounded,
          size: 30,
        ),
        extendedTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 20),
        label: const Text("Click On"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class BottomSheets extends StatefulWidget{
  const BottomSheets({Key? key}) : super(key: key);

  @override
  State<BottomSheets> createState() {
    return _BottomSheetModal();
  }
}

class _BottomSheetModal extends State<BottomSheets>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet Modal'),
      ),
      bottomSheet: SizedBox(
        height: 200,
        child: BottomSheet(
          onClosing: () {  },
          builder: (BuildContext context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  leading: const Icon(Icons.add_home_work_rounded,),
                  title: const Text('Home', style: TextStyle(fontSize: 18,),),
                  onTap: () {
                    showModalBottomSheet(context: context, builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: IconButton(
                                    onPressed: () {Navigator.pop(context);},
                                    icon: const Icon(Icons.add_home_work_rounded, size: 40, color: Color(0xFFB0C4DE),),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20, left: 20),
                                  child: Text('Home', style: TextStyle(fontSize: 25, color: Color(0xFF6895ED),),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    });
                  },
                  iconColor: const Color(0xFF6895ED),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  minVerticalPadding: 10,
                ),
                ListTile(
                  leading: const Icon(Icons.account_balance_wallet,),
                  title: const Text('Wallet', style: TextStyle(fontSize: 18,),),
                  onTap: () {
                    showModalBottomSheet(context: context, builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: IconButton(
                                    onPressed: () {Navigator.pop(context);},
                                    icon: const Icon(Icons.account_balance_wallet, size: 40, color: Color(0xFFB0C4DE),),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20, left: 20),
                                  child: Text('Wallet', style: TextStyle(fontSize: 25, color: Color(0xFF6895ED),),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    });
                  },
                  iconColor: const Color(0xFF6895ED),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  minVerticalPadding: 10,
                ),
                ListTile(
                  leading: const Icon(Icons.dashboard_rounded),
                  title: const Text('Account Balance', style: TextStyle(fontSize: 18,),),
                  onTap: () {
                    showModalBottomSheet(context: context, builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            height: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: IconButton(
                                    onPressed: () {Navigator.pop(context);},
                                    icon: const Icon(Icons.dashboard_rounded, size: 40, color: Color(0xFFB0C4DE),),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 20, left: 20),
                                  child: Text('Account Balance', style: TextStyle(fontSize: 25, color: Color(0xFF6895ED),),),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    });
                  },
                  iconColor: const Color(0xFF6895ED),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  minVerticalPadding: 10,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}