// - Có 4 lớp học: Flutter, Android, ios, web
// - Có 6 học viên: A, B, C, D, E, F
// - Có 4 tính năng build: build android, build ios, build web, build desktop app.

import 'classes/student.dart';
import 'classes/android.dart';
import 'classes/flutter.dart';
import 'classes/ios.dart';
import 'classes/web.dart';

void main(List<String> arguments) {
  //Tạo các học sinh
  Student a = Student("A");
  Student b = Student("B");
  Student c = Student("C");
  Student d = Student("D");
  Student e = Student("E");
  Student f = Student("F");

  //Tạo danh sách sinh viên đang có từng lớp
  Set<Student> listStudentFlutter = {a, b};
  Set<Student> listStudentAndroid = {b, c, d};
  Set<Student> listStudentIOS = {d, e, f};
  Set<Student> listStudentWeb = {f};

  //Tạo các lớp học với tên, sĩ số, danh sách học sinh, tính năng
  Flutter flutter = Flutter("Flutter", 11, listStudentFlutter);
  print("Tên lớp: ${flutter.nameClass}");
  print("Số lượng học viên: ${flutter.slotMax}");
  print("Học viên hiện tại: ${flutter.listStudent}");
  print(
      "Tính năng build: ${flutter.buildAndoid()}, ${flutter.buildIos()}, ${flutter.buildWeb()}, ${flutter.buildDestopApp()}");
  print("\n");

  Android android = Android("Android", 12, listStudentAndroid);
  print("Tên lớp: ${android.nameClass}");
  print("Số lượng học viên: ${android.slotMax}");
  print("Học viên hiện tại: ${android.listStudent}");
  print("Tính năng build: ${android.buildAndoid()}");
  print("\n");

  IOS ios = IOS("IOS", 13, listStudentIOS);
  print("Tên lớp: ${ios.nameClass}");
  print("Số lượng học viên: ${ios.slotMax}");
  print("Học viên hiện tại: ${ios.listStudent}");
  print("Tính năng build: ${ios.buildIos()}");
  print("\n");

  Web web = Web("Web", 14, listStudentWeb);
  print("Tên lớp: ${web.nameClass}");
  print("Số lượng học viên: ${web.slotMax}");
  print("Học viên hiện tại: ${web.listStudent}");
  print("Tính năng Ios: ${web.buildWeb()}");
  print("\n");

  //Hàm remainMembers(): kiểm tra số học sinh còn thiếu
  print("Số học sinh còn thiếu của lớp Flutter: ${flutter.remainMembers()}");
  print("Số học sinh còn thiếu của lớp Ios: ${ios.remainMembers()}");
  print("Số học sinh còn thiếu của lớp Android: ${android.remainMembers()}");
  print("Số học sinh còn thiếu của lớp Web: ${web.remainMembers()}\n");

  //Thêm các học sinh còn thiếu
  flutter.addMembersRandom();
  android.addMembersRandom();
  ios.addMembersRandom();
  web.addMembersRandom();

  //Danh sách các lớp khi đã thêm đầy đủ học viên
  print(
      "Danh sách lớp học Flutter khi đầy đủ học viên: ${flutter.listStudent.toString()}");
  print(
      "Danh sách lớp học Android khi đầy đủ thêm học viên: ${android.listStudent.toString()}");
  print(
      "Danh sách lớp học IOS khi đầy đủ học viên: ${ios.listStudent.toString()}");
  print(
      "Danh sách lớp học Web khi đầy đủ thêm học viên: ${web.listStudent.toString()}");
}
