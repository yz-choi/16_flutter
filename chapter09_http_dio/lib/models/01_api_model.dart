import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiModel {
  
  //get 요청을 보내서 게시글 목록 가져오기
  Future<List<dynamic>> fetchData() async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if(response.statusCode == 200){
      return json.decode(response.body);
    }
    else{
      throw Exception("get 요청 실패");
    }
  }

  // dio
  Future<List<dynamic>> fetchData2() async{
    final dio = Dio();

    try{
      final response = await dio.get("https://jsonplaceholder.typicode.com/posts");
      if(response.statusCode == 200){
        return response.data as List<dynamic>;
      }else{
        throw Exception("200 아님");
      }
    }
    catch(e){
      throw Exception("에러발생: $e");
    }

    // final formData = FormData.fromMap({
    //   "file": await MultipartFile.fromFile(filePath, filename: "예시이미지.jpg"),
    //   "description" : "샘플 파일이긔"
    // });
    // final response = await dio.post(
    //   "백엔드 경로",
    //   data: formData,
    // );

  }

  Future<List<dynamic>> fetchData3(int page) async{
    final dio = Dio();

    try{
      final response = await dio.get("https://jsonplaceholder.typicode.com/posts");
      if(response.statusCode == 200){
        return response.data as List<dynamic>;
      }else{
        throw Exception("200 아님");
      }
    }
    catch(e){
      throw Exception("에러발생: $e");
    }

  }
}