import 'package:flutter/material.dart';

class DialogTest4 extends StatelessWidget {
  const DialogTest4({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: (){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text("텍스트 입력"),
            content: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "내용",
                hintText: "내용 입력하라",
                helperText: "한동훈가발거치대"
              ),
            ),
            actions: [
              TextButton(onPressed: (){Navigator.pop(context);}, child: Text("취소")),
              TextButton(onPressed: (){Navigator.pop(context);}, child: Text("확인"))
            ],
          );
        });
      }, child: Text("버튼", style: TextStyle(fontSize: 20))),
    );
  }
}
