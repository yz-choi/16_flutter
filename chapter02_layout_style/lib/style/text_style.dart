import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("ㅇ우이잉"),
        ),
      ),
      body: Center(
          child: Text("텍스트 스타일 적용",style: TextStyle(color: Colors.pink,
              fontSize: 30),
          )
        /*color
        * Colors.red - 미리 정해진 색상표에서 고르는법
        * Color.fromRGBO - rgbo로 고르는 방법
        * Color(Oxffffffff) - Hexadecimal 색상 값으로 고르는 법
        *
        * backgroundColor : 배경색
        * fontSize
        * fontWeight
        * fontFamily
        * 등등 필요한 속성 찾아 쓰면 된다.*/
      ),
    );
  }
}
