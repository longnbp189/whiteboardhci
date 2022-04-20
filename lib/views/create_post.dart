import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:whiteboard_hci/components/image_pickerr.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/home.dart';

class CreatePost extends StatefulWidget {
  final String title;
  const CreatePost({Key? key, required this.title}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  // List<Widget> listCriteria(Size size, List<String> listCriteria) {
  //   List<Widget> view = [];

  //   for (var i = 0; i < listCriteria.length; i++) {
  //     view.add(
  //       Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 5),
  //         child: Container(
  //           child: Padding(
  //             padding: const EdgeInsets.all(10),
  //             child: Column(
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Text(
  //                   listCriteria[i].toString(),
  //                   style: TextStyle(fontSize: 16),
  //                 ),
  //                 Container(
  //                     height: 10,
  //                     child: Scaffold(
  //                       body: RatingBar.builder(
  //                         itemSize: 35,
  //                         minRating: 0,
  //                         direction: Axis.horizontal,
  //                         itemCount: 5,
  //                         itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
  //                         itemBuilder: (context, _) => Icon(
  //                           Icons.star,
  //                           color: white_blue,
  //                         ),
  //                         onRatingUpdate: (rating) {
  //                           // setState(() {
  //                           //   check1 = 1;
  //                           // });
  //                         },
  //                       ),
  //                     )),
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     );
  //   }

  //   return view;
  // }

  List<CriteriaM> _criteriaM = CriteriaM.getCriteriaM();
  List<DropdownMenuItem<CriteriaM>>? _dropDownMenuItem;
  CriteriaM? _selectedCriteria;
  List<String>? selectedCriteriaChildren = [];

  @override
  void initState() {
    _dropDownMenuItem = builDropDownMenuItems(_criteriaM);
    _selectedCriteria = _dropDownMenuItem![0].value;
    super.initState();
  }

  List<DropdownMenuItem<CriteriaM>>? builDropDownMenuItems(List criterias) {
    List<DropdownMenuItem<CriteriaM>> items = [];
    for (CriteriaM item in criterias) {
      items.add(
        DropdownMenuItem(
          value: item,
          child: Text(item.name!),
        ),
      );
    }
    return items;
  }

  onChangeDropdownItemm(CriteriaM? selectedCriteria) {
    setState(() {
      _selectedCriteria = selectedCriteria;
      selectedCriteriaChildren = [];
      selectedCriteriaChildren = data[selectedCriteria!.id! - 1];
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          iconTheme: IconThemeData(color: white_blue),
          backgroundColor: Colors.white,
          title: Text(widget.title + ' bài viết',
              style: TextStyle(color: white_blue)),
          centerTitle: true,
          actions: [
            TextButton(
                onPressed: () {
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(builder: (context) => Home()));
                  showAlertDialog(context);
                },
                child: Text(
                  widget.title,
                  style: TextStyle(color: white_blue, fontSize: 18),
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tiêu chí*',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: size.width - 150,
                    height: size.height * 0.06,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: DropdownButton(
                      isExpanded: true,
                      underline: SizedBox(),
                      items: _dropDownMenuItem,
                      value: _selectedCriteria,
                      onChanged: onChangeDropdownItemm,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  (selectedCriteriaChildren!.length > 0)
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Đánh giá*',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: selectedCriteriaChildren!.length * 30,
                              child: ListView.builder(
                                  itemCount: selectedCriteriaChildren!.length,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5),
                                      child: Container(
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                child: Text(
                                                  selectedCriteriaChildren![
                                                      index],
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ),
                                            ),
                                            Container(
                                                height: 5,
                                                width: 150,
                                                child: Scaffold(
                                                  body: RatingBar.builder(
                                                    itemSize: 20,
                                                    minRating: 0,
                                                    direction: Axis.horizontal,
                                                    itemCount: 5,
                                                    itemPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 4.0),
                                                    itemBuilder: (context, _) =>
                                                        Icon(
                                                      Icons.star,
                                                      color: white_blue,
                                                    ),
                                                    onRatingUpdate: (rating) {
                                                      setState(() {
                                                        // check1 = 1;
                                                      });
                                                    },
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ],
                        )
                      : SizedBox(),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ưu điểm:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      labelText: "",
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Nhược điểm:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    maxLines: 6,
                    decoration: InputDecoration(
                      labelText: "",
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(height: 200, child: ImagePickerr()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Thông báo'),
          content: Text(widget.title +
              ' bài viết thành công. Vui lòng chờ hệ thống xác thực.'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Home()));
                },
                child: Text(
                  'Trang chủ',
                  style: TextStyle(fontSize: 18),
                ))
          ],
        );
      });

  final List<List<String>> data = <List<String>>[
    [],
    [
      'Lộ trình các môn học',
      'Tài liệu môn học',
      'Giảng viên',
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
      'Khách mời',
      'Quy mô sự kiện',
      'Đội ngũ sự kiện',
      'Ý nghĩa',
    ],
  ];
}

class CriteriaM {
  int? id;
  String? name;
  CriteriaM(this.id, this.name);
  static List<CriteriaM> getCriteriaM() {
    return <CriteriaM>[
      CriteriaM(1, 'Chọn tiêu chí đánh giá'),
      CriteriaM(2, 'Giáo dục'),
      CriteriaM(3, 'Cơ sở vật chất'),
      CriteriaM(4, 'Sự kiện'),
    ];
  }
}
