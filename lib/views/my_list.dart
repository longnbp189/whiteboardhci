import 'package:flutter/material.dart';
import 'package:whiteboard_hci/components/tab_bar.dart';

class MyListPostPage extends StatefulWidget {
  const MyListPostPage({Key? key}) : super(key: key);

  @override
  _MyListPostPageState createState() => _MyListPostPageState();
}

class _MyListPostPageState extends State<MyListPostPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: TabbedAppBarDemo(),
        // body: Column(
        //   children: [
        //     Container(
        //       child: PostListComponent(
        //         list: widget.list,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
