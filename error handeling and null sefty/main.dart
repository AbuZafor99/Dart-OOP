main() {
  area area1 = area();
  area1.length = 10;
  area1.width = 20;
  area1.calculateArea();
}

class area {
  double? length;
  double? width;
  void calculateArea() {
    try {
      double area = length! * width!;
      print("Area: $area");
    } catch (e) {
      print("Error: $e");
    }
  }
}
