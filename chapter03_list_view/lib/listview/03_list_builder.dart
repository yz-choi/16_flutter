import 'package:flutter/material.dart';

class ListApp3 extends StatelessWidget {
  const ListApp3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("헌법")),
      ),
      
      body: ListViewWidget(),
      
      floatingActionButton: FloatingActionButton(onPressed: (){},
        child: Icon(Icons.question_answer,
                    color: Colors.white
        ),
        backgroundColor: Colors.blue,
      ),
      
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home),
            Icon(Icons.search),
            Icon(Icons.details),
            Icon(Icons.settings)
          ],
        ),
      ),
    );
  }
}

/*
  ListView.builder() 위젯 안에 2가지 속성을 지정
  * itemCount: 리스트 갯수
  * itemBuilder: (){return 반복할 위젯}
  * i라는 변수는 자동 생성
* */

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, i){ // builder 쓸 때 context 써줘야 함 약간 족보 같은 느낌
          print(i);
          return ListTile(
            leading: Image.asset("assets/8809945331840.png"),
            title: Text("바부"),
            subtitle: Text("냐스퍼"),
            trailing: Icon(Icons.delete),
            onTap: (){},
          );
        });
  }
}
