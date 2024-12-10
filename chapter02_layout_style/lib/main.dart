import 'package:chapter02_layout_style/style/bar_style.dart';
import 'package:chapter02_layout_style/style/button_style.dart';
import 'package:chapter02_layout_style/style/container_style.dart';
import 'package:chapter02_layout_style/style/text_style.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: //MyText(),
      //MyContainer(),
      //MyButton(),
      MyBar(),
    );
  }
}
