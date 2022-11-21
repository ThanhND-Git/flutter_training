void main(List<String> arguments) {
  print('Hello world: !');
  int a = 6;
  String b = '120.34';
  String c = 'true';
  double d = 120;
  String x = a.toString();
  double y = double.parse(b);
  bool z = true.toString() == c;
  int k = d.toInt();
  String w = d.toString();
  print("x = $x");
  print("y = $y");
  print(z);
  print("k = $k");
  print("w = $w");
  thMap();
}

void thMap() {
  final myInfo = {
    'name': 'Vu Van Thanh',
    'age': 24,
    'level': 300,
  };
  print(myInfo['name']);
}
