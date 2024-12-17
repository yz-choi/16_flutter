import 'package:flutter/material.dart';
import '../models/menu_model.dart';

class MenuListWidget extends StatefulWidget {
  const MenuListWidget({super.key});

  @override
  State<MenuListWidget> createState() => _MenuListWidgetState();
}

class _MenuListWidgetState extends State<MenuListWidget> {

  final MenuModel _menuModel = MenuModel();
  List<dynamic> _menus = []; //ㅁㅔ뉴목록 담을 리스트
  dynamic _selectedMenu;//선택된 메뉴

  @override
  void initState() {
    super.initState();
    _loadMenus(); // 메뉴 목록 불러오기 먼저 해줫어요
  }

  // 메뉴 목록을 불러오는 함수
  void _loadMenus() async{
    List<dynamic> menuData = await _menuModel.searchMenu();
    setState(() {
      _menus = menuData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(child: _menus.isEmpty ? Center(child: Text("불러오는 중!"))
          : ListView.builder(
              itemCount: _menus.length,
              itemBuilder: (context, i){
                final menu = _menus[i];
                return ListTile(
                  title: Text(menu["menuName"]),
                  subtitle: Text("${menu["menuPrice"].toString()}원"),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MenuDetailPage(menuName: menu["menuName"], menuPrice: menu["menuPrice"].toString(), categoryCode: menu["categoryCode"], orderableStatus: menu["orderableStatus"])));
                  },
                );
              })
          )
        ],
      ));
  }
}

class MenuDetailPage extends StatelessWidget {
  final String menuName;
  final String menuPrice;
  final int categoryCode;
  final String orderableStatus;

  const MenuDetailPage({super.key, required this.menuName, required this.menuPrice, required this.categoryCode, required this.orderableStatus});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(menuName),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("메뉴 이름: $menuName", style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            Text("가격: $menuPrice원"),
            Text("카테고리 코드: ${categoryCode.toString()}"),
            Text("주문 가능 상태: $orderableStatus")
          ],
        )),
    );
  }
}
