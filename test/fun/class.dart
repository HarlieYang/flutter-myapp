class Params {
  static String a = '11';
  String b = '222';
  static get() {
    print('get----a$a');
  }

  set() {
    print('set----a$a');
    print('set----b$b');
  }
}

main() {
  var c = new Params();
  Params.get();
  c.set();
}
