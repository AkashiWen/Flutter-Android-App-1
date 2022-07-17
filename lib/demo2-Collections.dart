void main(List<String> args) {
  // 1. for 循环
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // 2. 集合List
  List list = ['apple', 'melon', 'banana'];
  print(list.length);
  print(list.isEmpty);
  print(list.reversed);
  print(list.reversed.toList());

  list.add('peach');
  list.addAll(['apple2', 'banana2']);
  print(list);
  list.removeRange(0, 1); //删除
  print(list);
  list.fillRange(0, 2, 'aaa'); // 修改
  print(list);

  String str = list.join('-'); // 按-切割成字符串
  print(str);
  List l = str.split('-'); // 按-组装成List
  print(l);

  list.forEach((element) {
    print(element);
  });

  // 3. 映射Map
  Map person = {
    'name': 'Akashi',
    'age': '30',
  };
  print(person);
  person.entries
      .forEach((element) => {print('${element.key} --> ${element.value}')});
}
