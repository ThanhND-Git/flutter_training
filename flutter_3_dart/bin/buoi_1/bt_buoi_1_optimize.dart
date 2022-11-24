// Tối ưu code bài tập 1
void main(List<String> args) {
  String prt1 = 'Practise 1: ';
  print(prt1);
  practise1();
  String prt2 = '\nPractise 2: ';
  print(prt2);
  practise2();
}

void practise1() {
  String str = 'đây là kết quả buổi học thứ 2 về dart: dart basic (phần 1)...';
  print(str);

  String str1 = "${str.substring(0, 1).toUpperCase()}${str.substring(1, 3)}";
  print(str1); // Đây

  int strIndexof = str.indexOf("d");
  print(strIndexof); // 33

  String str2 = str.substring(3, 33);
  print(str2);

  String str3 =
      "${str.substring(33, 34).toUpperCase()}${str.substring(34, 37)}";
  print(str3); // Dart

  String str4 = str.substring(37, 50).toUpperCase();
  print(str4);

  String str5 = str.substring(50, 58);
  print(str5);

  String strfinal = str1 + str2 + str3 + str4 + str5;
  print('"$strfinal"');
}

void practise2() {
  List arr = [
    1,
    2,
    3,
    "đây",
    "kết",
    "là",
    true,
    false,
    {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"},
    ['thứ', 'quả', 'về'],
    "(phần 1)",
    {"flutter": "dart"},
  ];

  /// Lấy data từ array trên và tạo ra 1 String với giá trị sau:
  /// Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)

  String s1 =
      "${arr[3].toString().substring(0, 1).toUpperCase()}${arr[3].toString().substring(1, 3)}"; //Đây
  String s2 = arr[5].toString(); // là
  String s3 = arr[4].toString(); // kết
  String s4 = arr[9][1]; // quả
  String s5 = arr[8][true]; // buổi
  String s6 = arr[8][1]; // học
  String s7 = arr[9][0]; // thứ
  String s8 = arr[1].toString(); //2
  String s9 = arr[9][2]; // về
  String s10 = arr[11]["flutter"].substring(0, 1).toUpperCase() +
      arr[11]["flutter"].substring(1, 4); //Dart
  String s11 = arr[8][10.2]; // :
  String s12 = arr[8][false].substring(0,10).toUpperCase(); // DART BASIC
  String s13 = arr[10]; // (phần 1)
  print('"$s1 $s2 $s3 $s4 $s5 $s6 $s7 $s8 $s9 $s10$s11 $s12 $s13"');
}
