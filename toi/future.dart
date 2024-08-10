Future<int> fun() {
  return Future.delayed(
      Duration(microseconds: 2), () =>2);
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
