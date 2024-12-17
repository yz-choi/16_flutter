import 'package:flutter/material.dart';
import 'package:movie_test_app/movieList.dart';
import 'package:movie_test_app/movieRegister.dart';
import 'package:movie_test_app/movieSearch.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MoviePage(),
    );
  }
}

class MoviePage extends StatefulWidget {
  MoviePage({super.key});
  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  int _selectedIndex = 0;
  List<Map<String, String>> movies = [];
  List<String> movieDesc = [];

  // 선택된 페이지를 반환하는 함수
  Widget _getPage(){
    switch (_selectedIndex){
      case 0:
        return MovieListPage(movies: movies, movieDesc: movieDesc,);
      case 1:
        return MovieRegisterPage(movies: movies, movieDesc: movieDesc);
      case 2:
        return MovieSearchPage(movies: movies);
      default:
        return Center(child: Text("페이지 없음"));
    }
  }

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("영화 관리 앱"),
      ),
      body: _getPage(),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
                label: "영화 목록",
                icon: Icon(Icons.list_outlined),
                activeIcon: Icon(Icons.list)),
            BottomNavigationBarItem(
                label: "영화 등록",
                icon: Icon(Icons.add_outlined),
                activeIcon: Icon(Icons.add)),
            BottomNavigationBarItem(
                label: "영화 검색",
                icon: Icon(Icons.search),
                activeIcon: Icon(Icons.search_outlined)),
          ]),
    );
  }
}
