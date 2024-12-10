import 'package:flutter/material.dart';

class Mybar extends StatelessWidget {
  const Mybar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FIND DIGIMON",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            )),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.grey)),
          IconButton(onPressed: (){}, icon: Icon(Icons.chat, color: Colors.grey)),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings, color: Colors.grey))
        ],
      ),

      body: Column(
        children: [
          Container(height: 300,
            child: Row(
              children: [
                Container(
                  child: Image.asset('assets/terrior.jpg'),
                  margin: EdgeInsets.all(30)),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("테리어몬"),
                      Text("완전체"),
                      Text("서울시 구로구"),
                      Container(child: Row(
                        children: [
                          Icon(Icons.favorite),
                          Text("9")
                        ],
                      ),)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(height: 300,
            child: Row(
              children: [
                Container(
                    child: Image.asset('assets/terrior.jpg'),
                    margin: EdgeInsets.all(30)),
                Container(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("테리어몬"),
                      Text("완전체"),
                      Text("서울시 구로구"),
                      Container(child: Row(
                        children: [
                          Icon(Icons.favorite),
                          Text("9")
                        ],
                      ),)
                    ],
                  ),
                )
              ],
            ),

          )]
    ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){
              print('홈 화면');
                }, icon: Icon(Icons.home), color: Colors.white),
            IconButton(onPressed: (){print("서치 화면");}, icon: Icon(Icons.search), color: Colors.white),
            IconButton(onPressed: (){print("알림 화면");}, icon: Icon(Icons.notifications), color: Colors.white),
            IconButton(onPressed: (){print("내 계정");}, icon: Icon(Icons.account_circle), color: Colors.white)
          ],
        ),
      ),
    );
  }
}
