import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:whiteboard_hci/components/image_pickerr.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/home.dart';

class PostCreateTab1 extends StatefulWidget {
  final String title;
  const PostCreateTab1({Key? key, required this.title}) : super(key: key);

  @override
  _PostCreateTab1State createState() => _PostCreateTab1State();
}

class _PostCreateTab1State extends State<PostCreateTab1> {
  TextEditingController? controller1 = TextEditingController()..text = '',
      controller2 = TextEditingController()..text = '',
      controller3 = TextEditingController()..text = '',
      controller4 = TextEditingController()..text = '',
      controller5 = TextEditingController()..text = '',
      controller6 = TextEditingController()..text = '';

  Color ratingColor = white_blue;
  Icon ratingIcon = Icon(
    Icons.star,
    color: Colors.amber,
  );
  int currentStep = 0;
  bool isCompleted = false;
  int check1 = 1;
  List<CriteriaM> _criteriaM = CriteriaM.getCriteriaM();
  List<DropdownMenuItem<CriteriaM>>? _dropDownMenuItem;
  CriteriaM? _selectedCriteria;
  List<String>? selectedCriteriaChildren = [];

  // @override
  // void initState() {
  //   _dropDownMenuItem = builDropDownMenuItems(_criteriaM);
  //   _selectedCriteria = _dropDownMenuItem![0].value;
  //   super.initState();
  // }

  @override
  void initState() {
    super.initState();
  }

  // List<DropdownMenuItem<CriteriaM>>? builDropDownMenuItems(List criterias) {
  //   List<DropdownMenuItem<CriteriaM>> items = [];
  //   for (CriteriaM item in criterias) {
  //     items.add(
  //       DropdownMenuItem(
  //         value: item,
  //         child: Text(item.name!),
  //       ),
  //     );
  //   }
  //   return items;
  // }

  // onChangeDropdownItemm(CriteriaM? selectedCriteria) {
  //   setState(() {
  //     _selectedCriteria = selectedCriteria;
  //     selectedCriteriaChildren = [];
  //     selectedCriteriaChildren = data[selectedCriteria!.id! - 1];
  //   });
  // }

