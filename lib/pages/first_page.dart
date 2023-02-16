import 'package:flutter/material.dart';
import 'package:woff/pages/home.dart';
import 'package:woff/pages/inbox.dart';
import 'package:woff/pages/profile.dart';
import 'package:woff/pages/search.dart';
import 'package:woff/pages/upload.dart';
import 'package:woff/widgets/tiktok_icon.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectedIndex = 0;
  List<Widget> pages = <Widget>[
    HomePage(),
    const SearchPage(),
    const UpLoadVideo(),
    const Inbox(),
    const Profilepage()
  ];
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        backgroundColor: Colors.black.withOpacity(0.6),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        selectedFontSize: 14,
        unselectedFontSize: 12,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              activeIcon: Icon(Icons.search),
              label: "Discover"),
          BottomNavigationBarItem(icon: UploadIcon(), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              activeIcon: Icon(Icons.message),
              label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
