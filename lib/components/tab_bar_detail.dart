import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whiteboard_hci/models/post.dart';
import 'package:whiteboard_hci/presenters/post_presenter.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/home.dart';
import 'package:whiteboard_hci/views/notification.dart';
import 'package:whiteboard_hci/views/post_create.dart';
import 'package:whiteboard_hci/views/post_detail.dart';

class TabbedAppBarDetail extends StatelessWidget {
  final int check;

  const TabbedAppBarDetail({Key? key, required this.check}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: choices.length,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: white_blue),
          toolbarHeight: 100,
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(
            'Bài viết',
            style: TextStyle(color: white_blue),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  showAlertDelete(context);
                },
                icon: Icon(Icons.delete_outline, color: Colors.red.shade600)),
            (check != 1)
                ? IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PostCreateTab1(
                                title: 'Sửa',
                              )));
                    },
                    icon: Icon(Icons.edit))
                : SizedBox()
          ],
          bottom: TabBar(
            tabs: choices.map<Widget>(
              (Choice choice) {
                return Tab(
                  // text: choice.title,
                  child: Text(
                    choice.title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: white_blue,
                    ),
                  ),
                );
              },
            ).toList(),
          ),
        ),
        body: TabBarView(
          children: choices.map(
            (Choice choice) {
              return ChoicePage(
                check: check,
                choice: choice,
              );
            },
          ).toList(),
        ),
      ),
    );
  }

  void showAlertDelete(BuildContext context) => showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Thông báo'),
          content: Text('Bạn có chắc chắn xóa bài viết này không?'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Không',
                  style: TextStyle(fontSize: 18, color: grey_text),
                )),
            TextButton(
                onPressed: () {
                  showAlertDialog(context);
                  // Navigator.of(context).push(MaterialPageRoute(
                  //     builder: (context) => ));
                },
                child: Text(
                  'Có',
                  style: TextStyle(fontSize: 18, color: Colors.red.shade600),
                )),
          ],
        );
      });

  void showAlertDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Thông báo'),
          content: Text('Xóa bài viết thành công.'),
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

class Choice {
  final String title;
  const Choice({required this.title});
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Cơ sở\nvật chất'),
  Choice(title: 'Chất lượng đào tạo'),
  Choice(title: 'Hoạt động sự kiện')
];

class ChoicePage extends StatelessWidget {
  final int check;
  final Choice choice;
  const ChoicePage({Key? key, required this.choice, required this.check})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Post? list;
    if (choice.title == 'Cơ sở\nvật chất') {
      if (check == 1) {
        list = PostPresenter().getPost12();
      }
      if (check == 2) {
        list = PostPresenter().getPost22();
      }
      if (check == 3) {
        list = PostPresenter().getPost32();
      }
    }

    if (choice.title == 'Chất lượng đào tạo') {
      if (check == 1) {
        list = PostPresenter().getPost11();
      }
      if (check == 2) {
        list = PostPresenter().getPost21();
      }
      if (check == 3) {
        list = PostPresenter().getPost31();
      }
    }

    if (choice.title == 'Hoạt động sự kiện') {
      if (check == 1) {
        list = PostPresenter().getPost13();
      }
      if (check == 2) {
        list = PostPresenter().getPost23();
      }
      if (check == 3) {
        list = PostPresenter().getPost33();
      }
    }
    // final TextStyle? textStyle = Theme.of(context).textTheme.display1;
    return PostDetailPage(
      post: list!,
      message: null,
      check: check,
    );
  }
}
