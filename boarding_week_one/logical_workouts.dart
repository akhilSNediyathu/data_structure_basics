void main() {
  String a = "this is for    test   purpose";
  String res = a.split(' ').where((word) => word.isNotEmpty).join(' ');
  print(res);
}
