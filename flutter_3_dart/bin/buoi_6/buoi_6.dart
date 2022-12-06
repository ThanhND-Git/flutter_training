void main(List<String> args) {
  Shape s = Rectangle(2, 4);
  s.tinhCV();
  s.tinhDT();
}
class Shape {
  double? chuvi;
  double? dientich;
  Shape(this.chuvi, this.dientich);
  void tinhCV() {
    print("Chu vi: $chuvi");
  }
  void tinhDT() {
    print("Diện tích: $dientich");
  }
}
class Rectangle extends Shape{
  double a;
  double b;
  Rectangle( this.a, this.b):super(a,b);
  @override
  void tinhCV() {
    chuvi = (a+b)*2;
    super.tinhCV();
  }
  @override
  void tinhDT() {
    dientich = a*b ;
    super.tinhDT();
  }
}