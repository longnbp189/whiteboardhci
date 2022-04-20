import 'package:whiteboard_hci/models/comment.dart';

class CommentPresenter {
  List<Comment> getCommentList() {
    List<Comment> list = [];
    list.add(new Comment(
      name: 'Thành Đạt',
      content: 'Nghìn like',
      date: '21 giờ 26/09/2020',
      image:
          'https://image-us.eva.vn/upload/2-2020/images/2020-05-04/15286944-image-crop-4105x3289-1587457909-728-7a3a5cf9d0-1587984402-1588579083-859-width728height583.jpg',
    ));
    list.add(new Comment(
      name: 'Công Minh',
      content: 'Hay quá',
      date: '21 giờ 27/09/2020',
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Equus_grevyi_mare_Kenya.jpg/300px-Equus_grevyi_mare_Kenya.jpg',
    ));
    list.add(new Comment(
      name: 'Quốc Bảo',
      content: 'Bài viết thật chất lượng',
      date: '21 giờ 28/09/2020',
      image:
          'https://image.bnews.vn/MediaUpload/Org/2016/10/28/154919_lac-da-hai-buou.jpg',
    ));
    list.add(new Comment(
      name: 'Phi Long',
      content: 'Cảm ơn',
      date: '21 giờ 29/09/2020',
      image:
          'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
    ));
    return list;
  }
}
