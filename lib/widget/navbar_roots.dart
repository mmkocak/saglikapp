import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saglikapp/view/home/home_screen.dart';
import 'package:saglikapp/view/messages/messages_screen.dart';
import 'package:saglikapp/view/schedule/schedule_Screen.dart';
import 'package:saglikapp/view/settings/settings_screen.dart';

class NavbarRoots extends StatefulWidget {
  const NavbarRoots({super.key});

  @override
  State<NavbarRoots> createState() => _NavbarRootsState();
}

class _NavbarRootsState extends State<NavbarRoots> {
  int _selectedindex = 0;
  final _screens = [
    // Home Screen
    HomeScreen(),
    // Messages Screen
    MessagesScreen(),
    // Schedule Screen
    ScheduleScreen(),
    // Settings Screen
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedindex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle:
              const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          currentIndex: _selectedindex,
          onTap: (index) {
            setState(() {
              _selectedindex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Anasayfa"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                label: "Mesajlar"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: "Takvim"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Ayarlar"),
          ],
        ),
      ),
    );
  }
}
