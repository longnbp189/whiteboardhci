import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whiteboard_hci/models/campaign.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/campaign_detail.dart';

class CampainItem extends StatelessWidget {
  final Campaign? campaign1;
  final Campaign? campaign2;
  const CampainItem({Key? key, this.campaign1, this.campaign2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CampainDetailPage(campaign: campaign1!)));
          },
          child: Container(
            width: size.width * 0.4,
            margin: EdgeInsets.only(
                bottom: size.height * 0.01,
                top: size.height * 0.01,
                left: size.height * 0.01,
                right: size.height * 0.01),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: grey_text, spreadRadius: 1),
                ],
                color: Colors.white),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.13,
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(campaign1!.image.toString()),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: size.width * 0.4,
                  margin: EdgeInsets.all(size.height * 0.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        campaign1!.schoolName.toString() +
                            " - " +
                            campaign1!.campusName.toString(),
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: size.height * 0.005,
                      ),
                      Text(
                        campaign1!.campaignName.toString(),
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: size.height * 0.005,
                      ),
                      Text(
                        campaign1!.description.toString(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12, color: grey_text),
                      ),
                      SizedBox(
                        height: size.height * 0.005,
                      ),
                      getCriterial(context, campaign1!),
                      SizedBox(
                        height: size.height * 0.005,
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: !(campaign1!.endDate.toString() == "")
                            ? Text(
                                "Hạn chót: " + campaign1!.endDate.toString(),
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black),
                              )
                            : SizedBox(
                                height: 10,
                              ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CampainDetailPage(campaign: campaign2!)));
          },
          child: Container(
            width: size.width * 0.4,
            margin: EdgeInsets.only(
                bottom: size.height * 0.01,
                top: size.height * 0.01,
                left: size.height * 0.01,
                right: size.height * 0.01),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(color: grey_text, spreadRadius: 1),
                ],
                color: Colors.white),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.13,
                  width: size.width * 0.4,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(campaign2!.image.toString()),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: size.width * 0.4,
                  margin: EdgeInsets.all(size.height * 0.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        campaign2!.schoolName.toString() +
                            " - " +
                            campaign2!.campusName.toString(),
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: size.height * 0.005,
                      ),
                      Text(
                        campaign2!.campaignName.toString(),
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: size.height * 0.005,
                      ),
                      Text(
                        campaign2!.description.toString(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 12, color: grey_text),
                      ),
                      SizedBox(
                        height: size.height * 0.005,
                      ),
                      getCriterial(context, campaign2!),
                      SizedBox(
                        height: size.height * 0.005,
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        child: !(campaign2!.endDate.toString() == "")
                            ? Text(
                                "Hạn chót: " + campaign2!.endDate.toString(),
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black),
                              )
                            : null,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget getCriterial(BuildContext context, Campaign campaign) {
  final size = MediaQuery.of(context).size;
  if (campaign.criteria![0].length + campaign.criteria![1].length <= 18)
    return Container(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Text(
                campaign.criteria![0].toString(),
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Text(
                campaign.criteria![1].toString(),
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Text(
                "+" + (campaign.criteria!.length - 2).toString(),
                style: TextStyle(fontSize: 10),
              ),
            ),
          )
        ],
      ),
    );
  else {
    return Container(
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Text(
                campaign.criteria![0].toString(),
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Text(
                "+" + (campaign.criteria!.length - 1).toString(),
                style: TextStyle(fontSize: 10),
              ),
            ),
          )
        ],
      ),
    );
  }
}
