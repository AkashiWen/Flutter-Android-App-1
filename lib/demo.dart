void main(List<String> args) {
  // 1. String
  // 1.1 推荐带上类型声明String
  var str = 'hello dart';
  String str2 = '!!';
  print('$str, $str2');

  // 1.2 可以使用三个单引号，开启多行模式ss
  String multiLines = '''line1
  line2
  line3
  ''';
  print(multiLines);

  // 2. int
  int a = 123;
  // a = 12.3;// 不可以是浮点
  double b = 23.5;
  b = 23; // 可以是整型
  print('$a, $b');

  // 3. 集合List
  var l1 = ['aa', 'bb', 'cc'];
  print(l1);
  List<int> l2 = [];
  l2.add(11);
  print('${l2[0]} found!');

  // 4. 字典Map
  // 4.1
  var person = {"name": "Akashi", "age": 20};
  print(person);
  print(person['name']);
  // 4.2
  Map map = {};
  map["name"] = "Akashi";

  // 5. 类型判断 is
  var typeString = '1234';
  if (typeString is int) {
    print("is int");
  } else {
    print("other type");
  }

  // 6. 赋值运算符
  int bb = 12;
  bb ??= 23;
  print(bb);

  // 7. 三目运算符
  bool flag = true;
  String ss = flag ? 'true !' : 'false !';
  print(ss);
  print(ss.isEmpty);

  var nan = 0 / 0;
  print(nan.isNaN);
}
