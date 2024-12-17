import 'package:chapter10_spring_to_flutter/screen/main_screen.dart';
import 'package:chapter10_spring_to_flutter/widgets/delete_widget.dart';
import 'package:chapter10_spring_to_flutter/widgets/list_widget.dart';
import 'package:chapter10_spring_to_flutter/widgets/register_widget.dart';
import 'package:chapter10_spring_to_flutter/widgets/update_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    MainScreen(),
    MenuListWidget(),
    RegisterWidget(),
    MenuUpdateWidget(),
    MenuDeleteWidget()
  ];

  // 탭 선택 시 호출 함수
  void _onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Restaurant"),
          backgroundColor: Colors.black),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onTapped,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "메뉴조회"),
            BottomNavigationBarItem(icon: Icon(Icons.app_registration), label: "메뉴등록"),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: "메뉴수정"),
            BottomNavigationBarItem(icon: Icon(Icons.delete), label: "메뉴삭제"),
          ]),
    );
  }
}
