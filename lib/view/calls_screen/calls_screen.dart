// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp/view/settings_screen/settings_screen.dart';
import 'package:whatsapp/view/widgets/floating_action_btn.dart';

class CallsScreen extends StatelessWidget {
  int index;
  CallsScreen(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          title: Text("Calls",style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),),
          actions: [
            IconButton(icon: Icon(Icons.qr_code_scanner_outlined,color: Colors.black),onPressed: (){},),
            SizedBox(width: 8,),
            IconButton(icon: Icon(Icons.camera_alt_outlined,color: Colors.black),onPressed: (){},),
            SizedBox(width: 8,),
            PopupMenuButton(
              iconColor: Colors.black,
              color: Colors.white,
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("Clear call log")),
                PopupMenuItem(child: Text("Settings"),
                onTap:() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SettingsScreen(),));
                },
                )
              ],),
            SizedBox(width: 10,),
          ],
        ),
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Favourite"),
            Padding(
                  padding: const EdgeInsets.all(6),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.green,
                        child: Icon(Icons.favorite,color: Colors.white,),
                      ),
                      SizedBox(width: 10,),
                      Text("Add Favourite")
                    ],
                  ),
                ),
                Text("Recent"),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder:(context, index) => Container(
                    padding: EdgeInsets.all(5),
                    height: 75,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                        ),
                        SizedBox(width: 10,),
                        Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text("Alex"),
                      Text("Today,1:40"),
                    ],
                    ),
                    Spacer(),
                    Icon(Icons.call_outlined)
                    ],
                    ),
                ),)
          ],
        ),
      ),
    ),
    floatingActionButton: FloatingActionBtn(index),
    );
  }
}