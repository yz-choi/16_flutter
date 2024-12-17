import 'package:chapter09_http_dio/models/01_api_model.dart';
import 'package:flutter/material.dart';

class ApiView extends StatefulWidget {
  const ApiView({super.key});

  @override
  State<ApiView> createState() => _ApiViewState();
}

class _ApiViewState extends State<ApiView> {
  final ApiModel apiModel = ApiModel();
  List<dynamic> _posts = []; // 받아올 게시글

  //게시글 목록 로드 ㅎㅐ서 initState 안에 넣어두면
  Future<void> _loadPost() async{
    try{
      List<dynamic> posts = await apiModel.fetchData2();
      setState(() {
        _posts = posts;
      });
    } catch(e){
      print("오류: $e");
      _showErrorDialog();
    }
  }

  void _showErrorDialog(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("오류"),
        content: Text("게시글 불러오기 실패"),
        actions: [
          TextButton(onPressed: (){Navigator.pop(context);}, child: Text("확인"))
        ],
      );
    });
  }
  
  // 게시글 삭제 함수
  void _deletePost(int postId){
    setState(() {
      _posts.remove((post){
        return post["id"] == postId;
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _loadPost();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(child: _posts.isEmpty ? CircularProgressIndicator()
            : ListView.builder(
              itemCount: _posts.length,
              itemBuilder: (context, i){
                return ListTile(
                  title: Text(_posts[i]["title"]),
                  subtitle: Text(_posts[i]["body"]),
                  trailing: IconButton(onPressed: (){_deletePost(_posts[i]["id"]);}, icon: Icon(Icons.delete)),
                );
              }))
        ],
      ),);
  }
}
