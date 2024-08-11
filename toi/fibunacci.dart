fibunacciRec(int num) {
  if (num <= 1) {
    return num;
  } else {
    return fibunacciRec(num - 1) + fibunacciRec(num - 2);
  }
}

fibunacci(int num) {
  if (num <= 1) {
    return num;
  }
  int a = 0;
  int b = 1;
  for (var i = 2; i <= num; i++) {
    int c = a + b;
    a = b;
    b = c;
  }
  return b;
}

main() {
  int num = 10;
  for (var i = 0; i < num; i++) {
    print(fibunacciRec(i));
  }
}
