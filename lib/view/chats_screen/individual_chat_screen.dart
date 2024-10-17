// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class IndividualChatScreen extends StatelessWidget {
  const IndividualChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 35,
        titleSpacing: 5,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
            ),
            SizedBox(width: 10,),
            Text(
              "User_name",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam_outlined,size: 30)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined,)),
          PopupMenuButton(
            color: Colors.white,
            itemBuilder: (context) => [
              PopupMenuItem(child: Text("View contact")),
              PopupMenuItem(child: Text("Media, links, and docs")),
              PopupMenuItem(child: Text("Search")),
              PopupMenuItem(child: Text("Mute Notification")),
              PopupMenuItem(child: Text("Disappearing messages")),
              PopupMenuItem(child: Text("Wallpaper")),
              PopupMenuItem(child: Text("More")),
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromRGBO(236,229,221,100), 
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 75, 
              color: Colors.transparent, 
              child: Padding(
                padding: const EdgeInsets.all(8.0), 
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none, 
                          ),
                          filled: true,
                          fillColor: Colors.white, 
                          hintText: "Message", 
                          hintStyle: TextStyle(color: Colors.grey), 
                          prefixIcon: IconButton(icon: Icon(Icons.tag_faces_outlined), onPressed: (){},),
                          suffixIcon: IconButton(icon: Icon(Icons.camera_alt_outlined), onPressed: (){},),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    InkWell(
                      onTap: (){},
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 21, 104, 82),
                       child: Icon(Icons.mic,color: Colors.white,), 
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
