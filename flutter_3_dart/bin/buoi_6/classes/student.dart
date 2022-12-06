class Student{
  String _nameStudent;

  Student(this._nameStudent);

  // ignore: unnecessary_getters_setters
  String get nameStudent => _nameStudent;

  set nameStudent(String nameStudent) {
    _nameStudent = nameStudent;
  }

  
  @override
  String toString() {
    return nameStudent;
  }

}