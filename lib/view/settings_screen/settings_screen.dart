// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List icons=[
      Icons.key_outlined,
      Icons.message_outlined,
      Icons.notifications_outlined,
      Icons.data_usage_outlined,
      Icons.help_outline,
      Icons.person_outline,
      
    ];
    List settingsname=[
      "Account","Chats","Notification","Storage and Data","Help","Invite a Friend"
    ];
    List settingsdetails=[
      "Privacy,security,change number",
      "Theme,walpaper,chat history",
      "Message,group & call tone",
      "Network usage and auto download",
      "Help centre,contact us",
      ""
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 30,
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 21, 104, 82),
        title: Text("Settings",style: TextStyle(
          fontSize: 22,
          color: Colors.white,fontWeight: FontWeight.w500
        ),),
        actions: [
          Icon(Icons.search,color: Colors.white,),
          SizedBox(width: 15,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                ),
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Programmer",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),),
                    Text("Hi,programmer how are you?",style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 14
                          ),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 10,),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context, index) => InkWell(
                onTap: (){},
                child: Container(    
                  padding: EdgeInsets.all(10),      
                  height: 80,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(icons[index],color: Colors.grey.shade600,
                      size: 25,),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(settingsname[index],style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w400
                          ),),
                          Text(settingsdetails[index],style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 14
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              ),)
          ],
        ),
      ),
    );
  }
}