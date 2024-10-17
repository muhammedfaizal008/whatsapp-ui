// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatsapp/view/settings_screen/settings_screen.dart';

class CommunitiesScreen extends StatelessWidget {
  int index;
  CommunitiesScreen(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Communities",style: TextStyle(
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
                PopupMenuItem(child: Text("Settings"),
                onTap:() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsScreen(),));
                },
                )
              ],),
            SizedBox(width: 10,),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              InkWell(
                onTap: (){},
                child: SizedBox(
                  width: double.infinity,
                  height: 75,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(Icons.people_alt,color: Colors.white,),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.green,
                          child: Icon(Icons.add,size: 15,color: Colors.white,),
                        ))
                        ]
                      ),
                      SizedBox(width: 10,),
                      Text("New community",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16
                      ),),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 5,
                color: Colors.grey.shade200,
              ),
              InkWell(
                onTap: () {},
                child: SizedBox(
                    width: double.infinity,
                    height: 75,
                    child: Row(
                      children: [
                        Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.people_alt,color: Colors.white,),
                        ),                        
                        SizedBox(width: 10,),
                        Text("Community",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16
                        ),),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
    );
  }
}