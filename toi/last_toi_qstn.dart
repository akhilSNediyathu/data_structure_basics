main() {
  List<int> test = [1, 3, 2, 4, 7, 5, 6];
  test.sort();
  for (var i = 0; i < test.length-1; i++) {
    if (test[i + 1] == test[i] + 1) {
      continue;
    }
    print(test[i] + 1);
    return;
  }
  print(test.last + 1);
  
}
