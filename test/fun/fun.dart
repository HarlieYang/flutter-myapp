// 参数分为必要参数和可选参数
// 必要参数定义在参数列表的前面，可选参数定义在必要参数的后面，可选参数添加@required来标识参数是必须的参数
// 可选参数 两种表现方式 {} 和 []
//  {} 可选的命名参数
import 'package:flutter/material.dart';

bool params01(int name, {int num, String sex = "女", @required int age}) {
  print('params01------------');
  print('num:$num');
  print('sex:$sex');
  print('age:$age');

  return num % 2 == 0 ? true : false;
}

//  [] 可选的位置参数
bool params02(String name, [int num, String sex, int age = 25]) {
  print('params02------------');
  print('name:$name');
  print('num:$num');
  print('sex:$sex');
  print('age:$age');

  return num % 2 == 0 ? true : false;
}
// 默认参数 用 =

void datas(int ele) {
  print(ele);
}

foo() {} // A top-level function

class A {
  static void bar() {} // A static method
  void baz() {} // An instance method
}

test() {}

// 每个 Dart 程序都必须有一个 main() 顶级函数作为程序的入口，main() 函数返回值为 void 并且有一个 List<String> 类型的可选参数。
main() {
  // params01(1, num: 4, age: 18);
  // params02('huihui', 5, '女', 18);
  // var list = [1, 2, 3, 4];
  // list.forEach(datas);
  // list.forEach((item) => print(item));
  var x;
  // 比较顶层函数是否相等。
  x = foo;
  print(x == foo); // true

  // 比较静态方法是否相等。
  x = A.bar;
  print(A.bar == x); // true

  // 比较实例方法是否相等。
  var v = A(); // A 的实例 #1
  var w = A(); // A 的实例 #2
  var y = w;
  x = w.baz;
  // 这两个闭包引用了相同的实例对象，因此它们相等。
  print(y.baz == x); // true
  // 这两个闭包引用了不同的实例对象，因此它们不相等。
  print(v.baz == w.baz); // false
  print(test());
}
// @required ???
