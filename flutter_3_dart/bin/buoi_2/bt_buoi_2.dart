/* BÀI TẬP BUỔI 2 */
  /*
    Mảng:
      Khai báo mảng flutter3, với tên tất cả các bạn trong lớp. Sau đó thực hiện thêm, sửa tên 1 vài bạn.
      Khai báo 1 mảng ageOfMembers = tuổi của tất cả các bạn trong lớp => chuyển thành mảng String.
    Map:
      Khai báo: thông tin cá nhân(tên, tuổi, năm sinh, giới tính, sở thích). Sau đó thay đổi 1 vài thông tin.
   */

void main (List<String> arguments){
  print('Khai báo mảng flutter3 với tên tất cả các bạn trong lớp.');
  final flutter3 = [
    'Vũ Văn Thanh', //1999 - 24 tuổi
    'Định Anh Tuấn', // 2000 - 23 tuổi
    'Phạm Long Giang', //1978 - 45 tuổi
    'Trịnh Quang Anh', //1999 - 24 tuổi
    'Nguyễn Trần Quang Anh', // 2001 - 22 tuổi
    'Nguyễn Xuân Vinh', //1995 - 28 tuổi
    'Nguyễn Văn Lam', // 1992 - 30 tuổi
    'Nguyễn Văn Hiếu', // 1995 - 28 tuổi
    'Nguyễn Đăng Khoa', //1989 - 34 tuổi
    'Nguyễn Việt Huỳnh', //1988 - 35 tuổi
  ];
  print("flutter3 = $flutter3");

  //Thực hiện thêm, xóa, sửa tên 1 vài bạn.
  print('Thêm bạn Trần Quốc Khánh, Ngô Hải Nam vào mảng');
  flutter3.add('Trần Quốc Khánh');
  flutter3.add('Ngô Hải Nam');
  print(flutter3);

  print('Sửa tên bạn Trần Quốc Khánh thành Trần Quốc Đăng');
  flutter3 [10] = 'Trần Quốc Đăng';
  print(flutter3 );
  
  print('Xoá bạn Ngô Hải Nam khỏi mảng');
  flutter3.remove('Ngô Hải Nam');
  print(flutter3);
  ageOfMembers();
  myProfile();
}

//Khai báo 1 mảng ageOfMembers = tuổi của tất cả các bạn trong lớp => chuyển thành mảng String.
void ageOfMembers(){
  print('Khai báo 1 mảng ageOfMembers = tuổi của tất cả các bạn trong lớp.');
  final ageOfMembers = [
    
    24, // Vũ Văn Thanh, 1999
    24, // Trịnh Quang Anh, 1999
    45, // Phạm Long Giang, 1978
    23, // Định Anh Tuấn, 2000
    30, // Nguyễn Văn Lam, 1992
    28, // Nguyễn Văn Hiếu, 1995
    28, // Nguyễn Xuân Vinh, 1995
    34, // Nguyễn Đăng Khoa, 1989
    35, // Nguyễn Việt Huỳnh, 1988 
    22, // Nguyễn Trần Quang Anh, 2001
  ];
  print(ageOfMembers);

  print('Chuyển thành mảng String');
  final arrayString = ageOfMembers.toString();
  print(arrayString);
}

//Khai báo: thông tin cá nhân(tên, tuổi, năm sinh, giới tính, sở thích). Sau đó thay đổi 1 vài thông tin.
void myProfile(){
   print('Khai báo thông tin cá nhân(tên, tuổi, năm sinh, giới tính, sở thích)');
   final myInfo = {
    'name': 'Vũ Văn Thanh',
    'age': 24,
    'year_of_birth': 1999,
    'sex': 'Male',
    'hobby': 'Đọc truyện',
  };
  print(myInfo);

  //Thay đổi một vài thông tin.
  print('Thay đổi sở thích');
  myInfo['hobby'] = 'Đọc truyện, Xem phim';
  print(myInfo);
  
  print('Thêm địa chỉ');
  myInfo['address'] = 'Nghĩa Hưng, Nam Định';
  print(myInfo);
}