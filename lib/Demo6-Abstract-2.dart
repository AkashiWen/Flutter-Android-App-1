/**
 * 定义一个DB库，支持mysql，mongodb等
 */
abstract class Db {
  String? uri;

  // 当做接口
  add();
  save();
  delete();
}

class MySql implements Db {
  MySql(this.uri);

  @override
  add() {}

  @override
  delete() {}

  @override
  save() {}

  @override
  String? uri;
}

class MongoDb implements Db {
  MongoDb(this.uri);

  @override
  String? uri;

  @override
  add() {}

  @override
  delete() {}

  @override
  save() {}
}

void main(List<String> args) {
  Db mysql = MySql('uri://xxx.xxx.xxx:8080');
  Db mongodb = MongoDb('uri://xxx.xx.xxx:2333');
}
