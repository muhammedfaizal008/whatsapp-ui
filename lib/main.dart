import 'package:flutter/material.dart';
import 'package:whatsapp/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:whatsapp/view/splash_screen/splash_screen.dart';

void main(){
  runApp(MyWidget());
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}