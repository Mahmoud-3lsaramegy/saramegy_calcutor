import 'package:flutter/material.dart';

class function_UI {}

//Buttons Function
Widget button(String btext, Color btextcolor, funCall) {
  return Container(
    width: 90,
    height: 90,
    padding: EdgeInsets.all(10),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color(0xff272b33)),
      ),
      onPressed: funCall,
      child: Center(
        child: Text(
          btext,
          style: TextStyle(
            fontSize: 25,
            color: btextcolor,
          ),
        ),
      ),
    ),
  );
}
