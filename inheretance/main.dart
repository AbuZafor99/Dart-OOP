//=============================Basic Inheritance=============================
// Inheritance is a mechanism in which a new class is created (derived class) that inherits the properties of an existing class (base class).
// Dart supports single inheritance, which means a class can only inherit from a single class.
// The class that is inherited is called the parent class, and the class that inherits is called the child class.
// The child class can access all the fields and methods of the parent class.
void main() {
  Student student = Student();
  student.name = "Zafor";
  student.age = 25;
  student.regNumber = "123456";
  student.semester = "8th";
  student.display();
  student.displaySchoolInfo();
}

//==============Parent Class================
class Person {
  //------Fields-----
  String? name;
  int? age;
  //------Method------
  void display() {
    print("Name: ${name},  AGe: ${age}");
  }
}

//==============Child Class================

class Student extends Person {
  //------Fields-----
  String? regNumber;
  String? semester;

  //------Method------
  void displaySchoolInfo() {
    print("Reg Number: ${regNumber}, Semester: ${semester}");
  }
}


//====================================Advanced Inheritance====================================

