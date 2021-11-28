import 'dart:ffi';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

class calcutor_ui_home extends StatefulWidget {
  const calcutor_ui_home({Key? key}) : super(key: key);

  @override
  _calcutor_ui_homeState createState() => _calcutor_ui_homeState();
}

class _calcutor_ui_homeState extends State<calcutor_ui_home> {
  String num = "";
  String num1 = '';
  String num2 = '';
  String result = '';
  String fnialresult = "";
  String text = '';
  String sum() {
    text = num1;
    setState(() {
      text = "";
    });
    text = num2;
    setState(() {
      text = "";
    });
    fnialresult = num1 + num2;
    return fnialresult;
  }

  void clacutor(String Btext) {
    if (Btext == "C" || Btext == "AC") {
      setState(() {
        num = "";
        num1 = "";
        num2 = "";
        result = "";
        fnialresult = "";
        text = "";
      });
    } else if (Btext == "+" ||
        Btext == "-" ||
        Btext == "X" ||
        Btext == "/" ||
        Btext == "=" ||
        Btext == "%" ||
        Btext == "+/-") {
      //do
    } else {
      result = result + Btext;
      fnialresult = result;
      setState(() {
        text = fnialresult;
      });
    }
  }

  Widget button(btext, Color btextcolor) {
    return Container(
      width: 90,
      height: 90,
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xff272b33)),
        ),
        onPressed: () {
          clacutor(btext);
        },
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Color(0xff22252d),
            width: double.infinity,
            height: 400,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 110),
                  alignment: Alignment.centerRight,
                  width: double.infinity,
                  child: Text(
                    "",
                    maxLines: 1,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(bottom: 135),
                  width: double.infinity,
                  child: Text(
                    text,
                    maxLines: 1,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 300),
            width: double.infinity,
            height: double.infinity,
            color: Color(0xff292d36),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button(
                      "AC",
                      Color(0xff26e1c0),
                    ),
                    button(
                      "+/-",
                      Color(0xff26e1c0),
                    ),
                    button(
                      "%",
                      Color(0xff26e1c0),
                    ),
                    button(
                      "/",
                      Color(0xffdc6162),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button("7", Color(0xfffafafa)),
                    button("8", Color(0xfffafafa)),
                    button("9", Color(0xfffafafa)),
                    button("X", Color(0xffec6666)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button(
                      "4",
                      Color(0xfffafafa),
                    ),
                    button(
                      "5",
                      Color(0xfffafafa),
                    ),
                    button(
                      "6",
                      Color(0xfffafafa),
                    ),
                    button(
                      "-",
                      Color(0xffec6666),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button(
                      "1",
                      Color(0xfffafafa),
                    ),
                    button(
                      "2",
                      Color(0xfffafafa),
                    ),
                    button(
                      "3",
                      Color(0xfffafafa),
                    ),
                    button(
                      "+",
                      Color(0xffec6666),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button(
                      "C",
                      Color(0xfffafafa),
                    ),
                    button(
                      "0",
                      Color(0xfffafafa),
                    ),
                    button(
                      ".",
                      Color(0xfffafafa),
                    ),
                    button(
                      "=",
                      Color(0xffec6666),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
