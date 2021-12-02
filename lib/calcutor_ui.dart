import 'dart:ui';
import 'package:flutter/material.dart';
class calcutor_ui_home extends StatefulWidget {
  const calcutor_ui_home({Key? key}) : super(key: key);

  @override
  _calcutor_ui_homeState createState() => _calcutor_ui_homeState();
}

class _calcutor_ui_homeState extends State<calcutor_ui_home> {
   String opr = "";
  String peropr = "";
  double num1 = 0;
  double num2 = 0;
  String result = '';
  String fnialresult = "";
  String text = '';

  ////////////
  String sum() {
    result = (num1 + num2).toString();
    return result;
  }

  String sub() {
    result = (num1 - num2).toString();
    return result;
  }

  String mul() {
    result = (num1 * num2).toString();
    return result;
  }

  String div() {
    result = (num1 / num2).toString();
    return result;
  }

///////////////////////////////////////////////////////////////////////////////////
  void clacutor(String Btext) {
    if (Btext == "C" || Btext == "AC") {
      setState(() {
        num1 = 0;
        num2 = 0;
        result = "";
        fnialresult = "";
        text = '';
      });
    } else if (opr == '=' && Btext == '=') {
      switch (peropr) {
        case '+':
          fnialresult = sum();
          break;
        case '-':
          fnialresult = sub();

          break;
        case 'X':
          fnialresult = mul();

          break;
        case '/':
          fnialresult = div();

          break;
      }
    } else if (Btext == '+' ||
        Btext == '-' ||
        Btext == '/' ||
        Btext == 'X' ||
        Btext == '=') {
      if (num1 == 0) {
        num1 = double.parse(result);
      } else {
        num2 = double.parse(result);
      }

      switch (opr) {
        case '+':
          fnialresult = sum();
          break;
        case '-':
          fnialresult = sub();
          break;
        case 'X':
          fnialresult = mul();
          break;
        case '/':
          fnialresult = div();
          break;
      }
      peropr = opr;
      opr = Btext;
      setState(() {
        result = '';
      });
    } else {
      result = result + Btext;
      fnialresult = result;
      setState(() {
        //fnialresult = result;
        text = fnialresult;
      });
    }
    setState(() {
      //fnialresult = result;
      text = fnialresult;
    });
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
    // TODO: implement build
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
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(top: 135),
                  width: double.infinity,
                  child: Text(
                    text,
                    textAlign: TextAlign.right,
                    maxLines: 2,
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
                    button(
                      "7",
                      Color(0xfffafafa),
                    ),
                    button(
                      "8",
                      Color(0xfffafafa),
                    ),
                    button(
                      "9",
                      Color(0xfffafafa),
                    ),
                    button(
                      "X",
                      Color(0xffec6666),
                    ),
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
