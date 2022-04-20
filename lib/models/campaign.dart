class Campaign {
  String? schoolName;
  String? campusName;
  String? campaignName;
  String? description;
  String? startDate;
  String? endDate;
  String? image;
  int? post;
  int? like;
  int? comment;

  List<String>? criteria;

  Campaign(
      {this.schoolName,
      this.campusName,
      this.campaignName,
      this.description,
      this.criteria,
      this.endDate,
      this.startDate,
      this.image,
      this.post,
      this.like,
      this.comment});
}
