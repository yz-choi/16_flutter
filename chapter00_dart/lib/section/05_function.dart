
void functionTest(){
  test1("용산 돼지");
  print(add(1, 3));
  print(add2(6, 2, 3));
  print(add2(6, 2));
}

void test1(String name){
  print("앞서서 나가니 산 자여 따르라");
  print("${name} 체포하라");
}

String add(int a, int b)
{
  return "sum: ${a+b}";
}

String add2(int a, int b, [int c = 10]){
  int sum = a+b+c;

  return "sum2 = ${sum}";
}