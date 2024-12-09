/*
  변수
    변수명은 일반적으로 카멜 케이스를 따른다.

  타입 변수명 = 초기화 값;

  var / 자료형 둘다 존재
  var - 변수의 타입을 명시하지 않고 선언. 할당되는 값에 따라 타입 결정. 타입이 고정되기 때문에 해당 변수에 다른 타입의 값을 할당할 수 없다.

  하지만 Dart는 강타입 언어이다. 타입에 대한 규칙이 엄격하다.
  따라서 다른 타입 자료형들도 제공하고 있다.
  - int 정수, double 실수, num(int, double을 둘 다 담을 수 있는 부모클래스), bool, String
* */

void variableTest()
{
  var hello = "앞서서 나가니 산 자여 따르라";
  print(hello);

  // 논리형
  bool wrong = false;
  print(wrong);

  // 정수, 실수
  int num1 = 5;
  int num2 = 12;

   // 문자열 내에서의
  // 변수 사용
  String name1 = "길동";
  String name2 = "관순";
  print("하이욤" + name1);


}
