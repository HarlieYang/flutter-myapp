main() {
  // Set 字面量
  var set1 = {'01', '02'};
  print('set1:$set1');
  // Set 类型
  Set set2 = {'03', '04'};
  print('set2:$set2');
  // 指定类型
  var set3 = <String>{'05'};
  Set<String> set4 = {'06'};
  print('set3$set3');
  print('set4$set4');
  set4.add('07');
  set4.addAll(set1);
  print('set4$set4');
  print('set4' + set4.length.toString());
}
