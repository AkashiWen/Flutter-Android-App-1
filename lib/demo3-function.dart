// Dart的函数
void main(List<String> args) {
  // 调用可选参数方法
  printUser('Akashi');
  // 调用命名参数方法
  printUserInfo('Akashi', age: 20, sex: 'male');
  // 调用函数参数方法
  fun2(fun1);
  fun2(fun);
  // 调用list.map
  map();
  // 调用闭包返回的函数，2次
  var func = fn();
  func();
  func();
}

// 1. 可选参数 & 默认参数
void printUser(String username, [int? age, String sex = "male"]) {
  if (age != null) {
    print("name: $username --- age: $age");
  } else {
    print("age is null");
  }
}

// 2. 命名参数的方法
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

// 5. List常用函数
void map() {
  List l = [1, 2, 3, 4, 5];
  var list = l.map((e) => e > 2 ? e * 2 : e);
  print(list);
}

// 6. 闭包，让局部变量常驻内存
fn() {
  var a = 100;
  return () {
    a++;
    print(a);
  };
}

// 7. 定义一个异步方法
mockData() async {
  // 允许使用await等待请求完成
  await fn();
}
