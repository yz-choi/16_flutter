import 'package:flutter/material.dart';

class MovieSearchPage extends StatefulWidget {
  MovieSearchPage({Key? key, required this.movies}) : super(key:key);
  List<Map<String, String>> movies;

  @override
  State<MovieSearchPage> createState() => _MovieSearchPageState();
}

class _MovieSearchPageState extends State<MovieSearchPage> {

  List<Map<String,String>> _searchResults = [];
  final TextEditingController queryController = TextEditingController();

  void _onSearch(String query){
    setState(() {
      _searchResults = widget.movies
          .where((movie)=>(movie["title"] ?? "")
          .contains(query)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                      controller: queryController,
                      decoration: InputDecoration(labelText: "영화 검색")),
                  Padding(padding: EdgeInsets.all(20),
                    child: ElevatedButton(onPressed: (){_onSearch(queryController.text);}, child: Text("검색")),)
                  ]
            )),
            Container(
                padding: EdgeInsets.all(20),
                child: _searchResults.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true, // 리스트 자식 높이 크기의 합 만큼 영역 고정
                    physics:
                    const NeverScrollableScrollPhysics(), //
                  itemCount: _searchResults.length,
                  itemBuilder: (context, i){
                    final movie = _searchResults[i];
                    return ListTile(
                      title: Text(movie["title"] ?? "이름 없음"),
                      subtitle: Text(movie["directer"]!),
                    );
                  })
                : Center(child: Text("검색 결과가 없습니당"))
          )],
        )),
    );
  }
}
