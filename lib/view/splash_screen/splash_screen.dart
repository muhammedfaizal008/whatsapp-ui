// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:whatsapp/view/bottom_navbar_screen/bottom_navbar_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),
    (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavbarScreen(),));
    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 100,
          width: 100,
          child: Image(image: AssetImage("assets/images/splash_screen.png"))),
      ),
    );
  }
}