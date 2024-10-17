// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp/view/calls_screen/calls_screen.dart';
import 'package:whatsapp/view/chats_screen/chats_screen.dart';
import 'package:whatsapp/view/communities_screen/communities_screen.dart';
import 'package:whatsapp/view/update_screen/update_screen.dart';

class BottomNavbarScreen extends StatefulWidget {
  const BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int currindex=0;
  final List<Widget> screens = [
    ChatsScreen(0),
    UpdateScreen(1),
    CommunitiesScreen(2),
    CallsScreen(3),
  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currindex],
      bottomNavigationBar: Container(
        height: 80,
        child: Theme(
          data: Theme.of(context).copyWith(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            splashFactory: NoSplash.splashFactory
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            unselectedItemColor: Colors.black,
            unselectedLabelStyle: TextStyle(
              fontSize: 14,
            ),
            selectedItemColor: Color.fromARGB(255, 0, 23, 1),
            selectedLabelStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold
            ),
            currentIndex: currindex,
            iconSize: 24,
            onTap: (value) {
              currindex=value;
              setState(() {
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
            BottomNavigationBarItem(
              activeIcon: IconBackground(currindex==0, Icons.chat),
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Icon(Icons.chat_outlined,),
              ),label: "Chats",),
            BottomNavigationBarItem(
              activeIcon: IconBackground(currindex==1, Icons.data_usage),
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Icon(
                Icons.data_usage),
              ),label: "Updates"),
            BottomNavigationBarItem(
              activeIcon: IconBackground(currindex==2, Icons.people),
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Icon(Icons.people_alt_outlined),
              ),label: "Communities"),
            BottomNavigationBarItem(
              activeIcon: IconBackground(currindex==3, Icons.call),
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Icon(Icons.call_outlined),
              ),
              label: "Calls"),
          ]),
        ),
      ),
    );
  }
}
Widget IconBackground(bool isActive,IconData icon){
  return Padding(
    padding: const EdgeInsets.only(bottom: 5),
    child: Container(
      width: 60,
      height: 30,
      decoration: BoxDecoration(
        color: isActive?Colors.green.shade100:Colors.transparent,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Icon(
          icon,
          color: isActive ? Colors.green.shade900 : Colors.black,
        ),
    ),
  );
}