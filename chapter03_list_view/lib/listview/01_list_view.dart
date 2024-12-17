import 'package:flutter/material.dart';

/*
  ListView
  - Flutter에서 스크롤이 가능한 리스트를 생성하는 위젯
  - 여러 개의 아이템을 세로 또는 가로 방향으로 정렬해 나열할 때 사용되며, 화면에 표시할 수 있는 아이템이 많아질 경우 스크롤 기능 자동 제공
  - 데이터 목록을 표시하는 앱(채팅 목록, 게시글 등)에서 자주 사용
* */
class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text("민주주의"),
          Text("민주주의"),
          Text("민주주의"),
          Text("민주주의"),
          Text("민주주의"),
          Text("민주주의"),
          Text("민주주의"),
          Text("민주주의"),
          Text("민주주의"),
        ],
      )
    );
  }
}
