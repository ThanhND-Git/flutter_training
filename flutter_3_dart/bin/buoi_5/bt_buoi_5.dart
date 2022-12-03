// 1 - Khai báo lớp Person với các thuộc tính: name(String), age(int), email(String?), các phương thức: showName(), showAge().
// 2 - Khai báo lơp Student kế thừa lớp person, thêm các thuộc tính: grade(int), className(String), mark(int). Phương thức showMarkPoint().
// 3 - Khai báo lớp Teacher kế thừa lớp person, thêm các thuộc tính: department(String), subject(String). Phương thức: teach().
// 4 - Tạo constructor cho các lớp ở trên.
// Note: Các phương thức chỉ cần khai báo, k cần viết nội dung thực thi bên trong
void main(List<String> args) {
  var person = Person('Thanh', 24, 'thanhvvt199@gmail.com');
  person.showName();
  person.showAge();
}

class Person {
  String name; 
  int age;
  String? email;
  Person(this.name, this.age, this.email);
  void showName(){
    print("Tên: $name");
  }
  void showAge(){
    print("Tuổi: $age");
  }
}
class Student extends Person{
  int grade;
  String className;
  int mart;
  Student(String name,int age,String? email, this.grade, this.className, this.mart): super(name, age, email);
  void showMarkPoint() {}
}

class Teacher extends Person {
  String department;
  String subject;
  Teacher(String name,int age,String? email, this.department, this.subject): super(name, age, email);
  void teach() {}
}