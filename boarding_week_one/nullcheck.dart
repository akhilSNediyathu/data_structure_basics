// class Address {
//   String city;
//   Address(this.city);
// }

// class Person {
//   String name;
//   Address? address;
//   Person(this.name, this.address);
// }

// void main() {
//   Person person = Person('Bob', null); // person has no address

//   // Using ?. to safely access a property on a potentially null object
//   String? city = person.address?.city; // This will be null because address is null
//   print(city); // Output: null

//   person = Person('Alice', Address('Wonderland'));
//   city = person.address?.city; // This will be 'Wonderland'
//   print(city); // Output: Wonderland
// }
class Person {
  String name;
  Person(this.name);
  void greet() {
    print('Hello, $name');
  }
}

void main() {
  Person? person = null; // person is null

  // Using ?. to safely call a method on a potentially null object
  person?.greet(); // This will do nothing because person is null

  person = Person('Alice'); // Now person is not null
  person.greet(); // This will print 'Hello, Alice'
  List a = [1, 2, 3, 4, 5];
  for (var element in a) {
    print(element);
  }
  
}
