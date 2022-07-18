///mixins: 混入；
///可以实现类似多继承的功能
///
///1. 不是继承，不是接口，是一个全新特性
///2. 被mixins的类，不能有构造函数
///3. 被mixins的类，只能继承自Object
class A {
  void printA() {}
}

class B {
  void printB() {}
}

class Person {
  String? name;
  int age;

  Person(this.name, this.age);
}

// 无法多继承
// class C extends A, B {
// }

class C extends Person with A, B {
  C(super.name, super.age);
}

void main(List<String> args) {
  C c = C("Akashi", 12);
  c.printA();
  c.printB();
}
