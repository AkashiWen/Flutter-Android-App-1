/// 对不特定数据类型的 数据校验
/// 1. 泛型方法
T getData<T>(T value) {
  return value;
}

/// 3. 抽象接口
abstract class Cache<T> {
  T? getValue();
  void setKey(String key, T value);
}

class FileCache<T> implements Cache<T> {
  String? key;
  T? value;

  @override
  T? getValue() {
    return value;
  }

  @override
  void setKey(String key, T value) {
    this.key = key;
    this.value = value;
  }
}

void main(List<String> args) {
  int data = getData(123);

  // 将类型传入T
  var data2 = getData<String>("aaa");

  // 2. 泛型类，List的泛型
  List list = <String>[];
  list.add("value");
}
