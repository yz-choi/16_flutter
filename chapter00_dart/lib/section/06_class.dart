void classTest()
{
  Human human = new Human("글린다", 21);
  print(human);

  Human2 hum = new Human2("석열쿤", 63);
  print(hum);
  print(hum._name);
}

class Human{
  String name;
  int age;

  //다트에서는 동일한 이름을 가진 생성자를 만들 수 없고 공식문서를 기준으로 매개변수를 받는 생성자를 권장
  Human(this.name, this.age); // 기본 생성자

  // 명명된 생성자
  // 초기화 리스트
  // 생성자가 실행되기 전에 클래스의 변수를 초기화 하는 방법. : 뒤에 변수 초기화를 나열함
  Human.empty()
    : name = "",
      age = 0;

  String doHello()
  {
    return "hi 나는 $name 입니다";
  }

  @override
  String toString(){
    return "Human {name: $name, age: $age }";
  }
}

class Human2{
  String _name;
  int _age;

  Human2(this._name, this._age);

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}

/*
  Dart 에서 private 접근 제어자는 클래스 수준이 아니라 라이브러리 수준에서 작동한다
  같은 파일 내에서는 언더스코어라도 자유롭게 접근 가능하며, 다른 파일일시에 접근이 불가능하다
* */