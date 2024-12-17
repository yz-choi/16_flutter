import 'package:chapter09_http_dio/screen/home_screen.dart';
import 'package:flutter/material.dart';

/*
  Http
  - HTTP 요청을 보내기 위해 사용하는 패키지
  - 서버와 통신할 때 GET, POST, PUT, DELETE 등 HTTP 메소드를 사용하여 데이터를 주고 받을 수 있게 해준다

  http 패키지를 사용하는 이유
  1. 네트워크 요청 관리 - 서버와 클라이언트 간 통신을 간편하게 처리 가능
  2. 비동기 작업 지원 - 비동기적으로 요청을 처리하여 UI가 멈추지 않게 함
  3. RestFul API 와의 통합을 쉽게 처리 가능


  DIO
  - 실제로 많이 사용하는 http 통신
  - http 요청을 처리하기 위한 강력하고 유연한 라이브러리
  - http 패키지와 비슷한 역할을 하지만 더 맣ㄴ은 기능과 편의성 제공
  - json 데이터를 dart 객체로 자동 전환하거나 dart 객체를 json으로 자동 변환 가능
  - 인증 토큰 추가, 공통 헤더 설정 등에 유용하고 멀티파트 파일 업로드와 파일 다운로드를 간단하게 처리 가능

*/

/*
  무한 스크롤?
  - 보통 페이지네이션을 사용하여 데이터를 한번에 모두 불러오는 것이 아니라 페이지 번호를 증가시키면서 필요한 데이터를 서버에서 받아오는 방식으로 처리
  - db에 정렬된 걸 페이지네이션을 적용해 증가시키며 받아오는 식
* */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}


