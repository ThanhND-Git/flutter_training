import 'dart:math';

void main(List<String> args) {
  // Practise 3
  myInfo();

  print('Giai thừa của 6 là: ${factorial(6)}');

  print('Chuyển đổi từ int sang double: ${getDoubleFromInt(24)}');
  print('Chuyển đổi từ string sang double: ${getDoubleFromString('24.5')}');

  print('Chuyển đổi từ double sang int: ${getIntFromDouble(24.0)}');
  print('Chuyển đổi từ string sang int: ${getIntFromString('24')}');

  print('Chuyển đổi từ double sang string: ${getStringFromDouble(24.5)}');
  print('Chuyển đổi từ int sang string: ${getStringFromInt(24)}');

  // Practise 4
  int a = 10;
  print("add method: ${a.add(2)}"); // add method: 12
  print("subtract method: ${a.subtract(2)}"); // subtract method: 8
  print("divide method: ${a.divide(2)}"); // divide method: 5
  print("multiple method: ${a.multiple(2)}"); // multiple method: 20

  // Practise 5
  practice5(101);

  // Practise 6
  primeNumber(20);
}

/* Practice 3 
1. Khai báo toàn bộ các kiểu dữ liệu: Non-Nullable Types và Nullable Types, dynamic, var.
2. Có sử dụng các từ khoá static, final, late const.
*/
void myInfo() {
  final String name = 'Vũ Văn Thanh';
  int age = 24;
  String gender = 'Male';
  const dateOfbirth = 1999;
  var height = 172;
  double weight = 70.5;
  String? hobby;
  dynamic marriageStatus = 'Chưa kết hôn';
  late String addInfo = 'Đang tham gia khoá học Flutter 3 tại Techmaster.';

  print('''
    Tên:       $name
    Tuổi:      $age
    Giới tính: $gender
    Năm sinh:  $dateOfbirth
    Chiều cao: $height
    Cân nặng:  $weight
    Sở thích:  $hobby
    Kết hôn:   $marriageStatus
    Bổ sung:   $addInfo 
  ''');
}

// 3. Viết 1 hàm tính giai thừa của 6.
int factorial(int n) {
  int total = 1;
  for (int i = 1; i <= n; i++) {
    total *= i;
  }
  return total;
}

// 4. Viết các hàm chuyển đổi qua lại giữa string, int, double.

int getIntFromString(String input) => int.parse(input); // string => int
int getIntFromDouble(double input) => input.toInt(); // double => int

double getDoubleFromString(String input) => double.parse(input); // string => double
double getDoubleFromInt(int input) => input.toDouble(); // int => double

String getStringFromInt(int input) => input.toString(); // int => string
String getStringFromDouble(double input) => input.toString(); // double => string

/* Practice 4 
Viết 1 chương trình:
Mở rộng thêm các phương thức từ number:
Thêm các phương thức add(), subtract, divide, multiple tương ứng với 4 phép tính: cộng, trừ, nhân, chia
4 phương thức này đều báo lỗi nếu truyền vào số <= 0
*/

extension NumberExtension on num {
  
  void throwErrorIfLessThanZero() {
    if (this <= 0) {
      throw Exception('Lỗi: Số truyền vào phải lớn hơn 0');
    }
  }

  num add(num a) {
    throwErrorIfLessThanZero();
    return this + a;
  }

  num subtract(num a) {
    throwErrorIfLessThanZero();
    return this - a;
  }

  num divide(num a) {
    throwErrorIfLessThanZero();
    return this / a;
  }

  num multiple(num a) {
    throwErrorIfLessThanZero();
    return this * a;
  }
}
/* Practice 5 
Viết 1 chương trình:
1. Đầu vào là 1 mảng số tự nhiên từ 0 -> 100
2. Liệt kê ra toàn bộ các số lẻ
3. Liệt kê ra toàn bộ số chẵn
4. Kiểm tra xem 0 là số chẵn hay số lẻ
*/

void practice5(int n) {
  var listN = [for(var i=0; i<n; i+=1) i];
  List evenNumbers = [];
  List oldNumbers = [];
  for (var i in listN) {
    if (i % 2 == 0) {
      evenNumbers.add(i);
    } else {
      oldNumbers.add(i);
    }
  }
  print('''
    Các số chẵn: $evenNumbers
    Các số lẻ: $oldNumbers
    0 là số ${0 % 2 == 0 ? 'chẵn' : 'lẻ'}
''');
}

/* Practice 6 
Viết 1 chương trình:
In ra màn hình toàn bộ số nguyên tố của 1 số n cho trước.
 */

void primeNumber(int n) {
  List primeNumber = [];
  for (int i = 2; i <= n; i++) {
    bool isPrime = true;
    for (int j = 2; j <= sqrt(i); j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      primeNumber.add(i);
    }
  }
  print(primeNumber); //2,3,5,11,13,...
}