import 'package:flutter/material.dart';

class MyBar extends StatelessWidget {
  const MyBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "어플 만들기",
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.amber)),
          IconButton(onPressed: (){}, icon: Icon(Icons.message_outlined, color: Colors.black))
        ],
      ),
      body: Column(
        children: [
          Expanded(child: Container(
            color: Colors.white,
          )),
          Container(height: 100,
            child: Row(
              children: [
                Flexible(child: Container(color: Colors.yellow,), flex: 1,),
                Flexible(child: Container(color: Colors.grey), flex: 1,),
                Flexible(child: Container(color: Colors.pink,), flex: 1,)
              ],
            ),
          )
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search), color: Colors.white),
            IconButton(onPressed: (){}, icon: Icon(Icons.message), color: Colors.white),
            IconButton(onPressed: (){}, icon: Icon(Icons.search), color: Colors.white)
          ],
        ),
      ),
    );
  }
}
