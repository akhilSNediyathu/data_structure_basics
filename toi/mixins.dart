mixin Names {
  printNames() {
    print('iam akhil');
  }
}
mixin Age {
  printAge() {
    print('iam 20');
  }
}

class Test with Names, Age {
  String name;

  Test(this.name);
}

main() {
  Test test = Test('Akhil');
  test.printNames();
  test.printAge();
}
