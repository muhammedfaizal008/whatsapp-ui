// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp/view/camera_screen/camera_screen.dart';
import 'package:whatsapp/view/chats_screen/individual_chat_screen.dart';
import 'package:whatsapp/view/settings_screen/settings_screen.dart';
import 'package:whatsapp/view/widgets/floating_action_btn.dart';

class ChatsScreen extends StatefulWidget {
  int index;
   ChatsScreen(this.index);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          title: Text("WhatsApp",style: TextStyle(
            color: Colors.greenAccent.shade700,
            fontWeight: FontWeight.w500,
            fontSize: 28,
            letterSpacing: -1
          ),),
          actions: [
            IconButton(icon: Icon(Icons.qr_code_scanner_outlined,color: Colors.black),onPressed: (){},),
            SizedBox(width: 8,),
            IconButton(icon: Icon(Icons.camera_alt_outlined,color: Colors.black),onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CameraScreen(),));
            },),
            SizedBox(width: 8,),
            PopupMenuButton(
              iconColor: Colors.black,
              color: Colors.white,
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("New Group")),
                PopupMenuItem(child: Text("New Broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Starred messages")),
                PopupMenuItem(child: Text("Payments")),
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
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.circle_outlined,color: Colors.blue,size: 26,),
                    hintText: "Ask Meta AI or Search",
                    hintStyle: TextStyle(fontWeight:FontWeight.normal,
                    fontSize: 14),
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                      
                    )
                  ),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(3),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => IndividualChatScreen(),));
                },
                child: Container(
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
                          Text("Programmer"),
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
              ),
              ),
              
            ],
          ),
        ),
        floatingActionButton: FloatingActionBtn(widget.index),
    );
  }
}