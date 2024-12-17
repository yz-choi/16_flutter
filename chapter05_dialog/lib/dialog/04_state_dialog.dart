import 'package:flutter/material.dart';

class DialogTest5 extends StatefulWidget {
  const DialogTest5({super.key});

  @override
  State<DialogTest5> createState() => _DialogTest5State();
}

class _DialogTest5State extends State<DialogTest5> {
  var inputData = TextEditingController(); // textfield값 변경 될 때마다 인식
  String name = "null";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(name!="null")
            Text(name, style: TextStyle(fontSize: 25)),
          SizedBox(height: 20),
          ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (context){
              return AlertDialog(
                title: Text("이름 입력"),
                content: TextField(
                  controller: inputData,
                  decoration: InputDecoration(hintText: "이름을 입력하세요"),
                ),
                actions: [
                  TextButton(onPressed: (){Navigator.pop(context);}, child: Text("취소")),
                  TextButton(onPressed: (){
                    setState(() {
                      name = inputData.text.isNotEmpty ? inputData.text : name;
                    });
                    Navigator.pop(context);}, child: Text("확인"))
                ],
              );
            });
          }, child: Text("등록", style: TextStyle(fontSize: 20)))
        ],
      ),
    );
  }
}

