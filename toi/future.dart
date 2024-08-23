Future<int> fun() {
  return Future.delayed(
      Duration(microseconds: 2), () =>throw Exception('unknown'));
}

void main() {
  fun().then((value) {
    print(value);
  }).catchError((error) {
    print(error);
  }).whenComplete(() {
      print('completed');
  });
}
