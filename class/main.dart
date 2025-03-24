// main() {
//   Person person1 = Person();
//   person1.display();
// }

// class Person {
//   String name = "Zafor";
//   String fName = "Amirul Islam";
//   int age = 25;

//   void display() {
//     print("Name: ${name}, Father Name: ${fName}, AGe: ${age}");
//   }
// }

main() {
  Student student1 = Student();
  student1.name = "Zafor";
  student1.grade = "A+";
  student1.age = 25;
  student1.studentId = 123456;
  student1.display();
  student1.updateGrade("A++");
}

class Student {
  String? name;
  String? grade;
  int? age;
  int? studentId;

  void display() {
    print(
      "Name: ${name}, Grade: ${grade}, Age: ${age}, Student ID: ${studentId}",
    );
  }

  void updateGrade(String newGrade) {
    grade = newGrade;
    print("Grade Updated: ${grade} for ${name}");
  }
}
