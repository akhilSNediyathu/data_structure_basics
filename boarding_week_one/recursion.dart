int factorial(int number) {
  if (number <= 1) {
    return 1;
  } else {
    return number * factorial(number - 1);
  }
}

int fibunaci(int n) {
  if (n <= 1) {
    return n;
  } else {
    return fibunaci(n - 1) + fibunaci(n - 2);
  }
}

String reverseString(String name) {
  if (name.length <= 1) {
    return name;
  } else {
    return reverseString(name.substring(1)) + name[0];
  }
}

int addList(List num) {
  if (num.isEmpty) {
    return 0;
  } else {
    return num.first + addList(num.sublist(1));
  }
}

oddPrinting(List n) {
  if (n.isEmpty) {
    return;
  }
  if (n.first % 2 == 1  ) {
    print(n.first);
  }
  oddPrinting(n.sublist(1));
}

main() {
  print(factorial(5));
  int n = 5;
  for (var i = 0; i < n; i++) {
    print(fibunaci(i));
  }
  print(reverseString('akhil'));
  List num = [1, 2, 3, 4, 5];
  print(addList(num));
  oddPrinting(num);
}
