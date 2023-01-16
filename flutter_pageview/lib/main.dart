import 'package:flutter/material.dart';
import 'package:flutter_pageview/appbar.dart';
import 'package:flutter_pageview/drawer.dart';
import 'package:flutter_pageview/floatingactionbutton.dart';
import 'package:flutter_pageview/slider.dart';

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
      // home: const MyHomePage(title: 'Flutter App'),
      home: const Landing(),
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
  final PageController _pageControllerFirst = PageController();
  late int _currentPage = 0;
  late int _currentIndex = 0;

  /*final List _sliderIcon = const [
    Icons.dashboard_rounded,
    Icons.account_balance_rounded,
    Icons.perm_phone_msg_rounded,
    Icons.interests_rounded,
    Icons.auto_awesome_rounded,
    Icons.local_library_rounded,
    Icons.streetview_rounded,
  ];*/

  final List _sliderPage = [
    Builder(builder: (context) {
      return Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F8FF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF6895ED).withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.streetview_rounded,
                semanticLabel: 'Account',
                size: 240,
                color: const Color(0xFFD3D3D3).withOpacity(0.6),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 300, left: 30, right: 30),
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F8FF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF999999).withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 2,
                  // offset: const Offset(0, 5)
                ),
                // BoxShadow(
                //     color: const Color(0xFFF0F8FF).withOpacity(0.8),
                //     blurRadius: 10,
                //     spreadRadius: 2,
                //     offset: const Offset(5, 0)
                // ),
                // BoxShadow(
                //     color: const Color(0xFFF0F8FF).withOpacity(0.8),
                //     blurRadius: 10,
                //     spreadRadius: 2,
                //     offset: const Offset(-5, 0)
                // ),
              ],
            ),
            child: const Center(child: Text('StreetView', style: TextStyle(
                fontSize: 45,
                fontFamily: 'Script',
                letterSpacing: 6,
                color: Color(0xFF777777)
              // color: Color(0xFFFFFFFF)
            ),),),
          ),
          /*Positioned(
              top: 135,
              right: 15,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                    Icons.keyboard_double_arrow_right_rounded),
                iconSize: 65,
                color: const Color(0xFFC0C0C0),
              ),
            ),*/
        ],
      );
    }),
    Builder(builder: (context) {
      return Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F8FF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF6895ED).withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.local_library_rounded,
                semanticLabel: 'Account',
                size: 240,
                color: const Color(0xFFD3D3D3).withOpacity(0.6),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 300, left: 30, right: 30),
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F8FF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF999999).withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 2,
                  // offset: const Offset(0, 5)
                ),
                // BoxShadow(
                //     color: const Color(0xFFF0F8FF).withOpacity(0.8),
                //     blurRadius: 10,
                //     spreadRadius: 2,
                //     offset: const Offset(5, 0)
                // ),
                // BoxShadow(
                //     color: const Color(0xFFF0F8FF).withOpacity(0.8),
                //     blurRadius: 10,
                //     spreadRadius: 2,
                //     offset: const Offset(-5, 0)
                // ),
              ],
            ),
            child: const Center(child: Text('Library', style: TextStyle(
                fontSize: 45,
                fontFamily: 'Script',
                letterSpacing: 6,
                color: Color(0xFF777777)
              // color: Color(0xFFFFFFFF)
            ),),),
          ),
          /*Positioned(
              top: 135,
              right: 15,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                    Icons.keyboard_double_arrow_right_rounded),
                iconSize: 65,
                color: const Color(0xFFC0C0C0),
              ),
            ),*/
        ],
      );
    }),
    Builder(builder: (context) {
      return Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F8FF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF6895ED).withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.account_balance_rounded,
                semanticLabel: 'Account',
                size: 240,
                color: const Color(0xFFD3D3D3).withOpacity(0.6),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 300, left: 30, right: 30),
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F8FF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF999999).withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 2,
                  // offset: const Offset(0, 5)
                ),
                // BoxShadow(
                //     color: const Color(0xFFF0F8FF).withOpacity(0.8),
                //     blurRadius: 10,
                //     spreadRadius: 2,
                //     offset: const Offset(5, 0)
                // ),
                // BoxShadow(
                //     color: const Color(0xFFF0F8FF).withOpacity(0.8),
                //     blurRadius: 10,
                //     spreadRadius: 2,
                //     offset: const Offset(-5, 0)
                // ),
              ],
            ),
            child: const Center(child: Text('Account', style: TextStyle(
                fontSize: 45,
                fontFamily: 'Script',
                letterSpacing: 6,
                color: Color(0xFF777777)
              // color: Color(0xFFFFFFFF)
            ),),),
          ),
          /*Positioned(
              top: 135,
              right: 15,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                    Icons.keyboard_double_arrow_right_rounded),
                iconSize: 65,
                color: const Color(0xFFC0C0C0),
              ),
            ),*/
        ],
      );
    }),
    Builder(builder: (context) {
      return Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F8FF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF6895ED).withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.dashboard_rounded,
                semanticLabel: 'Account',
                size: 240,
                color: const Color(0xFFD3D3D3).withOpacity(0.6),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 300, left: 30, right: 30),
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F8FF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF999999).withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 2,
                  // offset: const Offset(0, 5)
                ),
                // BoxShadow(
                //     color: const Color(0xFFF0F8FF).withOpacity(0.8),
                //     blurRadius: 10,
                //     spreadRadius: 2,
                //     offset: const Offset(5, 0)
                // ),
                // BoxShadow(
                //     color: const Color(0xFFF0F8FF).withOpacity(0.8),
                //     blurRadius: 10,
                //     spreadRadius: 2,
                //     offset: const Offset(-5, 0)
                // ),
              ],
            ),
            child: const Center(child: Text('DashBoard', style: TextStyle(
                fontSize: 45,
                fontFamily: 'Script',
                letterSpacing: 6,
                color: Color(0xFF777777)
              // color: Color(0xFFFFFFFF)
            ),),),
          ),
          /*Positioned(
              top: 135,
              right: 15,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                    Icons.keyboard_double_arrow_right_rounded),
                iconSize: 65,
                color: const Color(0xFFC0C0C0),
              ),
            ),*/
        ],
      );
    }),
    Builder(builder: (context) {
      return Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 3,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F8FF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF6895ED).withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Icon(
                Icons.perm_phone_msg_rounded,
                semanticLabel: 'Account',
                size: 240,
                color: const Color(0xFFD3D3D3).withOpacity(0.6),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 300, left: 30, right: 30),
            padding: const EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height / 6,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: const Color(0xFFF0F8FF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF999999).withOpacity(0.8),
                  blurRadius: 10,
                  spreadRadius: 2,
                  // offset: const Offset(0, 5)
                ),
                // BoxShadow(
                //     color: const Color(0xFFF0F8FF).withOpacity(0.8),
                //     blurRadius: 10,
                //     spreadRadius: 2,
                //     offset: const Offset(5, 0)
                // ),
                // BoxShadow(
                //     color: const Color(0xFFF0F8FF).withOpacity(0.8),
                //     blurRadius: 10,
                //     spreadRadius: 2,
                //     offset: const Offset(-5, 0)
                // ),
              ],
            ),
            child: const Center(child: Text('Message', style: TextStyle(
                fontSize: 45,
                fontFamily: 'Script',
                letterSpacing: 6,
                color: Color(0xFF777777)
              // color: Color(0xFFFFFFFF)
            ),),),
          ),
          /*Positioned(
              top: 135,
              right: 15,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                    Icons.keyboard_double_arrow_right_rounded),
                iconSize: 65,
                color: const Color(0xFFC0C0C0),
              ),
            ),*/
        ],
      );
    }),
    // Stack(
    //   children: [
    //     Container(
    //       margin: const EdgeInsets.all(10),
    //       padding: const EdgeInsets.all(10),
    //       alignment: Alignment.center,
    //       decoration: BoxDecoration(
    //         color: const Color(0xFFFFFFFF),
    //         borderRadius: BorderRadius.circular(10),
    //         boxShadow: [
    //           BoxShadow(
    //             color: const Color(0xFF6895ED).withOpacity(0.8),
    //             blurRadius: 10,
    //             spreadRadius: 2,
    //           ),
    //         ],
    //       ),
    //       child: const Icon(
    //         Icons.dashboard_rounded,
    //         size: 300,
    //         color: Color(0xFFDCDCDC),
    //       ),
    //     ),
    //     /*Positioned(
    //       top: 135,
    //       left: 10,
    //       child: IconButton(
    //         onPressed: () {},
    //         icon: const Icon(
    //             Icons.keyboard_double_arrow_left_rounded),
    //         iconSize: 65,
    //         color: const Color(0xFFC0C0C0),
    //       ),
    //     ),
    //     Positioned(
    //       top: 135,
    //       right: 10,
    //       child: IconButton(
    //         onPressed: () {},
    //         icon: const Icon(
    //             Icons.keyboard_double_arrow_right_rounded),
    //         iconSize: 65,
    //         color: const Color(0xFFC0C0C0),
    //       ),
    //     ),*/
    //   ],
    // ),
    // Stack(
    //   children: [
    //     Container(
    //       margin: const EdgeInsets.all(10),
    //       padding: const EdgeInsets.all(10),
    //       alignment: Alignment.center,
    //       decoration: BoxDecoration(
    //         color: const Color(0xFFFFFFFF),
    //         borderRadius: BorderRadius.circular(10),
    //         boxShadow: [
    //           BoxShadow(
    //             color: const Color(0xFF6895ED).withOpacity(0.8),
    //             blurRadius: 10,
    //             spreadRadius: 2,
    //           ),
    //         ],
    //       ),
    //       child: const Icon(
    //         Icons.perm_phone_msg_rounded,
    //         size: 300,
    //         color: Color(0xFFDCDCDC),
    //       ),
    //     ),
    //     /*Positioned(
    //       top: 135,
    //       left: 15,
    //       child: IconButton(
    //         onPressed: () {},
    //         icon: const Icon(
    //             Icons.keyboard_double_arrow_left_rounded),
    //         iconSize: 65,
    //         color: const Color(0xFFC0C0C0),
    //       ),
    //     ),*/
    //   ],
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(250),
          child: AppbarScreen(title: 'Flutter App')),
      drawer: const DrawerScreen(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              controller: _pageControllerFirst,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: _sliderPage.length,
              itemBuilder: (BuildContext context, int index) =>
                  _sliderPage[index],
              // Stack(
              //   children: [
              //     Container(
              //       margin: const EdgeInsets.all(10),
              //       padding: const EdgeInsets.all(10),
              //       alignment: Alignment.center,
              //       decoration: BoxDecoration(
              //         color: const Color(0xFFF8F8FF),
              //         borderRadius: BorderRadius.circular(10),
              //         boxShadow: [
              //           BoxShadow(
              //             color: const Color(0xFF6895ED).withOpacity(0.8),
              //             blurRadius: 10,
              //             spreadRadius: 2,
              //           ),
              //         ],
              //       ),
              //       child: Icon(
              //         _sliderIcon[index],
              //         size: 300,
              //         color: const Color(0xFFDCDCDC),
              //       ),
              //     ),
              //   ],
              // ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:
                  List<Widget>.generate(_sliderPage.length, (int index) {
                return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    height: 10,
                    width: (index == _currentPage) ? 30 : 10,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 30),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == _currentPage)
                            ? const Color(0xFF6895ED)
                            : const Color(0xFF6895ED).withOpacity(0.5)));
              })),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 40,
        elevation: 0,
        unselectedItemColor: const Color(0xFFC0C0C0),
        selectedItemColor: const Color(0xFF999999),
        backgroundColor: const Color(0xFFF0F8FF),
        mouseCursor: SystemMouseCursors.click,
        selectedFontSize: 22.5,
        unselectedFontSize: 20,
        showUnselectedLabels: false,
        selectedLabelStyle: const TextStyle(height: 1.8, letterSpacing: 4),
        unselectedLabelStyle: const TextStyle(height: 1.05),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_outlined),
            activeIcon: Icon(Icons.account_balance),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_outlined),
              activeIcon: Icon(Icons.dashboard_rounded),
              label: 'Dashboard'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_phone_msg_outlined),
              activeIcon: Icon(Icons.perm_phone_msg_rounded),
              label: 'Phone'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.forum_outlined),
              activeIcon: Icon(Icons.forum_rounded),
              label: 'Message'
          ),
        ],
      ),
      floatingActionButton: const FloatingActionButtonScreen(),
    );
  }
}

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentPage = 0;
  final PageController _controller = PageController();

  final List<Widget> _pages = [
    const SliderPage(
        title: "Keep",
        description:
            "Accept cryptocurrencies and digital assets, keep thern here, or send to orthers",
        image: "assets/1.svg"),
    const SliderPage(
        title: "Buy",
        description:
            "Buy Bitcoin and cryptocurrencies with VISA and MasterVard right in the App",
        image: "assets/2.svg"),
    const SliderPage(
        title: "Sell",
        description:
            "Sell your Bitcoin cryptocurrencies or Change with orthres digital assets or flat money",
        image: "assets/3.svg"),
  ];

  _onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onChanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(_pages.length, (int index) {
                    return AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        height: 10,
                        width: (index == _currentPage) ? 30 : 10,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 30),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: (index == _currentPage)
                                ? Colors.blue
                                : Colors.blue.withOpacity(0.5)));
                  })),
              InkWell(
                onTap: () {
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: const Duration(milliseconds: 300),
                  height: 70,
                  width: (_currentPage == (_pages.length - 1)) ? 225 : 75,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5)),
                  child: (_currentPage == (_pages.length - 1))
                      ? TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MyHomePage(
                                        title: 'Flutter App')));
                          },
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                              // fontFamily: 'Chiller',
                              color: Colors.white,
                              fontSize: 28,
                            ),
                          ),
                        )
                      : const Icon(
                          Icons.navigate_next_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ),
    );
  }
}
