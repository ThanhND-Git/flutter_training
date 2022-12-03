void main(List<String> args) {
  practise1();
  practise2();
}

void practise1() {
  final distances = [1, 3, 10, 4, 2, 6, 7, 8, 4, 2, 1];
  int sum = 0;
  var min = distances[0];
  var max = distances[0];
  int? strIndexofMin ;
  int? strIndexofMax ;
  for (var i = 0; i < distances.length; i++) {
    if (distances[i] > max) {
      max = distances[i];
      strIndexofMax = distances.indexOf(max);
    }
    if (distances[i] < min) {
      min = distances[i];
    } else if (distances[i] == min) {
      strIndexofMin = distances.indexOf(min);
    }
    sum  += distances[i];
  }
  print("Giá trị nhỏ nhất là: $min");
  print("vị trí đầu tiên của min là: $strIndexofMin");
  print("Giá trị lớn nhất là: $max");
  print("vị trí đầu tiên của max là: $strIndexofMax");
  print("Tổng là $sum");

}

void practise2(){
   Map info = {
    'name': 'Hoang',
    'age': 23,
    'job': 'IT'
  };

  String str = [
    info['name'].toUpperCase(),
    info['age'].toString().toUpperCase(),
    info['job'].toUpperCase(),
  ].join('_');

  print(str);
  info['email'] = 'age@gmail.com';
  print(info);
}