import 'package:flutter/material.dart';
import 'package:whiteboard_hci/components/tab_bar_detail.dart';
import 'package:whiteboard_hci/presenters/post_presenter.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/post_detail.dart';

class NotificationTab extends StatefulWidget {
  final int check;
  const NotificationTab({Key? key, required this.check}) : super(key: key);

  @override
  _NotificationTabState createState() => _NotificationTabState();
}

class _NotificationTabState extends State<NotificationTab> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Thông báo'),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              // Container(
              //   margin: EdgeInsets.only(bottom: 20),
              //   width: size.width - 50,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       boxShadow: [
              //         BoxShadow(
              //             color: grey_text, spreadRadius: 1, blurRadius: 3),
              //       ],
              //       color: Colors.white),
              //   child: Row(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Icon(Icons.add_circle_outline),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Container(
              //           width: size.width - 100,
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(
              //                 'Chiến dịch Tiếng anh đầu vào vừa được thêm mới hãy nhanh chóng vào viết bài nào!',
              //                 style: TextStyle(fontWeight: FontWeight.bold),
              //                 maxLines: 2,
              //                 overflow: TextOverflow.ellipsis,
              //               ),
              //               SizedBox(
              //                 height: 5,
              //               ),
              //               Text(
              //                 '20 giờ 14 ngày 29 tháng 09, 2021',
              //                 style: TextStyle(fontSize: 12, color: grey_text),
              //                 maxLines: 2,
              //                 overflow: TextOverflow.ellipsis,
              //               )
              //             ],
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PostDetailPage(
                            post: PostPresenter().getMyPostListPublic()[0],
                            check: 1,
                          )));
                  // TabbedAppBarDetail(
                  //   check: 1,
                  // )));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: size.width - 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: grey_text, spreadRadius: 1, blurRadius: 3),
                      ],
                      color: Colors.white),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width - 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bài viết của bạn đã được duyệt',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '21 giờ ngày 25 tháng 09, 2021',
                                style:
                                    TextStyle(fontSize: 12, color: grey_text),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      // builder: (context) => TabbedAppBarDetail(
                      //       check: 3,
                      //     )));
                      builder: (context) => PostDetailPage(
                            post: PostPresenter().getMyPostListRefuse()[0],
                            check: 1,
                          )));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 20),
                  width: size.width - 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: grey_text, spreadRadius: 1, blurRadius: 3),
                      ],
                      color: Colors.white),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.cancel_outlined, color: Colors.red),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width - 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bài viết của bạn không được duyệt',
                                style: TextStyle(fontWeight: FontWeight.bold),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '21 giờ ngày 22 tháng 09, 2021',
                                style:
                                    TextStyle(fontSize: 12, color: grey_text),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
