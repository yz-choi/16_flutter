import 'package:chapter04_stateful_widget/stateful/01_problem.dart';
import 'package:chapter04_stateful_widget/stateful/02_stateful.dart';
import 'package:chapter04_stateful_widget/stateful/03_question.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Stateful Widget",),
        ),
      ),
      floatingActionButton:
      //문제점 확인
      StatelessTest(),
      body:
        QuestionApp(),
    );
  }
}

/*
  state를 변경시켜서 렌더링을 하려면 setState를 알아야 함
  Flutter에서 setState()가 호출되면 부분 렌더링 발생 =>
  즉, 전체 앱이나 전체 화면이 다시 렌더링 되는 것이 아니라 상태가 변경된 특정 위젯만 다시 그려짐
  
  리액트는 돔 트리와 가상 돔 트리를 이용해 부분 렌더링을 하지만, 플러터는 위젯 트리에서
  특정 상태를 관리하는 부분의 build 메소드만 다시 실행해 부분 렌더링 함
*/

