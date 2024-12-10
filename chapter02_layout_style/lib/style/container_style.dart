import 'package:flutter/material.dart';

// class MyContainer extends StatelessWidget {
//   const MyContainer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Center(
//           child: Text("ㅇ우이잉"),
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//             border: Border.all(color: Colors.black)),
//         margin: EdgeInsets.all(30),
//         padding: EdgeInsets.fromLTRB(10,20, 30, 40),
//         child: Text("컨테이너 테스트"),
//         //요소사이즈만큼 컨테이너생김
//       ),
//     );
//   }
class MyContainer extends StatelessWidget {
  const MyContainer ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("LayOut-test"),
        ),
      ),
         body:
    //Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               decoration: BoxDecoration(border: Border.all(color: Colors.black)),
//               margin: EdgeInsets.all(30),
//               padding: EdgeInsets.all(30),
//               child: Text("컨테이너 1번"),
//             ),
//           Container(
//           decoration: BoxDecoration(border: Border.all(color: Colors.black)),
//           margin: EdgeInsets.all(30),
//           padding: EdgeInsets.all(30),
//           child: Text("컨테이너 2번"),
//           ),
//          ],
//         ),
    Align(
      alignment: Alignment.bottomCenter,
      child: Container(width: 50, height: 50, color: Colors.blue),
      )
    );
  }
}
