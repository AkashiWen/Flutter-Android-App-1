// dart没有interface，使用abstract同时表示抽象类，和接口
abstract class Animal {
  void eat(); // 抽象方法
}

class Dog extends Animal {
  @override
  eat() {
    print("eat meat");
  }
}

class Cat extends Animal {
  @override
  eat() {
    print("eat fish");
  }
}

void main(List<String> args) {
  Animal dog = Dog();
  Animal cat = Cat();
  dog.eat();
  cat.eat();
}
