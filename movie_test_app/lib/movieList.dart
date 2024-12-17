import 'package:flutter/material.dart';

class MovieListPage extends StatefulWidget {
  MovieListPage({Key? key, required this.movies, required this.movieDesc}) : super(key:key);

  final List<Map<String,String>> movies;
  final List<String> movieDesc;

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {

  @override
  Widget build(BuildContext context) {
    return widget.movies.isNotEmpty
      ? ListView.builder(
        itemCount: widget.movies.length,
        itemBuilder: (context, i){
          final movie = widget.movies[i];
          return ListTile(
            title: Text(movie["title"] ?? "이름 없음"),
            subtitle: Text(movie["directer"] ?? "이름 없음"),
            trailing: IconButton(onPressed: (){
              setState(() {
                widget.movies.remove(widget.movies[i]);
                widget.movieDesc.remove(widget.movieDesc[i]);
              });
            }, icon: Icon(Icons.delete, color: Colors.red)),
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>
                      DetailPage(
                          title: movie["title"] ??= "이름없긔",
                          directer: movie["directer"]!,
                          description: widget.movieDesc[i]))
              );}
          );
        })
      : Center(child: Text("등록된 영화가 없습니다."),);
  }
}

class DetailPage extends StatelessWidget {
  final String title;
  final String directer;
  final String description;

  const DetailPage({
    super.key,
    required this.title,
    required this.directer,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("제목: $title"),
            Text("감독: $directer"),
            Text("설명: $description")
          ],
        )),
    );
  }
}

