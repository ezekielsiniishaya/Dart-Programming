// Encapsulation
class BankAccount {
  // Private variable (encapsulated data)
  double _balance;

  // Constructor
  BankAccount(this._balance);

  // Getter for balance (controlled access)
  double getBalance() {
    return _balance;
  }

  // Method to deposit money (encapsulation of logic)
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Deposited \$${amount}. New balance: \$${_balance}');
    } else {
      print('Deposit amount must be greater than 0.');
    }
  }

  // Method to withdraw money (controlled access)
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print('Withdrew \$${amount}. Remaining balance: \$${_balance}');
    } else {
      print('Invalid amount or insufficient funds.');
    }
  }
}

// Inheritance 
class Vehicle {
  String brand;

  Vehicle(this.brand);

  void start() {
    print('$brand vehicle is starting.');
  }
}

class Car extends Vehicle {
  String model;

  Car(String brand, this.model) : super(brand);

  void showDetails() {
    print('This car is a $brand $model.');
  }
}

// Polymorphism Example
class Animal {
  void sound() {
    print('Animal makes a sound.');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Dog barks.');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Cat meows.');
  }
}

// Abstraction Example
abstract class Shape {
  double area();  // Abstract method
  double perimeter();  // Abstract method
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  double perimeter() {
    return 2 * 3.14 * radius;
  }
}

class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }

  @override
  double perimeter() {
    return 2 * (width + height);
  }
}

class Motor extends Vehicle {
  String type;

  Motor(String brand, this.type) : super(brand);

  void showDetails() {
    print('This car is a $type $brand');
  }
}

void main() {
  // Encapsulation example
  var account = BankAccount(100.0);
  account.deposit(50.0);   // Deposited $50. New balance: $150
  account.withdraw(20.0);  // Withdrew $20. Remaining balance: $130
  account.withdraw(30);
  // Inheritance example
  var myCar = Car('Toyota', 'Corolla');
  myCar.start();         // Output: Toyota vehicle is starting.
  myCar.showDetails();    // Output: This car is a Toyota Corolla.
  var myMotor = Motor('Camero', 'Traditional');
  myMotor.start();
  myMotor.showDetails();
  // Polymorphism example
  Animal myDog = Dog();
  Animal myCat = Cat();

  myDog.sound();  // Output: Dog barks.
  myCat.sound();  // Output: Cat meows.

  // Abstraction example
  Shape circle = Circle(5.0);
  print('Circle Area: ${circle.area()}');         // Output: Circle Area: 78.5
  print('Circle Perimeter: ${circle.perimeter()}'); // Output: Circle Perimeter: 31.4

  Shape rectangle = Rectangle(4.0, 6.0);
  print('Rectangle Area: ${rectangle.area()}');      // Output: Rectangle Area: 24.0
  print('Rectangle Perimeter: ${rectangle.perimeter()}'); // Output: Rectangle Perimeter: 20.0
}
