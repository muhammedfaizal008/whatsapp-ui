// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FloatingActionBtn extends StatefulWidget {
   int index;
   FloatingActionBtn(this.index);

  @override
  State<FloatingActionBtn> createState() => _FloatingActionBtnState();
}

class _FloatingActionBtnState extends State<FloatingActionBtn> {
  List icon=[
    Icons.chat_bubble,
    Icons.camera_alt,
    Icons.abc,
    Icons.add_call
  ];
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: (){},
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      child: Icon(icon[widget.index]),
      );
  }
}