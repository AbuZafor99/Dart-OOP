class Person {
  String? _name;
  String? _fName;
  int? _age;

  Person(this._name, this._fName, this._age);
  //====================Setter===========
  // void setName(String name) {
  //   _name = name;
  // }
  // void setFName(String fName) {
  //   _fName = fName;
  // }
  // void setAge(int age) {
  //   _age = age;
  // }
  //====================Constructor===========
  // void updatePerson(String name, String fName, int age) {
  //   setName(name);
  //   setFName(fName);
  //   setAge(age);
  // }
  //====================Getter===========
  String getName() {
    return _name!;
  }

  String getFName() {
    return _fName!;
  }

  int getAge() {
    return _age!;
  }

  void display() {
    print("Name: ${_name}, Father Name: ${_fName}, AGe: ${_age}");
  }
}
