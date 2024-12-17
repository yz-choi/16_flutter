import 'package:flutter/material.dart';

var theme = ThemeData(
  iconTheme: IconThemeData(color: Colors.white, size: 40),
  appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
  bottomAppBarTheme: BottomAppBarTheme(color: Colors.blue)
);

/*
  통일성 있는 UI 디자인을 원한다면 ThemeData를 활용하면 됨
  전역적으로 기본 테마를 꾸며 놓고 필요한 부분은 부분마다 커스텀하며 개발하면 생산성이 좋다
*/