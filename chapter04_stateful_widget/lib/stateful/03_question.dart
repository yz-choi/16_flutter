import 'package:flutter/material.dart';

class QuestionApp extends StatefulWidget {
  const QuestionApp({super.key});

  @override
  State<QuestionApp> createState() => _QuestionAppState();
}

class _QuestionAppState extends State<QuestionApp> {

  final List<String> items = ["피자", "치킨", "함부기"];
  final List<int> num = [1, 1, 1];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, i){
        return ListTile(
          leading: Text("${num[i]}"),
          title: Text("${items[i]}"),
          trailing: ElevatedButton(onPressed: (){
            setState(() {
              num[i]++;
            });
          }, child: Text("조아요"))
        );
      },
    );
  }
}


