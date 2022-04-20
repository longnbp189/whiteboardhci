import 'package:flutter/material.dart';
import 'package:whiteboard_hci/components/post_item.dart';
import 'package:whiteboard_hci/models/post.dart';
import 'package:whiteboard_hci/presenters/post_presenter.dart';

class PostListPage extends StatefulWidget {
  final int check;
  const PostListPage({Key? key, required this.check}) : super(key: key);

  @override
  _PostListPageState createState() => _PostListPageState();
}

class _PostListPageState extends State<PostListPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    List<Post> list = PostPresenter().getPostList();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Bài viết'),
          centerTitle: true,
        ),
        body: Container(
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, i) {
              return PostItem(post: list[i], check: widget.check);
            },
          ),
        ),
      ),
    );
  }
}
