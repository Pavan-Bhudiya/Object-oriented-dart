import 'dart:io';

// Interface
abstract class Animal {
  void speak();
}

// Parent class
class Mammal {
  void eat() {
    print('Mammal is eating');
  }
}

// Child class implementing interface and extending parent class
class Dog extends Mammal implements Animal {
  String name;
  
  Dog(this.name);
  
  @override
  void speak() {
    print('$name barks');
  }
}

void main() {
  // Initialize instance with data from file
  var dogData = File('dog_data.txt').readAsStringSync().trim();
  var dog = Dog(dogData);
  
  // Call overridden method
  dog.eat();
  
  // Call method demonstrating loop
  for (int i = 0; i < 3; i++) {
    dog.speak();
  }
}
