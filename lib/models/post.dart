import 'package:whiteboard_hci/models/criteria.dart';

class Post {
  String? title;
  String? title1;
  String? title2;
  String? advantage;
  String? campaignName;
  String? campusName;
  String? disadvantage;
  String? schoolName;
  String? postDate;
  String? avatar;
  String? err;
  int? like;
  int? status;
  int? comment;
  int? number;

  List<Post>? listPost;
  List<Criteria>? criteria;
  List<String>? image;

  Post(
      {this.schoolName,
      this.number,
      this.listPost,
      this.title1,
      this.title2,
      this.campusName,
      this.campaignName,
      this.criteria,
      this.avatar,
      this.status,
      this.postDate,
      this.err,
      this.title,
      this.advantage,
      this.disadvantage,
      this.image,
      this.like,
      this.comment});
}
