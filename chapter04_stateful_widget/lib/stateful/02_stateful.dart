import 'package:flutter/material.dart';

/*
  StatefulWidget
  - Flutter에서 상태를 가진 위젯을 만들 때 사용하는 클래스
  - Flutter 위젯은 기본적으로 불변이지만, StatefulWidget을 사용하면 동적인 상태를 가진 위젯을 만들 수 있다. 위젯은 사용자 상호작용, 데이터 변화 등으로 인해 상태가 변경될 수 있고 변경될 때마다 UI가 다시 빌드된다
* */
class StatefulTest extends StatefulWidget {
  const StatefulTest({super.key});

  @override
  State<StatefulTest> createState() => _StatefulTestState();
}
// 캡슐화 원칙을 지켜 해당 함수를 보호할 수 있다
class _StatefulTestState extends State<StatefulTest> {
  @override
  
  var a = 1;
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Text(a.toString()),
        onPressed: () {
          setState(() {
            a++;
          });
        });
  }
}
