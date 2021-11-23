import 'package:flutter/material.dart';
import 'package:saramegy_calcutor/calcutor_ui.dart';

main(List<String> args) {
  runApp(calcutor_main());
}

class calcutor_main extends StatefulWidget {
  const calcutor_main({Key? key}) : super(key: key);

  @override
  _calcutor_mainState createState() => _calcutor_mainState();
}

class _calcutor_mainState extends State<calcutor_main> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: calcutor_ui_home(),
    );
  }
}
