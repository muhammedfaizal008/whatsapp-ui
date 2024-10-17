// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp/view/settings_screen/settings_screen.dart';
import 'package:whatsapp/view/widgets/floating_action_btn.dart';

class UpdateScreen extends StatelessWidget {
  int index;
  UpdateScreen(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Updates",style: TextStyle(
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
                PopupMenuItem(child: Text("Status privacy")),
                PopupMenuItem(child: Text("Create channel")),
                PopupMenuItem(child: Text("Settings"),
                onTap:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen(),));
                },
                )
              ],),
            SizedBox(width: 10,),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22,left: 10,right: 10),
                  child: Text("Status",style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    
                  ),),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) =>Padding(
                      padding: const EdgeInsets.only(right: 10,top: 15),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                          ),
                          Text("user",style: TextStyle(
                            fontSize: 12
                          ),)
                        ],
                      ),
                    ),
                    ),
                ),
                Divider(),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25,left: 10,right: 10),
                      child: Text("Channels",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        
                      ),),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,left: 10,right: 10),
                      child: Text("Explore",style: TextStyle(
                        color: Colors.green.shade500,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25,left: 10,right: 10),
                      child: Icon(Icons.keyboard_arrow_right,color: Colors.green,),
                    ),
                  ],
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){},
                      child: Container(
                      height: 70,
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
                            Text("Channels"),
                            Text("Hi,programmer how are you?")
                          ],
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("12:15"),
                            SizedBox(height: 5,),
                            CircleAvatar(
                              radius: 8,
                              backgroundColor: Colors.green,
                              child: Text("2",style: TextStyle(
                                color: Colors.white,
                                fontSize: 9
                              ),),
                            )
                          ],
                        )
                        ],
                      ),
                                        ),
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