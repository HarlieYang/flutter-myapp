main() {
  var clapping = '\u{00A6}';
  print(clapping);
  var a = new Runes(clapping);
  print(new String.fromCharCodes(a));
  Runes input = new Runes(
      '\u{1f44f}  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print('\u{1f44f}');
  print(new String.fromCharCodes(input));
  var symbol1 = new Symbol('00');
  print(symbol1);
  print(#symbol1);
}
