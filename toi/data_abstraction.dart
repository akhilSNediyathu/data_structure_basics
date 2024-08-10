abstract class Animal {
  void makeSound();
  void makeBeep();
}

class Dog implements Animal {
  @override
  void makeSound() {
    print('Bark');
  }
  
  @override
  void makeBeep() {
    // TODO: implement makeBeep
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print('mew');
  }
  
  @override
  void makeBeep() {
    // TODO: implement makeBeep
  }
}

main() {
  Dog dog = Dog();
  dog.makeSound();
  Cat cat = Cat();
  cat.makeSound();
}
