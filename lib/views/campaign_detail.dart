import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whiteboard_hci/models/campaign.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/post_create.dart';

class CampainDetailPage extends StatefulWidget {
  final Campaign campaign;
  const CampainDetailPage({Key? key, required this.campaign}) : super(key: key);

  @override
  _CampainDetailPageState createState() => _CampainDetailPageState();
}

class _CampainDetailPageState extends State<CampainDetailPage> {
  @override
  Widget build(BuildContext context) {
    final f = DateFormat('dd/MM/yyyy');
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, inner) => [
          SliverAppBar(
            floating: true,
            snap: true,
            title: Text(
              "Chiến dịch",
            ),
            centerTitle: true,
          )
        ],
        body: ListView(
          children: [
            Container(
              height: size.height * 0.38,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: Container(
                      height: size.height * 0.3,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image:
                                NetworkImage(widget.campaign.image.toString()),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned(
                    top: size.height * 0.28,
                    right: size.width * 0.1,
                    child: Container(
                      height: size.height * 0.07,
                      width: size.width * 0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.campaign.post.toString(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("Bài viết"),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(15)),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.campaign.like.toString(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("Lượt thích"),
                            ],
                          ),
                          Padding(padding: EdgeInsets.all(15)),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.campaign.comment.toString(),
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("Bình luận"),
                            ],
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: grey_text,
                                spreadRadius: 1,
                                blurRadius: 5),
                          ],
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 10, left: 20, right: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        widget.campaign.campaignName.toString(),
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Mô tả:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.campaign.description.toString(),
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Trạng thái:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    if (widget.campaign.endDate == "")
                      Text(
                        'Đang diễn ra',
                        style: TextStyle(fontSize: 16),
                      ),
                    if (widget.campaign.endDate != "" &&
                        f
                                .parse(widget.campaign.endDate.toString())
                                .compareTo(DateTime.now()) >=
                            0)
                      Text(
                        'Đang diễn ra',
                        style: TextStyle(fontSize: 16),
                      ),
                    if (widget.campaign.endDate != "" &&
                        f
                                .parse(widget.campaign.endDate.toString())
                                .compareTo(DateTime.now()) <
                            0)
                      Text(
                        'Đã kết thúc',
                        style: TextStyle(fontSize: 16),
                      ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Tiêu chí:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Wrap(
                      direction: Axis.horizontal,
                      runSpacing: 10,
                      spacing: 10,
                      children: getCriterial(widget.campaign.criteria!),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    if (widget.campaign.startDate.toString() != "")
                      Text(
                        'Ngày bắt đầu nhận bài: ' +
                            widget.campaign.startDate.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    SizedBox(
                      height: 10,
                    ),
                    if (widget.campaign.endDate.toString() != "")
                      Text(
                        'Ngày kết thúc nhận bài: ' +
                            widget.campaign.endDate.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    SizedBox(
                      height: size.height * 0.03,
                    )
                  ]),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: 65,
        child: FloatingActionButton(
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //     builder: (context) => PostCreateTab1(
            //           campaign: widget.campaign,
            //         )));
          },
          child: const Icon(
            Icons.create,
            size: 30,
          ),
          backgroundColor: white_blue,
        ),
      ),
    ));
  }
}

List<Widget> getCriterial(List<String> criteria) {
  final result = <Widget>[];
  for (var i = 0; i < criteria.length; i++) {
    result.add(
      Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Padding(
            padding: const EdgeInsets.all(2),
            child: Text(
              criteria[i].toString(),
              style: TextStyle(fontSize: 15),
            )),
      ),
    );
  }
  return result;
}
