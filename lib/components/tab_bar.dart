import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whiteboard_hci/models/post.dart';
import 'package:whiteboard_hci/presenters/post_presenter.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/home.dart';
import 'package:whiteboard_hci/views/notification.dart';

class TabbedAppBarDemo extends StatelessWidget {
  const TabbedAppBarDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: choices.length,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 120,
          backgroundColor: Colors.white,
          leadingWidth: 0,
          centerTitle: false,
          title: Row(
            children: [
              Container(
                width: size.height * 0.07,
                height: size.height * 0.07,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(size.height * 0.1)),
              ),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Xin chào, Phi Long",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: white_blue),
                ),
              ),
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NotificationTab(
                          check: 1,
                        )));
              },
              child: Container(
                width: size.width * 0.15,
                child: Icon(
                  Icons.notifications_outlined,
                  color: white_blue,
                  size: 30,
                ),
              ),
            )
          ],
          bottom: TabBar(
            tabs: choices.map<Widget>(
              (Choice choice) {
                return Tab(
                  // text: choice.title,
                  child: Text(
                    choice.title,
                    style: TextStyle(fontSize: 16, color: white_blue),
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
                choice: choice,
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}

class Choice {
  final String title;
  const Choice({required this.title});
}

const List<Choice> choices = <Choice>[
  Choice(title: 'Đã duyệt'),
  Choice(title: 'Chờ xử lí'),
  Choice(title: 'Bị từ chối')
];

class ChoicePage extends StatelessWidget {
  final Choice choice;
  const ChoicePage({Key? key, required this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Post> list = [];

    int? check;
    if (choice.title == 'Đã duyệt') {
      list = PostPresenter().getMyPostListPublic();
      check = 1;
    }

    if (choice.title == 'Chờ xử lí') {
      list = PostPresenter().getMyPostListWaiting();
      check = 2;
    }
    if (choice.title == 'Bị từ chối') {
      list = PostPresenter().getMyPostListRefuse();
      check = 3;
    }
    // final TextStyle? textStyle = Theme.of(context).textTheme.display1;
    return PostListComponent(
      list: list,
      check: check!,
    );
  }
}
