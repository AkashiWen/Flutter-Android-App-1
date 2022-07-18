// 类
class Demo4 {
  String name = "demo4";
  int num = 123;
  final int _age = 30; // _表示私有属性，但类必须在单独文件中，被其他模块import

  // 默认构造函数简写
  Demo4(this.name, this.num);

  // 命名构造函数
  Demo4.namedFn() {
    printThis("我是命名构造");
  }

  void printThis([String extra = ""]) {
    print("$name, $num, $_age,  $extra");
  }

  void _printPrivate() {
    print("i am private func");
  }

  // getter & setter
  get numGetter {
    return num * 2;
  }

  set numSetter(int num) {
    this.num = num;
  }
}

void main(List<String> args) {
  var demo = Demo4('new name', 222);
  demo.printThis(); // new name,  222
  Demo4.namedFn(); // demo4, 123, 我是命名构造
  demo.numSetter = 12; // setter: 12
  print(demo.numGetter); // getter : 12 * 2
}
