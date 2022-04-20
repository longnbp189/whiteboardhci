import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:whiteboard_hci/components/slide_image.dart';
import 'package:whiteboard_hci/models/comment.dart';
import 'package:whiteboard_hci/models/criteria.dart';
import 'package:whiteboard_hci/models/post.dart';
import 'package:whiteboard_hci/presenters/comment_presenter.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/home.dart';
import 'package:whiteboard_hci/views/post_create.dart';

class PostDetailPage extends StatefulWidget {
  final int check;
  final Post post;
  final String? message;
  const PostDetailPage(
      {Key? key, required this.post, this.message, required this.check})
      : super(key: key);

  @override
  _PostDetailPageState createState() => _PostDetailPageState();
}

class _PostDetailPageState extends State<PostDetailPage> {
  List<DropdownMenuItem<String>>? _dropDownMenuItem;
  String? _selectedCriteria;
  List<bool> checkList = [];
  @override
  void initState() {
    // _dropDownMenuItem =
    //     builDropDownMenuItems(widget.post.criteria!, widget.post.number!);
    // _selectedCriteria = _dropDownMenuItem![0].value;
    for (int i = 0; i < widget.post.criteria!.length; i++) {
      checkList.add(false);
    }
    checkList[0] = true;
    super.initState();
  }

