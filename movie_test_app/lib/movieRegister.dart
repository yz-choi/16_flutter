import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_test_app/movieList.dart';

class MovieRegisterPage extends StatefulWidget {
  MovieRegisterPage({Key? key, required this.movies, required this.movieDesc}) : super(key:key);

  final List<Map<String,String>> movies;
  final List<String> movieDesc;

  @override
  State<MovieRegisterPage> createState() => _MovieRegisterPageState();
}

class _MovieRegisterPageState extends State<MovieRegisterPage> {

  final TextEditingController titleTextController = TextEditingController();
  final TextEditingController directerTextController = TextEditingController();
  final TextEditingController descTextController = TextEditingController();

  void _addMovie(String inputTitle, String inputDirecter, String inputDesc){
    widget.movies.add({"title":inputTitle, "directer":inputDirecter});
    widget.movieDesc.add(inputDesc);
    print(widget.movies.toString() + "등록햇어요");
  }


  @override
  void dispose() {
    titleTextController.dispose();
    directerTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: titleTextController,
              decoration: InputDecoration(
                  labelText: "영화 제목",
                  contentPadding: EdgeInsets.all(5)),
            ),
            TextField(
              controller: directerTextController,
              decoration: InputDecoration(
                  labelText: "감독 이름",
                  contentPadding: EdgeInsets.all(5)),
            ),
            TextField(
              controller: descTextController,
              decoration: InputDecoration(
                labelText: "영화 설명",
                  contentPadding: EdgeInsets.all(5)),
              ),
            Padding(padding: EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Text("영화 등록"),
                      content: Text("${titleTextController.text} 영화를 등록하시겠습니까?"),
                      actions: [
                        ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("취소")),
                        ElevatedButton(onPressed: (){
                          _addMovie(titleTextController.text, directerTextController.text, descTextController.text);
                          titleTextController.clear();
                          directerTextController.clear();
                          descTextController.clear();
                          Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Scaffold(
                            body: MovieListPage(movies: widget.movies, movieDesc: widget.movieDesc),
                          )));
                          },
                            child: Text("등록")),
                      ],
                    );
                  });
                }, child: Text("영화 등록")),)
          ],
        )),
    );
  }
}

