/*
* Dart에서는 배열 따로 제공 x
* list와 map을 제공하고 데이터의 추가 조회 수정 삭제 가능
* */

void collectionTest(){
  print("--------------list--------------");

  List<String> foods = ["스파게티", "피자"];

  //삭제
  foods.remove("크림새우");
  print(foods);
  print(foods.length);
  print(foods.first);


  print("--------------map--------------");

  // dynamic - 타입을 명시적으로 지정하지 않고 동적으로 결정 가능
  // 서로 다른 타입의 값도 할당할 수 있다.
  Map<String, dynamic> person = {"name": "홍길동", "age":50, "gender":"남"};
  print(person);
  print(person['name']);

  // 없는 값을 조회해도 에러가 나지 않는다
  print(person['test']);

  // 새로운 key를 넣어서 값을 추가할 수 있다
  person['hobby'] = ['축구', '농구'];
  print(person);

  // 수정 -> 기존에 존재하는 key value 값에 새로운 값을 넣는다.
  person["age"] = 41;
  print(person);

  // 삭제
  person.remove("hobby");
  print(person);
}