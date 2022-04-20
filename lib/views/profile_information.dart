import 'package:flutter/material.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/home.dart';
import 'package:whiteboard_hci/views/profile.dart';

class ProfileInformation extends StatefulWidget {
  const ProfileInformation({Key? key}) : super(key: key);

  @override
  _ProfileInformationState createState() => _ProfileInformationState();
}

class _ProfileInformationState extends State<ProfileInformation> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Thông tin'),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  width: size.height * 0.05,
                                  height: size.height * 0.05,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi'),
                                          fit: BoxFit.cover),
                                      borderRadius: BorderRadius.circular(
                                          size.height * 0.1)),
                                ),
                                SizedBox(
                                  width: size.width * 0.03,
                                ),
                                Text(
                                  "Ảnh",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(Icons.edit_outlined),
                        ],
                      ),
                    ),
                    Divider(
                      color: grey_text,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Họ và tên",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.03,
                                      ),
                                      Text(
                                        "Phi Long",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: grey_text,
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                          Icon(Icons.edit_outlined),
                        ],
                      ),
                    ),
                    Divider(
                      color: grey_text,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Ngày sinh",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.03,
                                      ),
                                      Text(
                                        "18/09/2000",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: grey_text,
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                          Icon(Icons.edit_outlined),
                        ],
                      ),
                    ),
                    Divider(
                      color: grey_text,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Giới tính",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.03,
                                      ),
                                      Text(
                                        "Nam",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: grey_text,
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                          Icon(Icons.edit_outlined),
                        ],
                      ),
                    ),
                    Divider(
                      color: grey_text,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Trường",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.03,
                                      ),
                                      Text(
                                        "FPT",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: grey_text,
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                          Icon(Icons.edit_outlined),
                        ],
                      ),
                    ),
                    Divider(
                      color: grey_text,
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cơ sở",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.03,
                                      ),
                                      Text(
                                        "Hồ Chí Minh",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: grey_text,
                                        ),
                                      ),
                                    ]),
                              ],
                            ),
                          ),
                          Icon(Icons.edit_outlined),
                        ],
                      ),
                    ),
                    Divider(
                      color: grey_text,
                      thickness: 1,
                    ),
                    // TextFormField(
                    //     controller: nameController,
                    //     decoration: InputDecoration(
                    //       hintText: "Nhập họ và tên",
                    //       border: OutlineInputBorder(
                    //           borderRadius: BorderRadius.circular(10)),
                    //     ),
                    //   ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: size.width - 80,
                  height: size.height * 0.06,
                  child: ElevatedButton(
                    onPressed: () {
                      showAlertDialog(context);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(white_blue),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ))),
                    child: Text(
                      'Cập nhật',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
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
          content: Text('Cập nhật thành công.'),
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
