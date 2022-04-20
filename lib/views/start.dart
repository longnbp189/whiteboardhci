import 'package:flutter/material.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:whiteboard_hci/views/create_post.dart';

// class Star extends StatefulWidget {
//   const Star({Key? key}) : super(key: key);

//   @override
//   _StarState createState() => _StarState();
// }

// class _StarState extends State<Star> {
//   int rating = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         // body: ListView.builder(
//         //     itemCount: data.length,
//         //     itemBuilder: (BuildContext context, int index) =>
//         //         EntryItem(data[index])),
//         child: RatingBar.builder(
//           minRating: 0,
//           direction: Axis.horizontal,
//           itemCount: 5,
//           itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//           itemBuilder: (context, _) => Icon(
//             Icons.star,
//             color: white_blue,
//           ),
//           onRatingUpdate: (rating) {
//             print(rating);
//           },
//         ),
//       ),
//     );
//   }
// }
class CriteriaList extends StatefulWidget {
  final Function callback;
  const CriteriaList({Key? key, required this.callback}) : super(key: key);

  @override
  _CriteriaListState createState() => _CriteriaListState();
}

class _CriteriaListState extends State<CriteriaList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 700,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(color: white_blue, width: 1))),
                      ),
                      onPressed: () {
                        showAlertDialog(context, data[0]);
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'a',
                            style: TextStyle(fontSize: 18, color: white_blue),
                          ),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(color: white_blue, width: 1))),
                      ),
                      onPressed: () {
                        showAlertDialog(context, data[1]);
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'a',
                            style: TextStyle(fontSize: 18, color: white_blue),
                          ),
                        ),
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty
                            .all<RoundedRectangleBorder>(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(color: white_blue, width: 1))),
                      ),
                      onPressed: () {
                        showAlertDialog(context, data[2]);
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'a',
                            style: TextStyle(fontSize: 18, color: white_blue),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showAlertDialog(BuildContext context, List<String> list) => showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return AlertDialog(
              title: Text('Đánh giá tiêu chí'),
              content: Container(
                height: list.length * 80,
                child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(list[index]),
                                Container(
                                    height: 20,
                                    child: Scaffold(
                                      body: RatingBar.builder(
                                        itemSize: 35,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        itemCount: 5,
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: white_blue,
                                        ),
                                        onRatingUpdate: (rating) {
                                          setState(() {
                                            check = true;
                                          });
                                        },
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      setState(() {
                        check = false;
                      });
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Hủy',
                      style: TextStyle(fontSize: 18, color: grey_text),
                    )),
                check
                    ? TextButton(
                        onPressed: () {
                          // Navigator.of(context).push(MaterialPageRoute(
                          //     builder: (context) => CreatePost(
                          //           title: widget.title,
                          //         )));
                          widget.callback(1);
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Đồng ý',
                          style: TextStyle(fontSize: 18),
                        ))
                    : Text(
                        'Đồng ý',
                        style: TextStyle(
                          color: grey_text,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                SizedBox(
                  width: 10,
                )
              ],
            );
          },
        );
      });

  // List<Widget> critetiaList(List<String> list) {
  //   List<Widget> resultList = [];
  //   for (var i = 0; i < list.length; i++) {
  //     resultList.add(Container(
  //       child: Padding(
  //         padding: const EdgeInsets.all(8.0),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(list[i]),
  //             Container(height: 20, child: voting(context)),
  //           ],
  //         ),
  //       ),
  //     ));
  //     if (i != list.length - 1)
  //       resultList.add(SizedBox(
  //         height: 30,
  //       ));
  //   }
  //   return resultList;
  // }

  bool check = false;

  // Widget voting(BuildContext context) {
  //   final size = MediaQuery.of(context).size;
  //   return Scaffold(
  //     body: RatingBar.builder(
  //       itemSize: 35,
  //       minRating: 0,
  //       direction: Axis.horizontal,
  //       itemCount: 5,
  //       itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
  //       itemBuilder: (context, _) => Icon(
  //         Icons.star,
  //         color: white_blue,
  //       ),
  //       onRatingUpdate: (rating) {
  //         setState(() {
  //           check = true;
  //         });
  //       },
  //     ),
  //   );
  // }
}

// class Entry {
//   final String title;
//   final List<Entry> children;
//   Entry(this.title, [this.children = const <Entry>[]]);
// }

final List<List<String>> data = <List<String>>[
  [
    'Lộ trình các môn học',
    'Tài liệu môn học',
    'Cấp bậc học vấn giảng viên',
    'Nội quy trong giảng dạy'
  ],
  [
    'Lộ trình các môn học',
    'Tài liệu môn học',
    'Chất lượng giáo án',
    'Nội quy trong giảng dạy'
  ],
  [
    'Lộ trình các môn học',
    'Tài liệu môn học',
    'Chất lượng giáo án',
    'Cấp bậc học vấn giảng viên',
    'Nội quy trong giảng dạy'
  ]
];

// class EntryItem extends StatelessWidget {
//   const EntryItem(this.entry);
//   final Entry entry;

//   Widget _buildTidles(Entry root) {
//     if (root.children.isEmpty) {
//       return ListTile(
//         title: Text(root.title),
//       );
//     }
//     return ExpansionTile(
//       title: Text(root.title),
//       key: PageStorageKey<Entry>(root),
//       children: root.children.map<Widget>(_buildTidles).toList(),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _buildTidles(entry);
//   }
// }

// Widget voting(BuildContext context) {
//   final size = MediaQuery.of(context).size;
//   return Scaffold(
//     body: RatingBar.builder(
//       itemSize: 35,
//       minRating: 0,
//       direction: Axis.horizontal,
//       itemCount: 5,
//       itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//       itemBuilder: (context, _) => Icon(
//         Icons.star,
//         color: white_blue,
//       ),
//       onRatingUpdate: (rating) {
//         print(rating);
//       },
//     ),
//   );
// }
