import 'package:flutter/material.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/login.dart';
import 'package:whiteboard_hci/views/my_list.dart';
import 'package:whiteboard_hci/views/profile_information.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Thông tin cá nhân'),
        //   centerTitle: true,
        //   leading: SizedBox(),
        // ),
        // actions: [
        //   PopupMenuButton<int>(
        //       onSelected: (value) {
        //         if (value == 2) {
        //           Navigator.of(context).push(MaterialPageRoute(
        //               builder: (context) => LoginScreen()));
        //         }
        //       },
        //       itemBuilder: (context) => [
        //             PopupMenuItem(value: 0, child: Text('Chỉnh sửa')),
        //             PopupMenuItem(value: 1, child: Text('Cài đặt')),
        //             PopupMenuDivider(),
        //             PopupMenuItem(
        //               value: 2,
        //               child: Text('Đăng xuất'),
        //             ),
        //           ])
        // ]
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.03,
              ),
              Center(
                child: Container(
                  width: size.height * 0.2,
                  height: size.height * 0.2,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(size.height * 0.1)),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Center(
                child: Text(
                  'Phi Long',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Center(
                child: Text(
                  'longnbp@fpt.edu.vn',
                  style: TextStyle(fontSize: 18, color: grey_text),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "3620",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text("Bài viết"),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "5448",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text("Lượt thích"),
                    ],
                  ),
                  // Padding(padding: EdgeInsets.all(10)),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       "1215",
                  //       style: TextStyle(
                  //           fontWeight: FontWeight.bold, fontSize: 18),
                  //     ),
                  //     Text("Theo dõi"),
                  //   ],
                  // ),
                ],
              ),
              SizedBox(
                height: 30,
              ),

              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileInformation()));
                  },
                  child: Container(
                    width: size.width - 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Thông tin cá nhân',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(size.height * 0.01),
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 15,
              // ),
              // Center(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(MaterialPageRoute(
              //           builder: (context) => MyListPostPage()));
              //     },
              //     child: Container(
              //       width: size.width - 50,
              //       child: Padding(
              //         padding: const EdgeInsets.symmetric(
              //             horizontal: 7, vertical: 12),
              //         child: Row(
              //           children: [
              //             Expanded(
              //               child: Row(
              //                 children: [
              //                   Icon(
              //                     Icons.article,
              //                     size: 30,
              //                   ),
              //                   SizedBox(
              //                     width: 10,
              //                   ),
              //                   Text(
              //                     'Bài viết của tôi',
              //                     style: TextStyle(
              //                         fontSize: 18,
              //                         fontWeight: FontWeight.bold),
              //                   )
              //                 ],
              //               ),
              //             ),
              //             Icon(Icons.arrow_forward_ios)
              //           ],
              //         ),
              //       ),
              //       decoration: BoxDecoration(
              //         border: Border.all(color: Colors.black),
              //         borderRadius: BorderRadius.circular(size.height * 0.01),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Center(
              //   child: InkWell(
              //     onTap: () {
              //       Navigator.of(context).push(
              //           MaterialPageRoute(builder: (context) => BookMart()));
              //     },
              //     child: Container(
              //       width: size.width - 50,
              //       child: Padding(
              //         padding: const EdgeInsets.symmetric(
              //             horizontal: 7, vertical: 12),
              //         child: Row(
              //           children: [
              //             Expanded(
              //               child: Row(
              //                 children: [
              //                   Icon(
              //                     Icons.article,
              //                     size: 30,
              //                   ),
              //                   SizedBox(
              //                     width: 10,
              //                   ),
              //                   Text(
              //                     'Bài viết Đã lưu',
              //                     style: TextStyle(
              //                         fontSize: 18,
              //                         fontWeight: FontWeight.bold),
              //                   )
              //                 ],
              //               ),
              //             ),
              //             Icon(Icons.arrow_forward_ios)
              //           ],
              //         ),
              //       ),
              //       decoration: BoxDecoration(
              //         border: Border.all(color: Colors.black),
              //         borderRadius: BorderRadius.circular(size.height * 0.01),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  width: size.width - 50,
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Cài đặt',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(size.height * 0.01),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Container(
                    width: size.width - 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7, vertical: 12),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.logout,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Đăng xuất',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios)
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(size.height * 0.01),
                    ),
                  ),
                ),
              ),
              // Center(
              //   child: Container(
              //     width: size.height * 0.15,
              //     height: size.height * 0.15,
              //     decoration: BoxDecoration(
              //         border: Border.all(color: Colors.black),
              //         borderRadius:
              //             BorderRadius.circular(size.height * 0.01)),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Text(
              //           '9',
              //           style: TextStyle(
              //               fontSize: 30, fontWeight: FontWeight.bold),
              //         ),
              //         SizedBox(
              //           height: 5,
              //         ),
              //         Text(
              //           'Điểm',
              //           style: TextStyle(
              //             fontSize: 15,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),

              // SizedBox(
              //   height: 20,
              // ),
              // Center(
              //   child: Padding(
              //     padding:
              //         const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              //     child: InkWell(
              //       onTap: () {},
              //       child: Row(
              //         children: [
              //           Expanded(
              //             child: Text(
              //               'Bài viết của tôi',
              //               style: TextStyle(fontSize: 20),
              //             ),
              //           ),
              //           Text(
              //             '5',
              //             style: TextStyle(fontSize: 20),
              //           ),
              //           Icon(Icons.arrow_forward_ios)
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 40,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Column(
              //       children: [
              //         Text(
              //           '0',
              //           style: TextStyle(fontSize: 18),
              //         ),
              //         Text(
              //           'Chờ xử lý',
              //           style: TextStyle(fontSize: 18),
              //         ),
              //       ],
              //     ),
              //     SizedBox(
              //       width: 30,
              //     ),
              //     Icon(Icons.arrow_forward_ios),
              //     SizedBox(
              //       width: 30,
              //     ),
              //     Column(
              //       children: [
              //         Text(
              //           '5',
              //           style: TextStyle(fontSize: 18),
              //         ),
              //         Text(
              //           'Đã công bố',
              //           style: TextStyle(fontSize: 18),
              //         ),
              //       ],
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    );
  }
}
