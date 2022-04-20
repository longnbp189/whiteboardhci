import 'package:flutter/material.dart';
import 'package:whiteboard_hci/components/image_picker.dart';
import 'package:whiteboard_hci/components/image_pickerr.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  List<School> _school = School.getSchool();
  List<DropdownMenuItem<School>>? _dropDownMenuSchool;
  School? _selectedSchool;
  List<String>? selectedSchoolChildren = [];

  List<DropdownMenuItem<School>>? builDropDownMenuSchool(List schools) {
    List<DropdownMenuItem<School>> items = [];
    for (School item in schools) {
      items.add(
        DropdownMenuItem(
          value: item,
          child: Text(item.name!),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItemm(School? selectedSchool) {
    setState(() {
      _selectedSchool = selectedSchool;
      selectedSchoolChildren = [];
      // selectedSchoolChildren = data[selectedSchool!.id! - 1];
    });
  }

  List<Campus> _campus = Campus.getCampus();
  List<DropdownMenuItem<Campus>>? _dropDownMenuCampus;
  Campus? _selectedCampus;
  List<String>? selectedCampusChildren = [];

  List<DropdownMenuItem<Campus>>? builDropDownMenuCampus(List campuss) {
    List<DropdownMenuItem<Campus>> items = [];
    for (Campus item in campuss) {
      items.add(
        DropdownMenuItem(
          value: item,
          child: Text(item.name!),
        ),
      );
    }
    return items;
  }

  onChangeDropdownCampus(Campus? selectedCampus) {
    setState(() {
      _selectedCampus = selectedCampus;
      selectedCampusChildren = [];
      // selectedSchoolChildren = data[selectedSchool!.id! - 1];
    });
  }

  @override
  void initState() {
    _dropDownMenuSchool = builDropDownMenuSchool(_school);
    _selectedSchool = _dropDownMenuSchool![0].value;
    _dropDownMenuCampus = builDropDownMenuCampus(_campus);
    _selectedCampus = _dropDownMenuCampus![0].value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: white_blue),
        backgroundColor: Colors.white,
        title: Text(
          'Tạo tài khoản',
          style: TextStyle(
              fontSize: 20, color: white_blue, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        height: size.height,
        width: size.width,
        // decoration: BoxDecoration(
        //     image: (!isKeyboard)
        //         ? DecorationImage(
        //             image: AssetImage("assets/images/frame_hci.png"),
        //             fit: BoxFit.cover)
        //         : null),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: size.height * 0.15,
                  height: size.height * 0.15,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQydVTEC8nQaVwm9HYYu0huwr6Et3P5KyDdw&usqp=CAU'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(size.height * 0.1)),
                ),
                // if (isKeyboard)
                SizedBox(
                  height: size.height * 0.02,
                ),
                // SizedBox(
                //   height: size.height * 0.03,
                // ),
                Container(
                  width: size.width - 80,
                  height: size.height * 0.06,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Tài khoản',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Container(
                  width: size.width - 80,
                  height: size.height * 0.06,
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Mật khẩu',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility_off)),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Container(
                  width: size.width - 80,
                  height: size.height * 0.06,
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Nhập lại mật khẩu',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.visibility_off)),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Container(
                  width: size.width - 80,
                  height: size.height * 0.06,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Họ và tên',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.badge),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Container(
                  width: size.width - 80,
                  height: size.height * 0.06,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  child: DropdownButton(
                    isExpanded: true,
                    underline: SizedBox(),
                    items: _dropDownMenuSchool,
                    value: _selectedSchool,
                    onChanged: onChangeDropdownItemm,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Container(
                  width: size.width - 80,
                  height: size.height * 0.06,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(20)),
                  child: DropdownButton(
                    isExpanded: true,
                    underline: SizedBox(),
                    items: _dropDownMenuCampus,
                    value: _selectedCampus,
                    onChanged: onChangeDropdownCampus,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                Container(
                  width: size.width - 80,
                  child: Text(
                    'Đăng tải ảnh xác thực:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    width: size.width - 80, height: 170, child: ImagePicker1()),
                Container(
                  width: size.width - 80,
                  height: size.height * 0.06,
                  child: ElevatedButton(
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: BorderSide(
                                        color: white_blue, width: 1)))),
                    child: Text(
                      'Đăng ký',
                      style: TextStyle(fontSize: 18, color: white_blue),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Thông báo'),
          content:
              Text('Tạo tài khoản thành công. Vui lòng chờ hệ thống xác thực.'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  'Đăng nhập',
                  style: TextStyle(fontSize: 18),
                ))
          ],
        );
      });
}

Widget buildLogo1(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return Column(
    children: [
      // SizedBox(
      //   height: size.height * 0.03,
      // ),
      // Center(
      //   child: Container(
      //     child: Image.asset("assets/images/logo.jpg"),
      //     height: size.height * 0.2,
      //   ),
      // ),
      SizedBox(
        height: size.height * 0.02,
      ),
      Center(
          child: Text(
        "UniReview",
        style:
            TextStyle(color: white_blue, fontFamily: "Dancing", fontSize: 35),
      )),
      // Center(
      //     child: Text(
      //   "Đánh giá trường đại học",
      //   style: TextStyle(color: dart_blue, fontFamily: "Dancing", fontSize: 25),
      // )),
    ],
  );
}

class School {
  int? id;
  String? name;
  School(this.id, this.name);
  static List<School> getSchool() {
    return <School>[
      School(1, 'Chọn trường đại học'),
      School(2, 'Đại học FPT'),
      School(3, 'Đại học Bách Khoa'),
      School(4, 'Đại học Kinh Tế'),
      School(5, 'Đại học Y Dược'),
      School(6, 'Đại học Ngân Hàng'),
      School(7, 'Đại học Nông Lân'),
      School(8, 'Đại học Ngoại ngữ'),
    ];
  }
}

class Campus {
  int? id;
  String? name;
  Campus(this.id, this.name);
  static List<Campus> getCampus() {
    return <Campus>[
      Campus(1, 'Chọn cơ sở'),
      Campus(2, 'Hà Nội'),
      Campus(3, 'Hồ Chí Minh'),
      Campus(4, 'Huế'),
      Campus(5, 'Đà Nẵng'),
      Campus(5, 'Cần Thơ'),
    ];
  }
}

final List<List<String>> data = <List<String>>[
  [],
  [
    'Lộ trình các môn học',
    'Tài liệu môn học',
    'Giảng viên',
    'Giáo án',
  ],
  [
    'Nhà xe',
    'Căn tin',
    'Thư viện',
    'Phòng học',
    'Phòng thực hành',
    'Thiết bị giảng dạy',
  ],
  [
    'Độ thân thiện của giảng viên',
    'Độ thân thiện của sinh viên',
    'Độ đa dạng về văn hoá',
  ],
  [
    'Khách mời',
    'Quy mô sự kiện',
    'Đội ngũ sự kiện',
    'Ý nghĩa',
  ],
];
