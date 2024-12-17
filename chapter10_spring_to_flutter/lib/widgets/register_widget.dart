import 'package:chapter10_spring_to_flutter/models/menu_model.dart';
import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  TextEditingController _menuNameController = TextEditingController();
  TextEditingController _menuPriceController = TextEditingController();
  TextEditingController _categoryController = TextEditingController();
  TextEditingController _orderableController = TextEditingController();

  final MenuModel _menuModel = MenuModel();
  List<dynamic> _menus = []; //ㅁㅔ뉴목록 담을 리스트
  dynamic _selectedMenu;

  // 메뉴 목록을 불러오는 함수
  void _loadMenus() async{
    List<dynamic> menuData = await _menuModel.searchMenu();
    setState(() {
      _menus = menuData;
    });
  }

  void _onMenuRegister(dynamic menu){
    setState(() {
      _menuNameController.text = menu["menuName"];
      _menuPriceController.text = menu["menuPrice"].toString();
      _categoryController.text = menu["categoryCode"].toString();
      _orderableController.text = menu["orderableStatus"];
    });
  }

  // 메뉴 등록 함수
  void _registerMenu() async{
    Map<String,dynamic> menuData = {
      "menuName" : _menuNameController.text,
      "menuPrice" : int.parse(_menuPriceController.text),
      "categoryCode" : int.parse(_categoryController.text),
      "orderableStatus" : _orderableController.text,
    };
    try{
      String result = await _menuModel.registerMenu(menuData);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(result)),
      );
      Navigator.pushReplacementNamed(context, "/home");
    }catch(e){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error $e"))
      );
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _menuNameController,
            decoration: InputDecoration(labelText: "메뉴 이름"),),
          TextField(
            controller: _menuPriceController,
            decoration: InputDecoration(labelText: "메뉴 가격"),),
          TextField(
            controller: _categoryController,
            decoration: InputDecoration(labelText: "카테고리 코드"),),
          TextField(
            controller: _orderableController,
            decoration: InputDecoration(labelText: "판매 여부"),),
          SizedBox(height: 20),
          ElevatedButton(onPressed: _registerMenu, child: Text("메뉴 등록하기"))
        ],
      ),);
  }
}
