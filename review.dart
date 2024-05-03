void main() {
 
  // Creating a map
  Map<String, int> ages = {
    'John': 25,
    'Alice': 30,
    'Bob': 22,
  };
  
  // Adding a new key-value pair
  ages['Daisy'] = 27;
  
  // Checking if a key exists
  print('Contains key "John": ${ages.containsKey('John')}');
  
  // Getting the value for a key
  print('Age of Alice: ${ages['Alice']}');
  
  // Removing a key-value pair
  ages.remove('Bob');
  print('After removing Bob: $ages');
  
  // Updating a value for a key
  ages.update('Alice', (value) => value + 1);
  print('After updating Alice\'s age: $ages');
  
  // Iterating over key-value pairs
  ages.forEach((key, value) {
    print('$key is $value years old');
  });
  
  // Getting all keys
  print('Keys: ${ages.keys}');
  
  // Getting all values
  print('Values: ${ages.values}');
  
  // Checking if the map is empty
  print('Is map empty: ${ages.isEmpty}');
}
void greet(String name, [int? age]) {
  print("Hello, $name! You are ${age ?? 'unknown'} years old.");
}