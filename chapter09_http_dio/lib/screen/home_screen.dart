import 'package:chapter09_http_dio/widgets/01_api_view_widget.dart';
import 'package:chapter09_http_dio/widgets/02_scroll_view_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child:
          Text("메인 페이지",
          style: TextStyle(fontSize: 30))
        ),
    Center(child:ApiView(),
    ),
    Center(child:ScrollViewWidget()),
    Center(child:
    Text("포스트 쓰기",
        style: TextStyle(fontSize: 30))
    )
  ];

  void _onTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API 요청 연습"),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: _onTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "main"
          ),
            BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: "postlist"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_alt),
                label: "scroll"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: "post"
            ),]
      ),
    );
  }
}
