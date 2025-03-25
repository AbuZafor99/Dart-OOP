//=============================Basic Inheritance=============================
// Inheritance is a mechanism in which a new class is created (derived class) that inherits the properties of an existing class (base class).
// Dart supports single inheritance, which means a class can only inherit from a single class.
// The class that is inherited is called the parent class, and the class that inherits is called the child class.
// The child class can access all the fields and methods of the parent class.

// void main() {
//   Student student = Student();
//   student.name = "Zafor";
//   student.age = 25;
//   student.regNumber = "123456";
//   student.semester = "8th";
//   student.display();
//   student.displaySchoolInfo();
// }

// //==============Parent Class================
// class Person {
//   //------Fields-----
//   String? name;
//   int? age;
//   //------Method------
//   void display() {
//     print("Name: ${name},  AGe: ${age}");
//   }
// }

// //==============Child Class================

// class Student extends Person {
//   //------Fields-----
//   String? regNumber;
//   String? semester;

//   //------Method------
//   void displaySchoolInfo() {
//     print("Reg Number: ${regNumber}, Semester: ${semester}");
//   }
// }

//=====================Supper Keyword=============================
// The super keyword is used to refer to the immediate parent class of a class.
// The super keyword is used to call the constructor, methods, and properties of the parent class.
// The super keyword is used to call the constructor of the parent class.
//====================================Advanced Inheritance====================================

void main() {
  Car car = Car("Toyota", "Corolla", 2021, 2000000);
  car.display();
  print("Rental Price: ${car.calculateRentalPrice(5)}");
}

class Vehicle {
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void display() {
    print("Brand: ${brand}, Model: ${model}, Year: ${year}");
  }

  //==============Method to calculate rental price================
  double calculateRentalPrice(int days) {
    return days * 50.0;
  }
}

class Car extends Vehicle {
  double price;
  Car(String brand, String model, int year, this.price)
    : super(brand, model, year);

  //============method overriding==============
  @override
  double calculateRentalPrice(int days) {
    return super.calculateRentalPrice(days);
  }
}
