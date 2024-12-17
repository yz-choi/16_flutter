import 'package:chapter08_theme_data/text_test.dart';
import 'package:flutter/material.dart';
import 'style.dart' as style;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: style.theme,
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        children: [
          Icon(Icons.star),
          TextTest()],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [IconButton(onPressed: (){}, icon: Icon(Icons.add))],
        ),
      ),
    );
  }
}

