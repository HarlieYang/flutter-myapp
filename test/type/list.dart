main() {
  // List集合 分为两种
  // Array 数组 1. 里面的值可以重复 2. 里面的值可以是多种类型
  List list1 = [1, 1, 2, 3];
  List list2 = ['str', 1, true];
  print('$list1$list2');
  // 对象的有序组
  List list3 = [
    new Vector(1.1, 1.2),
    new Vector(2.1, 2.2),
    new Vector(3.1, 3.2)
  ];
  // add() 添加对象
  list3.add(Vector(4.1, 4.1)); //在dart2.0之后创建对象是可以省去前面的关键字new
  print('list3$list3');
  // addAll() 添加list集合到当现有集合
  List list4 = [Vector(5.1, 5.1), Vector(6.1, 6.1)];
  list4.addAll(list3);
  print('list4$list4');
  // .length 返回集合的长度,返回的值的类型是整型
  print(list4.length);
  // List的下标从0开始
  var value = list4[0].toString();
  print('list4的第一个元素$value');
}

class Vector {
  double x;
  double y;
  Vector(x, y) {
    this.x = x;
    this.y = y;
  }
  toString() {
    return 'x:$x;y$y';
  }
}
