import 'dart:math';

import 'student.dart';

class ClassInfo {
  String _nameClass;
  int _slotMax;
  Set<Student> _listStudent = {};

  ClassInfo(this._nameClass, this._slotMax, this._listStudent);
  // kiểm tra số học sinh còn thiếu
  remainMembers() {
    return _slotMax - _listStudent.length;
  }

  //Thêm các học sinh vào 
  addMembersRandom() {
    while (_listStudent.length < _slotMax) {
      String randomStudentName = generateRandomString();
      Student student = Student(randomStudentName);
      final check = _listStudent.contains(student);
      if (check == false) {
        _listStudent.add(student);
      }
    }
  }

  //Khởi tạo 1 String từ A -> Z
  String generateRandomString() {
    final result = String.fromCharCodes(
        List.generate(1, (index) => Random().nextInt(25) + 65));
    return result;
  }

  // ignore: unnecessary_getters_setters
  String get nameClass => _nameClass;

  set nameClass(String nameClass) {
    _nameClass = nameClass;
  }

  // ignore: unnecessary_getters_setters
  int get slotMax => _slotMax;

  set slotMax(int slotMax) {
    _slotMax = slotMax;
  }

  // ignore: unnecessary_getters_setters
  Set<Student> get listStudent => _listStudent;

  set listStudent(Set<Student> listStudent) {
    _listStudent = listStudent;
  }
}

mixin BuildAndroid {
  String buildAndoid() {
    return "Build Android";
  }
}
mixin BuildIos {
  String buildIos() {
    return "Build Ios";
  }
}

mixin BuildWeb {
  String buildWeb() {
    return "Build Web";
  }
}

mixin BuildDestopApp {
  String buildDestopApp() {
    return "Build Destop App";
  }
}
