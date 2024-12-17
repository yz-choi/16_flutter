import 'package:flutter/material.dart';

class TextTest extends StatefulWidget {
  const TextTest({super.key});

  @override
  State<TextTest> createState() => _TextTestState();
}

class _TextTestState extends State<TextTest> {
  var textStyle = TextStyle(color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Text("ㅇㅅㅇ 파면하라", style: textStyle);
  }
}
