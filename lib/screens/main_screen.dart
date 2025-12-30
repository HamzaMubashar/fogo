import 'package:flutter/material.dart';
import 'package:fogo/screens/chart_screen.dart';
import 'package:fogo/screens/home_screen.dart';
import 'package:fogo/screens/setting_screen.dart';
import 'package:fogo/screens/videos_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _navIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    ChartScreen(),
    VideoScreen(),
    SettingScreen(),
  ];

  List<PersistentBottomNavBarItem> _navBarItems = [
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/icons/home_icon2.png'),
      inactiveIcon: Image.asset('assets/icons/home_icon.png'),
      activeColorPrimary: Color(0xffC41E4C),
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/icons/chart_icon2.png'),
      inactiveIcon: Image.asset('assets/icons/chart_icon.png'),
      activeColorPrimary: Color(0xffC41E4C),
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset('assets/icons/video_icon2.png'),
      inactiveIcon: Image.asset('assets/icons/video_icon.png'),
      activeColorPrimary: Color(0xffC41E4C),
    ),
    PersistentBottomNavBarItem(
      activeColorPrimary: Color(0xffC41E4C),
      icon: Icon(
        Icons.menu,
        color: Color(0xffC41E4C),
      ),
      inactiveIcon: Icon(
        Icons.menu,
        color: Color(0xff838383),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PersistentTabView(
        // stateManagement: false,
        padding: EdgeInsets.symmetric(horizontal: 10),
        context,
        screens: screens,
        items: _navBarItems,
        navBarStyle: NavBarStyle.style3,
      ),
    );
    // return Scaffold(
    //   body: screens[_navIndex],
    //   bottomNavigationBar: BottomNavigationBar(
    //       backgroundColor: Colors.white,
    //       currentIndex: _navIndex,
    //       onTap: (newIndex) {
    //         setState(() {
    //           _navIndex = newIndex;
    //         });
    //       },
    //       items: [
    //         BottomNavigationBarItem(
    //           icon: Image.asset('assets/icons/home_icon.png'),
    //           label: '',
    //           activeIcon: Image.asset('assets/icons/home_icon2.png'),
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Image.asset('assets/icons/chart_icon.png'),
    //           label: '',
    //           activeIcon: Image.asset('assets/icons/chart_icon2.png'),
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Image.asset('assets/icons/video_icon.png'),
    //           label: '',
    //           activeIcon: Image.asset('assets/icons/video_icon2.png'),
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             Icons.menu,
    //             color: Color(0xff838383),
    //           ),
    //           label: '',
    //           activeIcon: Image.asset('assets/icons/video_icon2.png'),
    //         ),
    //       ]),
    // );
  }
}
