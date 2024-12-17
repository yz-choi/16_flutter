/*
  Dialog
    사용자가 화면에 표시된 정보를 확인하거나 액션을 선택할 수 있도록 제공하는 팝업 창
    모바일 앱에서 많이 사용되는 요소 중 하나로 주로 경고메세지, 정보 알림, 확인 및 취소 등 간단한 상호작용 창 제공
    플러터는 다양한 유형의 다이얼로그 제공
*/

import 'package:chapter05_dialog/dialog/01_dialog_test.dart';
import 'package:chapter05_dialog/dialog/02_alert_dialog.dart';
import 'package:chapter05_dialog/dialog/03_text_dialog.dart';
import 'package:chapter05_dialog/dialog/04_state_dialog.dart';
import 'package:chapter05_dialog/dialog/05_test_dialog.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyDialog(),
    );
  }
}

class MyDialog extends StatelessWidget {
  const MyDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Todo 리스트"))),
      body:
        //DialogTest(),
        //DialogTest3(),
        //DialogTest4(),
        //DialogTest5(),
        ScheduleList(),
    );
  }
}
