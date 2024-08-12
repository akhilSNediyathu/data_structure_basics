Stream<int> numberStream(int maxNum) async* {
  for (int i = 1; i <= maxNum; i++) {
    await Future.delayed(Duration(seconds: 1), () {
      print('hi');
    });
    yield i;
  }
}

void main() {
  Stream<int> stream = numberStream(10);
  stream.listen(
    (number) {
      print(number);
    },
    onDone: () => print('finished'),
    onError: (error) => print('error: $error'),
  );
}
