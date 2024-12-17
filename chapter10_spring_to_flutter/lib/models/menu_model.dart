import 'package:dio/dio.dart';

class MenuModel{

  //조회
  Future<List<dynamic>> searchMenu() async{
    final dio = Dio();
    try{
      final response = await dio.get("http://localhost:8080/menu/select");

      if(response.statusCode == 200){
        return response.data as List<dynamic>;
      }else{
        throw Exception("로드 실패");
      }
    }catch(e){
      print(e);
      throw Exception("Error $e");
    }
  }

  // 메뉴 수정
  Future<String> updateMenu(Map<String,dynamic> menuData) async{
    final dio = Dio();
    try{
      final response = await dio.post("http://localhost:8080/menu/update",
        data: menuData
      );

      if(response.statusCode == 200){
        return "수정이 성공적으로 수행됏음";
      }else{
        return "수정 실패햇슨";
      }
    }catch(e){
      throw Exception("Error $e");
    }
  }
  
  // 메뉴 등록
  Future<String> registerMenu(Map<String,dynamic> menuData) async{
    final dio = Dio();
    try{
      final response = await dio.post("http://localhost:8080/menu/insert",
        data: menuData);

      if(response.statusCode == 200){
        return "성공적으로 등록됏슨";
      }else{
        return "등록 못햇슨";
      }
    }catch(e){
      throw Exception("Error $e");
    }
  }

  //메뉴 삭제
  Future<String> deleteMenu(Map<String,int> menuData) async{
    final dio = Dio();
    try{
      final response = await dio.post("http://localhost:8080/menu/delete",
        data: menuData);
      if(response.statusCode == 200){
        return "삭제를 성공햇슨";
      }else{
        return "삭제못햇슨";
      }
    }catch(e){
      throw Exception("Error $e");
    }
  }
}
