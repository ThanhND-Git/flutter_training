
void main(List<String> args) {
  String prt1 = 'Practise 1: ';
  print(prt1);
  practise1();
  String prt2 = '\nPractise 2: ';
  print(prt2);
  practise2();
}
//Practise 1
void practise1(){
  
  String str = 'đây là kết quả buổi học thứ 2 về dart: dart basic (phần 1)...';
  print(str);

  String str1 =
      "${str.substring(0, 1).toUpperCase()}${str.substring(1, 3)}";
  print(str1);

  int strIndexof = str.indexOf("d");
  print(strIndexof);

  String str2 = str.substring(3, 33);
  print(str2);

  String str3 = "${str.substring(33, 34).toUpperCase()}${str.substring(34,37)}";
  print(str3);

  String str4 = str.substring(37, 50).toUpperCase();
  print(str4);
  
  String str5 = str.substring(50, 58);
  print(str5);

  String strfinal = str1 + str2 + str3 + str4 + str5;
  print('"$strfinal"');
}
//Practise 2
void practise2(){
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
  // Lấy data từ array trên và tạo ra 1 String với giá trị sau:
  // Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)
  String s1 =
      '${arr[3].substring(0, 1).toUpperCase()}${arr[3].substring(1, 3)}';
  print(s1); // Đây

  String s2 = arr[5].substring(0, 2);
  print(s2); // là

  String s3 = arr[4].substring(0, 3);
  print(s3); // kết

  List str9 = arr.sublist(9,10); // kết quả ra mảng ['thứ', 'quả', 'về']
  print(str9);

  String s4 = str9.toString().substring(7,10);
  print(s4); // quả

  String str8 = arr.sublist(8,9).toString(); // kết quả ra mảng {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"}
  print(str8);

  String s5 = str8.substring(8,12);
  print(s5); // buổi

  String s6 = str8.substring(17,20);
  print(s6); // học

  String s7 = str9.toString().substring(2,5);
  print(s7); // thứ

  String s8 = arr[1].toString(); //2

  String s9 = str9.toString().substring(12,14);
  print(s9); // về

  String str10 = arr.sublist(11,12).toString();// kết quả ra mảng {"flutter": "dart"}
  print(str10);

  String s10 = '${str10.substring(11, 12).toUpperCase()}${str10.substring(12, 15)}';
  print(s10); // Dart

  String s11 = str10.substring(9,10);
  print(s11); // :

  int strIndexof = str8.indexOf("d");
  print(strIndexof);

  String s12 = str8.toString().substring(38,48).toUpperCase();
  print(s12);

  
  String s13 = arr[10];
  print(s13); 

  String strFinal = '$s1 $s2 $s3 $s4 $s5 $s6 $s7 $s8 $s9 $s10 $s11 $s12 $s13 ';
  print('"$strFinal"');
}
