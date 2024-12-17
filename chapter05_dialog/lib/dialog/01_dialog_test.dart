import 'package:flutter/material.dart';

/*
  showDialog() 플러터가 제공하는 기본 함수로 context를 넣어줘야 함

  플러터에는 특별한 함수들이 몇 개 존재하는데 Navigator(), Theme.of(), showDialog() 등은 context를 넣어줘야 정상 작동
* */
class DialogTest extends StatelessWidget {
  const DialogTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          onPressed: (){
            showDialog(context: context, builder: (context){
              return Dialog(
                child: Container(width: 150, height: 100, child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("내란수괴"), Text("탄핵하라")])),
              );
            });
          },
          child: Text("버튼", style: TextStyle(fontSize: 20))
      ),
    );
  }
}