  void callback(int num) {
    setState(() {
      check1 += num;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title + ' bài viết'),
          leading: Container(),
          actions: [
            if (!isCompleted)
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pop(MaterialPageRoute(builder: (context) => Home()));
                  },
                  icon: Icon(Icons.close))
          ],
        ),
        body:

            //  isCompleted
            //     ? AlertDialog(
            //         title: Text('Thông báo'),
            //         content: Text(widget.title +
            //             ' bài viết thành công. Vui lòng chờ hệ thống xác thực.'),
            //         actions: [
            //           TextButton(
            //               onPressed: () {
            //                 Navigator.of(context).push(
            //                     MaterialPageRoute(builder: (context) => Home()));
            //               },
            //               child: Text(
            //                 'Trang chủ',
            //                 style: TextStyle(fontSize: 18),
            //               ))
            //         ],
            //       )
            //     :

            Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(primary: white_blue),
          ),
          child: Stepper(
              type: StepperType.horizontal,
              steps: getSteps(context),
              currentStep: currentStep,
              onStepContinue: () {
                if (check1 > 0 || currentStep >= 1) {
                  final isLastStep =
                      currentStep == getSteps(context).length - 1;
                  if (isLastStep) {
                    setState(() => isCompleted = true);
                    print("Hoàn tất");
                  } else {
                    setState(() => currentStep += 1);
                  }
                }
                setState(() {
                  ratingColor = grey_text;
                  ratingIcon = Icon(
                    Icons.star_outline,
                    color: Colors.amber,
                  );
                });
                // Navigator.pushReplacement(
                //   context,
                //   PageRouteBuilder(
                //     transitionDuration: Duration.zero,
                //     pageBuilder: (_, __, ___) => PostCreateTab1(
                //       title: widget.title,
                //     ),
                //   ),
                // );
              },
              onStepCancel: currentStep == 0
                  ? null
                  : () => setState(() {
                        currentStep -= 1;
                        // check1 = 0;
                        ratingColor = white_blue;
                        ratingIcon = Icon(
                          Icons.star,
                          color: Colors.amber,
                        );
                      }),
              controlsBuilder: (context, dynamic) {
                // setState(() {
                //   check1 = 0;
                // });
                final isLastStep = currentStep == getSteps(context).length - 1;
                return Container(
                    child: Column(
                  children: [
                    // Container(
                    //   height: 5,
                    //   decoration: BoxDecoration(
                    //       gradient: LinearGradient(
                    //           begin: Alignment.topCenter,
                    //           end: Alignment.bottomCenter,
                    //           colors: [Colors.white, Colors.grey.shade300])),
                    // ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            child: Text(
                              "Trở về",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            onPressed: dynamic.onStepCancel,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: (check1 > 0 || currentStep >= 1)
                              ? ElevatedButton(
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.5),
                                    child: Text(
                                      isLastStep ? "Hoàn tất" : "Tiếp tục",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  onPressed: (!isLastStep)
                                      ? dynamic.onStepContinue
                                      : () {
                                          showAlertDialog(
                                              context, widget.title);
                                        })
                              : Container(
                                  height: 37,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(5)
                                      //     backgroundColor:
                                      //         MaterialStateProperty.all<Color>(
                                      //             Colors.grey.shade300),
                                      //     shape: null,
                                      //     shadowColor:
                                      //         MaterialStateProperty.all<Color>(
                                      //             Colors.white)),
                                      // onPressed: () {},
                                      ),
                                  child: Center(
                                    child: Text(
                                      'Tiếp tục',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.35),
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                        ),
                        // if (currentStep != 0)
                      ],
                    ),
                  ],
                ));
              }),
        ),
      ),
    );
  }

  List<Step> getSteps(BuildContext context) {
    List<Widget> listCriteria(Size size, List<String> listCriteria) {
      List<Widget> view = [];

      for (var i = 0; i < listCriteria.length; i++) {
        view.add(
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listCriteria[i].toString(),
                      style: TextStyle(fontSize: 16),
                    ),
                    Container(
                        height: 10,
                        child: Scaffold(
                          body: RatingBar(
                            initialRating: 0,
                            itemSize: 35,
                            minRating: 0,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            ratingWidget: RatingWidget(
                              empty: Icon(
                                Icons.star_outline,
                                color: Colors.amber,
                              ),
                              full: ratingIcon,
                              half: ratingIcon,
                            ),
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            // itemBuilder: (context, a) {
                            //   return Icon(
                            //     Icons.star,
                            //     color: ratingColor,
                            //   );
                            // },
                            onRatingUpdate: (rating) {
                              setState(() {
                                ratingColor = Colors.amber;
                                ratingIcon = Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                );
                                // check1 = 1;
                              });
                            },
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        );
      }

      return view;
    }

    final size = MediaQuery.of(context).size;
    return [
      Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 0,
        title: Text(""),
        content: Container(
          height: size.height - 260,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tiêu chí:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '  Cơ sở vật chất',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Đánh giá:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  child: Column(
                    children: listCriteria(size, data[2]),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: controller1,
                  onFieldSubmitted: (value) {
                    controller1!..text = value;
                  },
                  maxLines: 7,
                  decoration: InputDecoration(
                    labelText: "Ưu điểm: ",
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller2,
                  onFieldSubmitted: (value) {
                    controller2!..text = value;
                  },
                  maxLines: 7,
                  decoration: InputDecoration(
                    labelText: "Nhược điểm: ",
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
      Step(
        state: currentStep > 1 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 1,
        title: Text(""),
        content: Container(
          height: size.height - 260,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tiêu chí:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '  Chất lượng đào tạo',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Đánh giá:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  child: Column(
                    children: listCriteria(size, data[1]),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: controller3,
                  onFieldSubmitted: (value) {
                    controller3!..text = value;
                  },
                  maxLines: 7,
                  decoration: InputDecoration(
                    labelText: "Ưu điểm: ",
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller4,
                  onFieldSubmitted: (value) {
                    controller4!..text = value;
                  },
                  maxLines: 7,
                  decoration: InputDecoration(
                    labelText: "Nhược điểm: ",
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                // Container(height: 200, child: ImagePickerr()),
              ],
            ),
          ),
        ),
      ),
      Step(
        state: currentStep > 2 ? StepState.complete : StepState.indexed,
        isActive: currentStep >= 2,
        title: Text(""),
        content: Container(
          height: size.height - 260,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tiêu chí:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '  Sự kiện',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Đánh giá:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  child: Column(
                    children: listCriteria(size, data[4]),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: controller5,
                  onFieldSubmitted: (value) {
                    controller5!..text = value;
                  },
                  maxLines: 7,
                  decoration: InputDecoration(
                    labelText: "Ưu điểm: ",
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: controller6,
                  onFieldSubmitted: (value) {
                    controller6!..text = value;
                  },
                  maxLines: 7,
                  decoration: InputDecoration(
                    labelText: "Nhược điểm: ",
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
    ];
  }
  // bool check = false;

  // List<Widget> getCriterial(List<String> criteria) {
  //   final result = <Widget>[];
  //   for (var i = 0; i < criteria.length; i++) {
  //     result.add(
  //       Container(
  //           // decoration: BoxDecoration(border: Border.all(color: Colors.black)),

  //           child: ChipCustom(
  //         name: widget.campaign.criteria![i],
  //         callback: this.callback,
  //       )),
  //     );
  //   }
  //   return result;
  // }

  void showAlertDialog(BuildContext context, String title) => showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Thông báo'),
          content: Text(
              title + ' bài viết thành công. Vui lòng chờ hệ thống xác thực.'),
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
}

class ChipCustom extends StatefulWidget {
  final Function callback;
  final String name;
  const ChipCustom({Key? key, required this.name, required this.callback})
      : super(key: key);

  @override
  _ChipCustomState createState() => _ChipCustomState();
}

class _ChipCustomState extends State<ChipCustom> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: !check
          ? BoxDecoration(
              border: Border.all(color: grey_text),
              borderRadius: BorderRadius.all(Radius.circular(30)))
          : null,
      child: ChoiceChip(
        avatar: check
            ? Icon(
                Icons.check,
                color: white_blue,
              )
            : null,
        padding: EdgeInsets.all(10),
        backgroundColor: Colors.white,
        selected: check,
        selectedColor: white_blue_white,
        onSelected: (bool value) {
          setState(() {
            if (value)
              widget.callback(1);
            else
              widget.callback(-1);
            check = value;
          });
        },
        label: Text(
          widget.name.toString(),
          style: TextStyle(fontSize: 16, color: check ? white_blue : grey_text),
        ),
      ),
    );
  }
}

// Widget buildCompleted(BuildContext context) {
//   final size = MediaQuery.of(context).size;
//   return Scaffold(
//     body: Column(
//       children: [
//         Container(
//           height: size.height - 160,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Center(
//                 child: Icon(
//                   Icons.check_circle,
//                   size: 120,
//                   color: white_blue,
//                 ),
//               ),
//               Center(
//                 child: Text(
//                   'Gửi thành công\nĐang chờ xử lý',
//                   style: TextStyle(
//                       color: white_blue,
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold),
//                 ),
//               )
//             ],
//           ),
//         ),
//         Container(
//             width: size.width - 80,
//             height: size.height * 0.06,
//             child: ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (context) => Home()));
//               },
//               style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all<Color>(white_blue),
//                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                       RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ))),
//               child: Text(
//                 'Trang chủ',
//                 style: TextStyle(color: Colors.white, fontSize: 20),
//               ),
//             ))
//       ],
//     ),
//   );
// }
class CriteriaM {
  int? id;
  String? name;
  CriteriaM(this.id, this.name);
  static List<CriteriaM> getCriteriaM() {
    return <CriteriaM>[
      CriteriaM(1, 'Chọn tiêu chí đánh giá'),
      CriteriaM(2, 'Giáo dục'),
      CriteriaM(3, 'Cơ sở vật chất'),
      CriteriaM(4, 'Môi trường học tập'),
      CriteriaM(5, 'Sự kiện'),
    ];
  }
}

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
    'Độ thân thiện của giảng viên',
    'Độ thân thiện của sinh viên',
    'Độ đa dạng về văn hoá',
  ],
  [
    'Quy mô sự kiện',
    'Mức độ đa dạng',
    'Sức lan tỏa',
    'Đội ngũ nhân sự',
  ],
];
