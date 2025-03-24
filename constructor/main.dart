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
  //   Student student1 = Student("Zafor", "A+", 25, 123456);
  //   student1.display();
  //   student1.updateGrade("A++");
  // }

  List<Student> students = [
    Student("Zafor", "A+", 25, 123456),
    Student("sadiq", "A+", 25, 123456),
    Student("zihad", "A+", 25, 123456),
  ];
  students.forEach((student) {
    student.display();
  });
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

  // Student(name, grade, age, studentId) {
  //   this.name = name;
  //   this.grade = grade;
  //   this.age = age;
  //   this.studentId = studentId;
  // }
  Student(this.name, this.grade, this.age, this.studentId);

  void updateGrade(String newGrade) {
    grade = newGrade;
    print("Grade Updated: ${grade} for ${name}");
  }
}
