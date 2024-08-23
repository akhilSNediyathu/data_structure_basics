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
    
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print('mew');
  }
  
  @override
  void makeBeep() {
    
  }
}

main() {
  Dog dog = Dog();
  dog.makeSound();
  Cat cat = Cat();
  cat.makeSound();
}
