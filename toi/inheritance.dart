class Things {
  String name;
  Things(this.name);
  show() {
    print(name);
  }
}

class Plastic extends Things {
  Plastic(super.name);
  showeat() {
    print('$name is eating');
  }
}

main() {
  var p = Plastic('Plastic');
  p.show();
  p.showeat();
}