  onChangeDropdownItemm(String? selectedCriteria) {
    // setState(() {
    //   _selectedCriteria = selectedCriteria;
    //   selectedCriteriaChildren = [];
    //   selectedCriteriaChildren = data[selectedCriteria!.id! - 1];
    // });
  }
  @override
  Widget build(BuildContext context) {
    List<Widget> listCriteria(
        Size size, List<Criteria> listCriteria, List<Post> listPost) {
      List<Widget> view = [];

      for (var i = 0; i < listCriteria.length; i++) {
        view.add(
          Column(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    if (checkList[i]) {
                      checkList[i] = false;
                    } else {
                      checkList[i] = true;
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.black, width: 1))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5, bottom: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              listCriteria[i].name.toString(),
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          // Container(
                          //     height: 10,
                          //     child: Row(
                          //       children: star(listCriteria[i].num!, 26),
                          //     )),
                          (widget.post.listPost![i].err != null)
                              ? Icon(
                                  Icons.error_outline,
                                  color: Colors.red.shade600,
                                )
                              : SizedBox(),
                          Icon(Icons.expand_more)
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              (checkList[i])
                  ? Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          (widget.message != null ||
                                  widget.post.listPost![i].err != null)
                              ? Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.red.shade600),
                                      color: Colors.red.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(
                                          size.height * 0.02),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Icon(Icons.error_outline,
                                                size: 30,
                                                color: Colors.red.shade600),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Container(
                                            width: size.width - 125,
                                            child: Text(
                                              widget.message != null
                                                  ? 'Bài viết của bạn không được chấp nhận bởi vì chứa những từ ngữ không thích hợp.'
                                                  : 'Bài viết của bạn không được chấp nhận bởi vì ' +
                                                      widget
                                                          .post.listPost![i].err
                                                          .toString(),
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.red
                                                      .withOpacity(0.9)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : SizedBox(),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Đánh giá chi tiết: ',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            child: Column(
                              children: listCriteriaChild(
                                  size, widget.post.listPost![i].criteria!),
                            ),
                          ),

                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Ưu điểm',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            widget.post.listPost![i].advantage.toString(),
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Nhược điểm',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            widget.post.listPost![i].disadvantage.toString(),
                            style: TextStyle(fontSize: 14),
                          ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // Wrap(
                          //   direction: Axis.horizontal,
                          //   runSpacing: 10,
                          //   spacing: 10,
                          //   children: getCriterial(widget.post.criteria!),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // Row(
                          //   children: [
                          //     Expanded(child: SizedBox()),
                          //     Text(
                          //       widget.post.postDate.toString(),
                          //       style: TextStyle(fontSize: 14, color: grey_text),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(
                            height: 20,
                          ),
                          (widget.post.listPost![i].image!.length > 1)
                              ? SlideImage1(imageUrl: widget.post.image)
                              : (widget.post.listPost![i].image!.length == 1)
                                  ? Image(
                                      height: size.height * 0.3,
                                      image: NetworkImage(widget
                                          .post.listPost![i].image![0]
                                          .toString()),
                                      fit: BoxFit.cover)
                                  :
                                  //  (widget.post.image == null || widget.post.image!.length == 0)?
                                  SizedBox(),
                          // Column(
                          //   children: imageView(widget.post.image),
                          // ),
                          // Expanded(
                          //   child: Container(
                          //     child: ListView.builder(
                          //       scrollDirection: Axis.horizontal,
                          //       itemCount: widget.post.image!.length,
                          //       itemBuilder: (context, i) {
                          //         return Image(
                          //             height: size.height * 0.3,
                          //             image:
                          //                 NetworkImage(widget.post.image![i].toString()),
                          //             fit: BoxFit.cover);
                          //       },
                          //     ),
                          //   ),
                          // ),

                          // (widget.message == null &&
                          //         widget.post.err == null &&
                          //         widget.post.status != 1)
                          //     ? Column(
                          //         children: [
                          //           SizedBox(
                          //             height: 20,
                          //           ),
                          //           Row(
                          //             children: [
                          //               SizedBox(
                          //                 width: 15,
                          //               ),
                          //               Text(widget.post.like.toString()),
                          //               SizedBox(
                          //                 width: 5,
                          //               ),
                          //               Icon(Icons.favorite_border),
                          //               SizedBox(
                          //                 width: 20,
                          //               ),
                          //               Text(widget.post.comment.toString()),
                          //               SizedBox(
                          //                 width: 5,
                          //               ),
                          //               Icon(Icons.chat_bubble_outline),
                          //             ],
                          //           ),
                          //           SizedBox(
                          //             height: 10,
                          //           ),
                          //           Divider(
                          //             thickness: 1,
                          //             color: grey_text,
                          //           ),
                          //           Column(
                          //             children: commentView(size),
                          //           ),
                          //         ],
                          //       )
                          //     : SizedBox(),
                        ],
                      ),
                    )
                  : SizedBox()
            ],
          ),
        );
      }

      return view;
    }

    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: white_blue),
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
            if (widget.message != null ||
                widget.post.err != null ||
                widget.post.status == 1)
              IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PostCreateTab1(
                              title: 'Sửa',
                            )));
                  },
                  icon: Icon(Icons.edit))
          ],
        ),
        // body: Container(
        // floatHeaderSlivers: true,
        // headerSliverBuilder: (context, inner) => [
        //   SliverAppBar(
        //     iconTheme: IconThemeData(color: white_blue),
        //     centerTitle: true,
        //     backgroundColor: Colors.white,
        //     floating: true,
        //     snap: true,
        //     title: Text("Bài viết", style: TextStyle(color: white_blue)),
        //     actions: [
        //       IconButton(
        //           onPressed: () {
        //             showAlertDelete(context);
        //           },
        //           icon:
        //               Icon(Icons.delete_outline, color: Colors.red.shade600)),
        //       if (widget.message != null ||
        //           widget.post.err != null ||
        //           widget.post.status == 1)
        //         TextButton(
        //             onPressed: () {
        //               Navigator.of(context).push(MaterialPageRoute(
        //                   builder: (context) => PostCreateTab1(
        //                         title: 'Sửa',
        //                       )));
        //             },
        //             child: Text(
        //               'Sửa',
        //               style: TextStyle(color: Colors.white, fontSize: 18),
        //             ))
        //     ],
        //   )
        // ],
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(
            children: [
              // (widget.message != null || widget.post.err != null)
              //     ? Padding(
              //         padding: const EdgeInsets.only(bottom: 10),
              //         child: Container(
              //           decoration: BoxDecoration(
              //             border: Border.all(color: Colors.red.shade600),
              //             color: Colors.red.withOpacity(0.1),
              //             borderRadius:
              //                 BorderRadius.circular(size.height * 0.02),
              //           ),
              //           child: Padding(
              //             padding: const EdgeInsets.all(10.0),
              //             child: Row(
              //               children: [
              //                 Padding(
              //                   padding: const EdgeInsets.all(8.0),
              //                   child: Icon(Icons.error_outline,
              //                       size: 30, color: Colors.red.shade600),
              //                 ),
              //                 SizedBox(
              //                   width: 10,
              //                 ),
              //                 Container(
              //                   width: size.width - 125,
              //                   child: Text(
              //                     widget.message != null
              //                         ? 'Bài viết của bạn không được chấp nhận bởi vì chứa những từ ngữ không thích hợp.'
              //                         : 'Bài viết của bạn không được chấp nhận bởi vì ' +
              //                             widget.post.err.toString(),
              //                     style: TextStyle(
              //                         fontSize: 13,
              //                         color: Colors.red.withOpacity(0.9)),
              //                   ),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       )
              //     : SizedBox(),

              // Container(
              //   child: Row(
              //     children: [
              //       Container(
              //         width: size.height * 0.05,
              //         height: size.height * 0.05,
              //         decoration: BoxDecoration(
              //             image: DecorationImage(
              //                 image:
              //                     NetworkImage(widget.post.avatar.toString()),
              //                 fit: BoxFit.cover),
              //             borderRadius:
              //                 BorderRadius.circular(size.height * 0.1)),
              //       ),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             widget.post.campaignName.toString() +
              //                 " (" +
              //                 widget.post.schoolName.toString() +
              //                 " - " +
              //                 widget.post.campusName.toString() +
              //                 ") ",
              //             style: TextStyle(
              //                 fontWeight: FontWeight.bold, fontSize: 16),
              //           ),
              //           SizedBox(
              //             height: 5,
              //           ),
              //           Text(
              //             widget.post.postDate.toString(),
              //             style: TextStyle(fontSize: 12, color: grey_text),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              // Row(
              //   children: [
              //     Text(
              //       'Tiêu chí: ',
              //       style: TextStyle(
              //           fontSize: 18,
              //           color: Colors.black,
              //           fontWeight: FontWeight.bold),
              //     ),
              //     SizedBox(
              //       width: 7,
              //     ),
              //     Text(
              //       widget.post.title.toString(),
              //       style: TextStyle(
              //         fontSize: 17,
              //         color: Colors.black,
              //       ),
              //     ),
              //   ],
              // ),

              // SizedBox(
              //   height: 5,
              // ),
              Text(
                'Tổng quan:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: star(widget.post.number!.toInt(), 35),
                  ),
                  // SizedBox(
                  //   width: 5,
                  // ),
                  // Text(
                  //   widget.post.number.toString() + ",0",
                  //   style: TextStyle(fontSize: 20, color: Colors.black),
                  // ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              // Text(
              //   'Đánh giá chi tiết: ',
              //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              // ),
              Container(
                child: Column(
                  children: listCriteria(
                      size, widget.post.criteria!, widget.post.listPost!),
                ),
              ),

              // SizedBox(
              //   height: 25,
              // ),
              // Text(
              //   'Ưu điểm',
              //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              // ),
              // SizedBox(
              //   height: 5,
              // ),
              // Text(
              //   widget.post.advantage.toString(),
              //   style: TextStyle(fontSize: 14),
              // ),
              // SizedBox(
              //   height: 30,
              // ),
              // Text(
              //   'Nhược điểm',
              //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Text(
              //   widget.post.disadvantage.toString(),
              //   style: TextStyle(fontSize: 14),
              // ),
              // // SizedBox(
              // //   height: 20,
              // // ),
              // // Wrap(
              // //   direction: Axis.horizontal,
              // //   runSpacing: 10,
              // //   spacing: 10,
              // //   children: getCriterial(widget.post.criteria!),
              // // ),
              // // SizedBox(
              // //   height: 20,
              // // ),
              // // Row(
              // //   children: [
              // //     Expanded(child: SizedBox()),
              // //     Text(
              // //       widget.post.postDate.toString(),
              // //       style: TextStyle(fontSize: 14, color: grey_text),
              // //     ),
              // //   ],
              // // ),
              // SizedBox(
              //   height: 20,
              // ),
              // if (widget.post.image!.length > 1)
              //   SlideImage1(imageUrl: widget.post.image),
              // if (widget.post.image!.length == 1)
              //   Image(
              //       height: size.height * 0.3,
              //       image: NetworkImage(widget.post.image![0].toString()),
              //       fit: BoxFit.cover),
              // if (widget.post.image == null || widget.post.image!.length == 0)
              //   SizedBox(),
              // // Column(
              // //   children: imageView(widget.post.image),
              // // ),
              // // Expanded(
              // //   child: Container(
              // //     child: ListView.builder(
              // //       scrollDirection: Axis.horizontal,
              // //       itemCount: widget.post.image!.length,
              // //       itemBuilder: (context, i) {
              // //         return Image(
              // //             height: size.height * 0.3,
              // //             image:
              // //                 NetworkImage(widget.post.image![i].toString()),
              // //             fit: BoxFit.cover);
              // //       },
              // //     ),
              // //   ),
              // // ),

              if (widget.message == null &&
                  widget.post.err == null &&
                  widget.post.status != 1)
                Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Text(widget.post.like.toString()),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.favorite_border),
                        SizedBox(
                          width: 20,
                        ),
                        Text(widget.post.comment.toString()),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.chat_bubble_outline),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      thickness: 1,
                      color: grey_text,
                    ),
                    Column(
                      children: commentView(size),
                    ),
                  ],
                ),

              // Row(
              //   children: [
              //     SizedBox(
              //       width: 15,
              //     ),
              //     Text(widget.post.like.toString()),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     Icon(Icons.favorite_border),
              //     SizedBox(
              //       width: 20,
              //     ),
              //     Text(widget.post.comment.toString()),
              //     SizedBox(
              //       width: 5,
              //     ),
              //     Icon(Icons.chat_bubble_outline),
              //   ],
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Divider(
              //   thickness: 1,
              //   color: grey_text,
              // ),

              // Column(
              //   children: commentView(size),
              // )
            ],
          ),
        ),
        // ),
      ),
    );
  }

  List<Widget> listCriteriaChild(Size size, List<Criteria> listCriteria) {
    List<Widget> view = [];

    for (var i = 0; i < listCriteria.length; i++) {
      view.add(
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          listCriteria[i].name.toString(),
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Container(
                          height: 10,
                          child: Row(
                            children: star(listCriteria[i].num!, 25),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return view;
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

  List<Widget> commentView(Size size) {
    List<Widget> view = [];
    List<Comment> comments = CommentPresenter().getCommentList();

    for (var i = 0; i < comments.length; i++) {
      view.add(
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: size.height * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(comments[i].image.toString()),
                              fit: BoxFit.cover),
                          borderRadius:
                              BorderRadius.circular(size.height * 0.1)),
                    ),
                    SizedBox(
                      width: size.width * 0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 20,
                          width: size.width - 95,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  comments[i].name.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                              ),
                              Text(
                                comments[i].date.toString(),
                                style:
                                    TextStyle(fontSize: 12, color: grey_text),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          comments[i].content.toString(),
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Divider(
                  color: grey_text,
                  thickness: 0.5,
                  indent: 50,
                )
              ],
            ),
          ),
        ),
      );
    }

    return view;
  }

  List<Widget> star(int num, double sizee) {
    List<Widget> list = [];
    for (var i = 0; i < num; i++) {
      list.add(Icon(
        Icons.star,
        size: sizee,
        color: Colors.amber,
      ));
      list.add(SizedBox(
        width: 3,
      ));
    }
    for (var i = 0; i < 5 - num; i++) {
      list.add(Icon(
        Icons.star_outline,
        size: sizee,
        color: Colors.amber,
      ));
      list.add(SizedBox(
        width: 3,
      ));
    }
    return list;
  }

  List<DropdownMenuItem<String>>? builDropDownMenuItems(
      List<Criteria> criterias, int number) {
    List<DropdownMenuItem<String>> items = [];
    items.add(
      DropdownMenuItem(
        value: 'ac',
        child: Container(
            height: 40,
            width: 150,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: star(number, 30),
                  )
                ],
              ),
            )),
      ),
    );
    // items.add(
    //   DropdownMenuItem(
    //     value: 'vcvcv',
    //     child: Container(
    //         height: criterias.length * 60,
    //         width: 176,
    //         child: ListView.builder(
    //             itemCount: criterias.length,
    //             itemBuilder: (context, index) {
    //               return Padding(
    //                 padding: const EdgeInsets.all(10.0),
    //                 child: Container(
    //                   child: Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       Text(criterias[index].name.toString()),
    //                       Row(
    //                         children: star(criterias[index].num!, 20),
    //                       )
    //                     ],
    //                   ),
    //                 ),
    //               );
    //             })),
    //   ),
    // );
    return items;
  }

  List<Widget> imageView(List<String>? images) {
    List<Widget> views = [];
    for (int i = 0; i < images!.length; i++) {
      views.add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image(
            height: 300,
            image: NetworkImage(widget.post.image![i].toString()),
            fit: BoxFit.cover),
      ));
    }
    return views;
  }

  // Widget buildCard(String title) => Padding(
  //       padding: EdgeInsets.all(10),
  //       child: Card(
  //         child: ExpandablePanel(
  //             header: Text(
  //               title,
  //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  //             ),
  //             collapsed: Text(
  //               "a",
  //               style: TextStyle(fontSize: 18),
  //             ),
  //             expanded: Text(List.generate(0, (_) => null))),
  //       ),
  //     );
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
    'Khách mời',
    'Quy mô sự kiện',
    'Đội ngũ sự kiện',
    'Ý nghĩa',
  ],
];
