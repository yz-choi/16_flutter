void nullSafetyTest(){
  /*
    Dart에서는 기본적으로 변수를 선언할 때 초기활르 하지 않으면 에러가 나도록 되어있다.
    null - aware 연산자를 통해 Null 처리를 고려할 수 있다.
  * */

  // 선언 시 초기화를 하지 않으면 에러 발생
  String? name; // 값을 나중에 넣을게요
  print(name);

  /*
    ??=
    null 병합 할당
    - null이 할당 되어있는 경우에만 값을 할당하는 연산자
    - 기본값을 설정하거나 초기값을 주는 데에 유용하다.
    - 사용자가 입력하지 않거나 값이 null인 경우에 자동으로 기본값을 할당할 수 있다.
  */

  String? value1;
  String value2 = "not null";

  value1 ??= "null 이어서 할당되긔";
  value2 ??= "null 아니어서 할당 안 되긔";
  print(value1);
  print(value2);

  // is, is! - 타입 확인
  int x = 10;
  if(x is int){
    print("x는 정수형입니다");
  }

  // 스프레드 연산자
  var numbers = [1, 2, 3];
  var moreNumbers = [...numbers, if(numbers.length<5) 4];
  print(moreNumbers);
}