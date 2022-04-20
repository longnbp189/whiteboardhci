import 'package:flutter/material.dart';
import 'package:whiteboard_hci/components/slide_image.dart';
import 'package:whiteboard_hci/components/tab_bar_detail.dart';
import 'package:whiteboard_hci/models/criteria.dart';
import 'package:whiteboard_hci/models/post.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/post_detail.dart';

class PostItem extends StatefulWidget {
  final int check;
  final Post post;
  const PostItem({Key? key, required this.post, required this.check})
      : super(key: key);

  @override
  _PostItemState createState() => _PostItemState();
}

class _PostItemState extends State<PostItem> {
  List<DropdownMenuItem<String>>? _dropDownMenuItem;
  String? _selectedCriteria;
  @override
  void initState() {
    _dropDownMenuItem =
        builDropDownMenuItems(widget.post.criteria!, widget.post.number!);
    _selectedCriteria = _dropDownMenuItem![0].value;
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
    final size = MediaQuery.of(context).size;

    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7.5),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    PostDetailPage(post: widget.post, check: widget.check)));
            // builder: (context) => TabbedAppBarDetail(
            //       check: widget.check,
            //     )
            // ));
          },
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: size.height * 0.05,
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  NetworkImage(widget.post.avatar.toString()),
                              fit: BoxFit.cover),
                          borderRadius:
                              BorderRadius.circular(size.height * 0.1)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.post.campaignName.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.post.postDate.toString(),
                          style: TextStyle(fontSize: 14, color: grey_text),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                // Row(
                //   children: [
                //     Text(
                //       'Tiêu chí: ',
                //       style: TextStyle(
                //           fontSize: 16,
                //           color: Colors.black,
                //           fontWeight: FontWeight.bold),
                //     ),
                //     SizedBox(
                //       width: 7,
                //     ),
                //     Text(
                //       widget.post.title.toString(),
                //       style: TextStyle(
                //         fontSize: 16,
                //         color: Colors.black,
                //       ),
                //     ),
                //   ],
                // ),
                (widget.post.number.toString() == '5' ||
                        widget.post.number.toString() == '4')
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // widget.post.title.toString(),
                            'Tuyệt vời',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Row(
                                children: star(widget.post.number!.toInt(), 25),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                widget.post.number.toString() + ",0",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                            ],
                          ),
                          // Container(
                          //   height: 68,
                          //   padding:
                          //       EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                          //   child: DropdownButton(
                          //     value: _selectedCriteria,
                          //     items: _dropDownMenuItem,
                          //     underline: SizedBox(),
                          //     onChanged: onChangeDropdownItemm,
                          //   ),
                          // ),
                        ],
                      )
                    : (widget.post.number.toString() == '3')
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // widget.post.title.toString(),
                                'Khá',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children:
                                        star(widget.post.number!.toInt(), 25),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    widget.post.number.toString() + ",0",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ],
                              ),

                              // Container(
                              //   height: 68,
                              //   padding:
                              //       EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                              //   child: DropdownButton(
                              //     value: _selectedCriteria,
                              //     items: _dropDownMenuItem,
                              //     underline: SizedBox(),
                              //     onChanged: onChangeDropdownItemm,
                              //   ),
                              // ),
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // widget.post.title.toString(),
                                'Kém',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children:
                                        star(widget.post.number!.toInt(), 25),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    widget.post.number.toString() + ",0",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ],
                              ),
                              // Container(
                              //   height: 68,
                              //   padding:
                              //       EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                              //   child: DropdownButton(
                              //     value: _selectedCriteria,
                              //     items: _dropDownMenuItem,
                              //     underline: SizedBox(),
                              //     onChanged: onChangeDropdownItemm,
                              //   ),
                              // ),
                            ],
                          ),
                SizedBox(
                  height: 15,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  runSpacing: 10,
                  spacing: 10,
                  children: [
                    (widget.post.err == null)
                        ? Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: white_blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                widget.post.title.toString(),
                                style:
                                    TextStyle(color: white_blue, fontSize: 14),
                              ),
                            ),
                          )
                        : Container(
                            width: 142,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red.shade600),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.error_outline,
                                    color: Colors.red.shade600,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    widget.post.title.toString(),
                                    style: TextStyle(
                                        color: Colors.red.shade600,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),

                    (widget.post.err == null)
                        ? Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: white_blue),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                widget.post.title1.toString(),
                                style:
                                    TextStyle(color: white_blue, fontSize: 14),
                              ),
                            ),
                          )
                        : Container(
                            width: 170,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.red.shade600),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.error_outline,
                                    color: Colors.red.shade600,
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                    widget.post.title1.toString(),
                                    style: TextStyle(
                                        color: Colors.red.shade600,
                                        fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),

                    // (widget.post.err == null)
                    //     ?
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: white_blue),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          widget.post.title2.toString(),
                          style: TextStyle(color: white_blue, fontSize: 14),
                        ),
                      ),
                    ),
                    // : Container(
                    //     width: 100,
                    //     decoration: BoxDecoration(
                    //         border: Border.all(color: Colors.red.shade600),
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(30))),
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(10),
                    //       child: Row(
                    //         children: [
                    //           Icon(
                    //             Icons.error_outline,
                    //             color: Colors.red.shade600,
                    //           ),
                    //           SizedBox(
                    //             width: 5,
                    //           ),
                    //           Text(
                    //             widget.post.title2.toString(),
                    //             style: TextStyle(
                    //                 color: Colors.red.shade600,
                    //                 fontSize: 14),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Center(
                    //   child: Text(
                    //     widget.post.title.toString(),
                    //     textAlign: TextAlign.start,
                    //     style: TextStyle(
                    //         fontWeight: FontWeight.bold, fontSize: 16),
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Text(
                    //   'Ưu điểm',
                    //   style:
                    //       TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    // ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    // Text(
                    //   widget.post.advantage.toString(),
                    //   style: TextStyle(fontSize: 14),
                    //   overflow: TextOverflow.ellipsis,
                    //   maxLines: 3,
                    // ),
                    // SizedBox(
                    //   height: 10,
                    // ),

                    Row(
                      children: [
                        Expanded(child: SizedBox()),
                        Text('Xem chi tiết',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: white_blue,
                              decoration: TextDecoration.underline,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    if (widget.post.image == null) SizedBox(),
                    if (widget.post.image!.length > 1)
                      SlideImage(imageUrl: widget.post.image),
                    if (widget.post.image!.length == 1)
                      Image(
                          height: size.height * 0.3,
                          image: NetworkImage(widget.post.image![0].toString()),
                          fit: BoxFit.cover),
                    if (widget.post.image == null ||
                        widget.post.image!.length == 0)
                      SizedBox(),
                    SizedBox(
                      height: 15,
                    ),
                    if (widget.post.err == null && widget.post.status != 1)
                      Row(
                        children: [
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
                    // if (widget.post.err != null || widget.post.status == 1)
                    //   SizedBox(
                    //     height: 20,
                    //   )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
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
            height: 60,
            width: 160,
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: star(number, 25),
                )
              ],
            )),
      ),
    );
    items.add(
      DropdownMenuItem(
        value: 'vcvcv',
        child: Container(
            height: criterias.length * 60,
            width: 176,
            child: ListView.builder(
                itemCount: criterias.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(criterias[index].name.toString()),
                          Row(
                            children: star(criterias[index].num!, 20),
                          )
                        ],
                      ),
                    ),
                  );
                })),
      ),
    );
    return items;
  }
}
