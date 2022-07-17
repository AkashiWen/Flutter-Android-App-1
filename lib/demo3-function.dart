// Dart的函数
void main(List<String> args) {
  // 调用可选参数方法
  printUser('Akashi');
  // 调用命名参数方法
  printUserInfo('Akashi', age: 20, sex: 'male');
  // 调用函数参数方法
  fun2(fun1);
  fun2(fun);
}

// 1. 可选参数 & 默认参数
void printUser(String username, [int? age, String sex = "male"]) {
  if (age != null) {
    print("name: $username --- age: $age");
  } else {
    print("age is null");
  }
}

// 2. 命名参数的方法ss
void printUserInfo(String name, {int age = 0, String sex = 'male'}) {
  print("name: $name, age: $age, sex: $sex");
}

// 3. 方法当做参数的方法
fun1() {
  print('fun1');
}

fun2(fun) {
  fun();
}

// 4. 匿名方法
var fun = () {
  print('I am nameless fun!');
};
