//optional param
void greetop(String name, int age) {
  print("Hello, $name! You are $age years old.");
}

//named param
void greetnam({String? name, int? age, String? country}) {
  print("Hello, $name! You are $age years old from $country.");
}

//named param with def val
void greetdef(
    {String name = "Guest", int age = 25, String country = "Unknown"}) {
  print("Hello, $name! You are $age years old from $country.");
}

//named with req val
void greetreq(
    {required String name, int age = 25, String country = "Unknown"}) {
  print("Hello, $name! You are $age years old from $country.");
}

//optional possitional param
void greet(String name, [int? age]) {
  print("Hello, $name! You are ${age ?? 'unknown'} years old.");
}

class Rectangle {
  double width;
  double height;

  // Named constructor using initializer list
  Rectangle.square(double side)
      : width = side,
        height = side;
}

class Person {
  String? name;
  String? job;
  
  // Regular constructor
  Person(this.name, this.job);
   
  // Named constructor
  Person.doctor(name): this(name, 'Doctor');
}

// main() {
// //   String? name;
// //  print(name?.length);
// }
void main() {
  // Using the named constructor
  Person person = Person.doctor('Alice');
  print(person.name); // Output: Alice
  print(person.job);  // Output: Doctor
}