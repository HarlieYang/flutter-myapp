main() {
  String str1 = "字符串一";
  String str2 = "字符串二";
  String str3 = str1 + str2;
  print('$str3');
  String str4 = '''
  多行
  字符串 ''';
  print('$str4');
  // 使用r前缀 可以使字符串里的特殊字符串做为普通字符串
  // \n 换行符
  String Str5 = '特殊字符串\n换行符';
  print(Str5);
}
