import 'package:flutter/material.dart';
import 'package:whiteboard_hci/components/post_item.dart';
import 'package:whiteboard_hci/components/tab_bar.dart';
import 'package:whiteboard_hci/models/post.dart';
import 'package:whiteboard_hci/presenters/post_presenter.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/create_post.dart';
import 'package:whiteboard_hci/views/post_create.dart';
import 'package:whiteboard_hci/views/profile.dart';

class Home extends StatefulWidget {
  final int? currentIndexInput;
  const Home({Key? key, this.currentIndexInput}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> screens = [HomeTab(), ProfilePage()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget _currentTab = HomeTab();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // if (widget.currentIndexInput == 1) {
    //   _currentIndex = widget.currentIndexInput!;
    //   _currentTab = ProfilePage();
    //   // _currentIndex = 0;
    // }
    return Scaffold(
      // body: _currentTab,
      // bottomNavigationBar: BottomNavyBar(
      //   // backgroundColor: Colors.black,
      //   selectedIndex: _currentIndex,
      //   items: <BottomNavyBarItem>[
      //     BottomNavyBarItem(
      //       icon: Icon(Icons.home),
      //       title: Center(child: Text('Trang chủ')),
      //       activeColor: white_blue,
      //       inactiveColor: grey_text,
      //     ),
      //     BottomNavyBarItem(
      //       title: Center(child: Text('Bài viết')),
      //       icon: Icon(Icons.note_alt_outlined),
      //       activeColor: white_blue,
      //       inactiveColor: grey_text,
      //     ),
      //     BottomNavyBarItem(
      //       title: Center(child: Text('Thông báo')),
      //       icon: Icon(Icons.notifications),
      //       activeColor: white_blue,
      //       inactiveColor: grey_text,
      //     ),
      //     BottomNavyBarItem(
      //       title: Center(child: Text('Cá nhân')),
      //       icon: Icon(Icons.person),
      //       activeColor: white_blue,
      //       inactiveColor: grey_text,
      //     ),
      //   ],
      //   onItemSelected: (index) {
      //     setState(() => {
      //           _currentIndex = index,
      //           if (index == 0) {_currentTab = HomeTab()},
      //           if (index == 1) {_currentTab = PostListPage()},
      //           if (index == 2) {_currentTab = NotificationTab()},
      //           if (index == 3) {_currentTab = ProfilePage()}
      //         });
      //   },
      // ),
      body: PageStorage(child: _currentTab, bucket: bucket),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create),
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //     builder: (context) => CriteriaList(
          //           title: 'Tạo',
          //         )));

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PostCreateTab1(
                    title: 'Tạo',
                  )));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      // Navigator.of(context).push(MaterialPageRoute(
                      //     builder: (context) => Home(currentIndexInput: 0)));
                      setState(() {
                        _currentTab = HomeTab();
                        _currentIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home,
                            color: _currentIndex == 0 ? white_blue : grey_text),
                        Text(
                          "Trang chủ",
                          style: TextStyle(
                              color:
                                  _currentIndex == 0 ? white_blue : grey_text),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(),
              SizedBox(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        _currentTab = ProfilePage();
                        _currentIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person,
                            color: _currentIndex == 1 ? white_blue : grey_text),
                        Text(
                          "Cá nhân",
                          style: TextStyle(
                              color:
                                  _currentIndex == 1 ? white_blue : grey_text),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<Post> list = PostPresenter().getPostList();
    return SafeArea(
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      //       child: Text(
      //         "Xin chào, Phi Long",
      //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      //       ),
      //     ),
      //     Padding(
      //       padding: const EdgeInsets.only(left: 26),
      //       child: Row(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           Expanded(
      //             child: Container(
      //               height: size.height * 0.09,
      //               child: TextFormField(
      //                 textAlignVertical: TextAlignVertical.center,
      //                 decoration: InputDecoration(
      //                   hintText: "Tìm kiếm tên chiến dịch",
      //                   prefixIcon: Icon(Icons.search),
      //                   border: OutlineInputBorder(
      //                       borderRadius: BorderRadius.circular(10)),
      //                 ),
      //               ),
      //             ),
      //           ),
      //           IconButton(
      //               onPressed: () {},
      //               icon: Icon(
      //                 Icons.filter_alt_outlined,
      //                 size: 30,
      //               ))
      //         ],
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //           child: ListView.builder(
      //         itemCount: list.length ~/ 2,
      //         itemBuilder: (context, i) {
      //           return CampainItem(
      //             campaign1: list[i * 2],
      //             campaign2: list[i * 2 + 1],
      //           );
      //         },
      //       )),
      //     ),
      //   ],
      // ),
      child: Container(
          // child: Column(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(15),
          //       child: Container(
          //         child: Row(
          //           children: [
          //             Expanded(
          //               child: Row(
          //                 children: [
          //                   Container(
          //                     width: size.height * 0.07,
          //                     height: size.height * 0.07,
          //                     decoration: BoxDecoration(
          //                         image: DecorationImage(
          //                             image: NetworkImage(
          //                                 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi'),
          //                             fit: BoxFit.cover),
          //                         borderRadius:
          //                             BorderRadius.circular(size.height * 0.1)),
          //                   ),
          //                   SizedBox(
          //                     width: size.width * 0.03,
          //                   ),
          //                   Text(
          //                     "Xin chào, Phi Long",
          //                     style: TextStyle(
          //                         fontSize: 16, fontWeight: FontWeight.bold),
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             GestureDetector(
          //               onTap: () {
          //                 Navigator.of(context).push(MaterialPageRoute(
          //                     builder: (context) => NotificationTab()));
          //               },
          //               child: Container(
          //                 width: size.width * 0.1,
          //                 child: Icon(
          //                   Icons.notifications_outlined,
          //                   color: white_blue,
          //                   size: 30,
          //                 ),
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //     Expanded(child: TabbedAppBarDemo())
          //   ],
          // ),
          child: TabbedAppBarDemo()),
    );
  }
}

class PostListComponent extends StatelessWidget {
  final int check;
  final List<Post> list;
  const PostListComponent({Key? key, required this.list, required this.check})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: white_blue.withOpacity(0.2)),
      child: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, i) {
          return PostItem(post: list[i], check: check);
        },
      ),
    );
  }
}
