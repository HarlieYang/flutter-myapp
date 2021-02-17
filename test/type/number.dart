main() {
  int a = -1;
  print('a$a');
  double b = 12;
  print('b:$b'); // dart sdk 2.1 之前的版本会报错 b:12.0
  double c = 1.2;
  print('c$c');
  num d = 1; // num 是 number类型的简写 来作为关键字 ； int、double是num的字类型
  num e = 1.1;
  print('num d $d');
  print('num e $e');
  // num + - * /
  // abs()
  // ceil() 大于或等于表达式的最小整数,只要带小数就往前进一位
  // floor 舍掉小数位,不管多大
  // round() 四舍五入
  num f = 1.6;
  print('绝对值:' + f.abs().toString());
  print('大于或等于表达式的最小整数:' + f.ceil().toString());
  print('直接舍掉小数位:' + f.floor().toString());
  print('四舍五入:' + f.round().toString());
  print(double.parse('1.1'));
}
