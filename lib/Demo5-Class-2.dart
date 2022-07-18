// 静态和Java一样
class Person {
  static String name = '';
  String tag = "class";
  int num = 6;

  static void fn() {}
  void fn1() {}
}

void main(List<String> args) {
  // 可以使用?（条件运算符）
  Person? p;
  p?.fn1();
  // 级联操作..
  p = Person();
  p
    ..tag = "new tag"
    ..num = 33
    ..fn1();
}
