removeSpace1(String string) {
  String res = '';
  for (var i = 0; i < string.length; i++) {
    if (string[i] == ' ') {
      if (string[i] == string[i + 1]) {
        continue;
      }
    }
    res += string[i];
  }
  return res;
}

removeSpace(String string) {
  return string.split(' ').where((word) => word.isNotEmpty).join(' ');
}

main() {
  print(removeSpace1("Hello   World!   hi"));
  print(removeSpace("Hello   World!   hi"));
}
