import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => _SettingScreenNotifier(),
      builder: (context, provider){
        return Consumer<_SettingScreenNotifier>(builder: (context, notifier, child){
          return MaterialApp(
            title: 'Flutter App',
            theme: ThemeData(
              fontFamily: 'Consolas',
              primarySwatch: Colors.blue,
            ),
            darkTheme: ThemeData.dark(),
            themeMode: notifier.isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
            debugShowCheckedModeBanner: false,
            home: const MyHomePage(),
          );
        });
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal),
        toolbarHeight: 200,
        toolbarOpacity: 0.9,
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingScreen()));
          },
            icon: const Icon(Icons.settings),
            iconSize: 30,
            padding:  const EdgeInsets.all(20),
            hoverColor: const Color(0xFF999999),
            splashRadius: 50,
            tooltip: 'Click On',
          ),
        ],
      ),
      body: Consumer<_SettingScreenNotifier>(
        builder: (context, notifier, child){
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Flutter Demo Application',
                  style: TextStyle(fontFamily: 'consolas', fontSize: 25, fontWeight: FontWeight.normal),
                ),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Text('Notification : ${notifier.count}',
                    style: const TextStyle(fontFamily: 'consolas', fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 10, right: 10, bottom: 5, top: 5),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Licence Eligibility ', textScaleFactor: 1.8, style: TextStyle(fontFamily: 'Consolas', color: Color(0xFF666666),),),
                  ),
                ),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                      labelText: '| Age',
                      labelStyle: TextStyle(fontSize: 22),
                      hintText: 'enter age',
                      hintStyle: TextStyle(fontSize: 20),
                      prefixIcon: Icon(Icons.person_outline_rounded, size: 28,),
                    ),
                    toolbarOptions: const ToolbarOptions(selectAll: bool.hasEnvironment('select')),
                    style: const TextStyle(fontFamily: 'Consolas', fontSize: 20.5, color: Color(0xFF555555),),
                    textInputAction: TextInputAction.done,
                    obscureText: false,
                    autofocus: true,
                    onChanged: (val){
                      Provider.of<_SettingScreenNotifier>(context, listen: false).checkEligibility(int.parse(val));
                    },
                  ),
                ),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text('Eligibility : ${notifier.eligibleMsg}',
                    style: const TextStyle(fontFamily: 'consolas', fontSize: 22, fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<_SettingScreenNotifier>(context,listen: false).incrementCount();
        },
        backgroundColor: const Color(0xFF6895ED),
        child: const Icon(Icons.add_alert_rounded),
      ),
    );
  }
}

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setting Screen'),
        titleTextStyle: const TextStyle(fontFamily: 'Consolas', fontSize: 25, fontWeight: FontWeight.normal),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Consumer<_SettingScreenNotifier> (
                builder: (context, notifier, child) {
                  return SwitchListTile(
                      title: const Text('Dark Mode', textScaleFactor: 1.5, style: TextStyle(fontFamily: 'Consolas'),),
                      activeColor: const Color(0xFF6895ED),
                      // selected: true,
                      value: notifier.isDarkModeEnabled,
                      secondary:  const Icon(Icons.dark_mode,
                          color: Color(0xFF999999),
                      ),
                      onChanged: (bool value) {
                        notifier.toggleApplicationTheme(value);
                      }
                  );
                }
            )
          ]
      ),
    );
  }
}

class _SettingScreenNotifier extends ChangeNotifier{
  bool _isDarkModeEnabled = false;
  get isDarkModeEnabled => _isDarkModeEnabled;

  void toggleApplicationTheme(bool darkModeEnabled) {
    _isDarkModeEnabled = darkModeEnabled;
    notifyListeners();
  }

  int _count = 0;
  get count => _count;

  void incrementCount(){
    _count++;
    notifyListeners();
  }

  bool? isEligible;
  String? eligibleMsg = '';

  void checkEligibility(int age){
    if(age >= 18){
      isEligible = true;
      eligibleMsg = 'You are eligible!';
      notifyListeners();
    }
    else{
      isEligible = false;
      eligibleMsg = 'You not are eligible!';
      notifyListeners();
    }
  }
}