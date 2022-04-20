import 'package:whiteboard_hci/models/criteria.dart';
import 'package:whiteboard_hci/models/post.dart';

class PostPresenter {
  Post getPost() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '    Dạy học theo định hướng phát triển năng lực học sinh mang đến những thuận lợi sau đây:\n-Linh hoạt cho tất cả các đối tượng học sinh, bất kể nền tảng kiến ​​thức hoặc trình độ hiểu biết.\n-Loại bỏ sự bất bình đẳng trong quá trình học tập, học sinh nắm chắc “chất lượng kiến thức”.\n-Học sinh được chuẩn bị các kỹ năng cần thiết để thành công khi trưởng thành\n-Học sinh học các kĩ năng để học tập tốt hơn và chịu trách nhiệm về quá trình học tập của mình.\n-Học sinh được khuyến khích để phát triển mọi mặt, phát hiện và phát triển thế mạnh của bản thân\n-Học sinh được thỏa sức sáng tạo, từ đó khai thác hết những tiềm lực của học sinh\n-Kéo gần mối quan hệ cô - trò, thầy - trò.',
        disadvantage:
            '-Khó khăn trong cách tiếp cận vấn đề.\n-Chương trình học ở các cấp tuy có giảm tải, nhưng vẫn còn "khá nặng" đối với nhiều giáo viên và học sinh.\n-Công tác đổi mới phương pháp ở nhiều trường học còn thiếu sự giám sát, nhắc nhở từ các cấp lãnh đạo.\n-Nhiều giáo viên chỉ thực hiện đổi mới theo hình thức, mang tính chất đối phó.',
        postDate: '21 giờ 25/09/2021',
        image: [
          'https://i.ytimg.com/vi/01C5TDIrD2o/maxresdefault.jpg',
          'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg',
          'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
          'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
        ],
        criteria: [
          Criteria(name: 'Lộ trình các môn học', num: 5),
          Criteria(name: 'Tài liệu môn học', num: 5),
          Criteria(name: 'Giảng viên', num: 5),
        ],
        number: 5,
        like: 1856,
        comment: 956,
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Môi trường học tập');
  }

  Post getPost1() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            'Dạy học theo định hướng phát triển năng lực học sinh mang đến những thuận lợi sau đây:\n-Linh hoạt cho tất cả các đối tượng học sinh, bất kể nền tảng kiến ​​thức hoặc trình độ hiểu biết.\n-Loại bỏ sự bất bình đẳng trong quá trình học tập, học sinh nắm chắc “chất lượng kiến thức”.\n-Học sinh được chuẩn bị các kỹ năng cần thiết để thành công khi trưởng thành\n-Học sinh học các kĩ năng để học tập tốt hơn và chịu trách nhiệm về quá trình học tập của mình.\n-Học sinh được khuyến khích để phát triển mọi mặt, phát hiện và phát triển thế mạnh của bản thân\n-Học sinh được thỏa sức sáng tạo, từ đó khai thác hết những tiềm lực của học sinh\n-Kéo gần mối quan hệ cô - trò, thầy - trò.',
        disadvantage:
            '- Khó khăn trong cách tiếp cận vấn đề.\n-Chương trình học ở các cấp tuy có giảm tải, nhưng vẫn còn "khá nặng" đối với nhiều giáo viên và học sinh.\n-Công tác đổi mới phương pháp ở nhiều trường học còn thiếu sự giám sát, nhắc nhở từ các cấp lãnh đạo.\n-Nhiều giáo viên chỉ thực hiện đổi mới theo hình thức, mang tính chất đối phó.',
        postDate: '21 giờ 22/09/2021',
        image: [
          'https://i.ytimg.com/vi/01C5TDIrD2o/maxresdefault.jpg',
          'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg',
          'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
          'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
        ],
        criteria: [
          Criteria(name: 'Cơ sở vật chất', num: 5),
          Criteria(name: 'Chât lượng đào tạo', num: 5),
          Criteria(name: 'Sự kiện', num: 5),
        ],
        number: 5,
        like: 1856,
        comment: 956,
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Môi trường học tập');
  }

  List<Post> getPostList() {
    List<Post> list = [];
    list.add(new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '    Dạy học theo định hướng phát triển năng lực học sinh mang đến những thuận lợi sau đây:\n-Linh hoạt cho tất cả các đối tượng học sinh, bất kể nền tảng kiến ​​thức hoặc trình độ hiểu biết.\n-Loại bỏ sự bất bình đẳng trong quá trình học tập, học sinh nắm chắc “chất lượng kiến thức”.\n-Học sinh được chuẩn bị các kỹ năng cần thiết để thành công khi trưởng thành\n-Học sinh học các kĩ năng để học tập tốt hơn và chịu trách nhiệm về quá trình học tập của mình.\n-Học sinh được khuyến khích để phát triển mọi mặt, phát hiện và phát triển thế mạnh của bản thân\n-Học sinh được thỏa sức sáng tạo, từ đó khai thác hết những tiềm lực của học sinh\n-Kéo gần mối quan hệ cô - trò, thầy - trò.',
        disadvantage:
            '-Khó khăn trong cách tiếp cận vấn đề.\n-Chương trình học ở các cấp tuy có giảm tải, nhưng vẫn còn "khá nặng" đối với nhiều giáo viên và học sinh.\n-Công tác đổi mới phương pháp ở nhiều trường học còn thiếu sự giám sát, nhắc nhở từ các cấp lãnh đạo.\n-Nhiều giáo viên chỉ thực hiện đổi mới theo hình thức, mang tính chất đối phó.',
        postDate: '21 giờ 25/09/2021',
        image: [
          'https://i.ytimg.com/vi/01C5TDIrD2o/maxresdefault.jpg',
          'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg',
          'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
          'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
        ],
        criteria: [
          Criteria(name: 'Lộ trình các môn học', num: 5),
          Criteria(name: 'Tài liệu môn học', num: 5),
          Criteria(name: 'Giảng viên', num: 5),
        ],
        number: 5,
        like: 1856,
        comment: 956,
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Môi trường học tập'));
    list.add(new Post(
        avatar:
            'https://photo-cms-anninhthudo.zadn.vn/w600/Uploaded/2021/206/2020_07_28/tho.jpg',
        campaignName: 'Hiếu Nguyễn',
        schoolName: 'UEH',
        campusName: 'HCM',
        advantage:
            'Nhắc tới Trường ĐH Kinh tế TPHCM (UEH) là nhắc tới ngôi trường có bề dày lịch sử và có quy mô rộng lớn. Trường đứng trong top 1000 trường kinh doanh trong bảng xếp hạng thế giới và thuộc top 14 trường đại học trọng điểm Việt Nam. Có thể nói nếu đã là sinh viên tại TP HCM mà không biết đến Đại học Kinh Tế UEH thì quả là thiếu sót bởi đây là ngôi trường có sức hút rất lớn và có tiếng tăm khá lừng lẫy tại Sài Gòn. Nào hãy cùng theo chân mình tìm hiểu về ngôi trường đầy thú vị này nhé. Choáng ngợp bởi ‘một rừng’ CLB, đội, nhóm UEH nổi tiếng là đại học có nhiều câu lạc bộ, đội, nhóm và hoạt động tích cực nhất trong toàn thành. Nếu như bạn là một người năng nổ trong mọi hoạt động từ khi còn học trung học, thì đây chính là môi trường tốt nhất cho bạn tung hoành trong suốt 4 năm đại học. Đừng nghĩ rằng tại trường Kinh tế chỉ có những CLB hoạt động ở những lĩnh vực liên quan như kế toán, tài chính, marketing..., thực tế còn có các CLB tiếng Anh, văn nghệ và các nhóm học tập, nghiên cứu khoa học, nhóm hỗ trợ sinh viên. Và dù bạn là một người sống nội tâm, thường e dè những chốn đông người đi chăng nữa thì ắt hẳn cũng không kiềm lòng được một lần “có một nơi thuộc về” tại các CLB.',
        postDate: '21 giờ 24/09/2021',
        image: [
          'https://truongvietnam.net/wp-content/uploads/2021/04/ueh.gif',
          'https://ueh.edu.vn/images/upload/editer/Green%20campus_800-7.jpg'
        ],
        criteria: [
          Criteria(name: 'Nhà xe', num: 3),
          Criteria(name: 'Căn tin', num: 4),
          Criteria(name: 'Thư viện', num: 5),
          Criteria(name: 'Phòng học', num: 4),
          Criteria(name: 'Phòng thực hành', num: 4),
          Criteria(name: 'Thiết bị giảng dạy', num: 4),
        ],
        number: 4,
        like: 250,
        comment: 351,
        title: 'Tổng quan về trường Đại học Kinh Tế TP.HCM'));
    list.add(new Post(
        avatar:
            'https://giasubaochau.net/storage/posts/November2020/893_day_cho_con_lam_quen_khi_ve_nha_moi.jpg',
        campaignName: 'Ngọc Trí',
        schoolName: 'BK',
        campusName: 'HCM',
        advantage:
            '“Sinh viên Bách Khoa giỏi đến vậy cũng rớt môn sao?” Hầu hết các sinh viên mới vào trường đều mang những quyết tâm to lớn về học bổng, những thành tích xuất sắc. Nhưng thực tế thì… rất phũ phàng. Đầu tiên các bạn sẽ được trải qua những môn đại cương “huyền thoại” như Giải tích 1, Giải tích 2, Đại số tuyến tính. Có những môn học đã đi vào lòng người với những tên gọi bất hủ như: “Xác chết thống kế” (Xác suất Thống kê); “Cơ lưu ban” (Cơ lưu chất). Nghe qua thì thật đáng sợ nhưng chỉ cần các bạn siêng năng, chăm chỉ và nỗ lực nhiều thì việc qua môn cũng không thực sự khó khăn. Bằng chứng cụ thể là mỗi năm vẫn có rất nhiều sinh viên đạt các suất học bổng giá trị. Hãy cố gắng lên nhé! Một ngày nào đó bạn cũng sẽ được một suất thì sao nào? Đại học Bách Khoa – “Lầu Xanh” chốn hoang vu. Vì con gái được coi là “của hiếm”. Bên cạnh “Lầu xanh” còn có “Hắc Điếm” Khoa học Tự Nhiên, “Nữ Nhi Quốc” Khoa học Xã hội và Nhân Văn và “Hồng Lâu Mộng” Quốc tế.',
        postDate: '20 giờ 19/09/2021',
        image: [
          'https://media-cdn.laodong.vn/storage/newsportal/2018/8/5/623249/DH-BK-TPHCM.jpg?w=720&crop=auto&scale=both',
          'https://image.vtc.vn/resize/th/upload/2021/08/08/img202003261516586vksh-15525783.jpg'
        ],
        criteria: [
          Criteria(name: 'Khách mời', num: 4),
          Criteria(name: 'Quy mô sự kiện', num: 4),
          Criteria(name: 'Đội ngũ sự kiện', num: 5),
          Criteria(name: 'Ý nghĩa', num: 3),
        ],
        number: 4,
        like: 900,
        comment: 666,
        title: 'Tổng quan về trường Đại học Bách Khoa TP.HCM'));
    list.add(new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '-Thiết bị dạy học được trang bị theo quy định của Bộ Giáo dục và Đào tạo.-Các phòng học bộ môn được trang bị đầy đủ bàn, ghế, tủ, giá, kệ, hệ thống điện, nước, hệ thống quạt, thông gió, các thiết bị hỗ trợ khác và thiết bị dạy học, học liệu theo tính chất đặc thù của từng bộ môn.',
        disadvantage:
            '-Thiếu phòng chuyên môn, nhà đa năng, các phòng chức năng, khu vực vệ sinh không đảm bảo, thiếu các khu vui chơi giải trí.',
        postDate: '21 giờ 18/09/2021',
        image: [
          'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
          'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
        ],
        criteria: [
          Criteria(name: 'Nhà xe', num: 3),
          Criteria(name: 'Căn tin', num: 4),
          Criteria(name: 'Thư viện', num: 5),
          Criteria(name: 'Phòng học', num: 4),
          Criteria(name: 'Phòng thực hành', num: 4),
          Criteria(name: 'Thiết bị giảng dạy', num: 4),
        ],
        number: 4,
        like: 1500,
        comment: 300,
        title: 'Trường Đại học FPT có những gì?'));
    return list;
  }

  List<Post> getMyPostList() {
    List<Post> list = [];
    list.add(new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '    Dạy học theo định hướng phát triển năng lực học sinh mang đến những thuận lợi sau đây:\n-Linh hoạt cho tất cả các đối tượng học sinh, bất kể nền tảng kiến ​​thức hoặc trình độ hiểu biết.\n-Loại bỏ sự bất bình đẳng trong quá trình học tập, học sinh nắm chắc “chất lượng kiến thức”.\n-Học sinh được chuẩn bị các kỹ năng cần thiết để thành công khi trưởng thành\n-Học sinh học các kĩ năng để học tập tốt hơn và chịu trách nhiệm về quá trình học tập của mình.\n-Học sinh được khuyến khích để phát triển mọi mặt, phát hiện và phát triển thế mạnh của bản thân\n-Học sinh được thỏa sức sáng tạo, từ đó khai thác hết những tiềm lực của học sinh\n-Kéo gần mối quan hệ cô - trò, thầy - trò.',
        disadvantage:
            '-Khó khăn trong cách tiếp cận vấn đề.\n-Chương trình học ở các cấp tuy có giảm tải, nhưng vẫn còn "khá nặng" đối với nhiều giáo viên và học sinh.\n-Công tác đổi mới phương pháp ở nhiều trường học còn thiếu sự giám sát, nhắc nhở từ các cấp lãnh đạo.\n-Nhiều giáo viên chỉ thực hiện đổi mới theo hình thức, mang tính chất đối phó.',
        postDate: '21 giờ 25/09/2021',
        image: [
          'https://i.ytimg.com/vi/01C5TDIrD2o/maxresdefault.jpg',
          'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg',
          'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
          'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
        ],
        criteria: [
          Criteria(name: 'Lộ trình các môn học', num: 5),
          Criteria(name: 'Tài liệu môn học', num: 5),
          Criteria(name: 'Giảng viên', num: 5),
          // Criteria(name: 'Cấp bậc học vấn giảng viên', num: 5),
          // Criteria(name: 'Nội quy trong giảng dạy', num: 5),
          // Criteria(name: 'Chất lượng giáo án các môn học', num: 5),
        ],
        number: 5,
        like: 1856,
        comment: 956,
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Môi trường học tập'));
    list.add(new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '-Thiết bị dạy học được trang bị theo quy định của Bộ Giáo dục và Đào tạo.-Các phòng học bộ môn được trang bị đầy đủ bàn, ghế, tủ, giá, kệ, hệ thống điện, nước, hệ thống quạt, thông gió, các thiết bị hỗ trợ khác và thiết bị dạy học, học liệu theo tính chất đặc thù của từng bộ môn.',
        disadvantage:
            '-Thiếu phòng chuyên môn, nhà đa năng, các phòng chức năng, khu vực vệ sinh không đảm bảo, thiếu các khu vui chơi giải trí.',
        postDate: '21 giờ 18/09/2021',
        image: [
          'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
          'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
        ],
        number: 4,
        criteria: [
          Criteria(name: 'Nhà xe', num: 3),
          Criteria(name: 'Căn tin', num: 4),
          Criteria(name: 'Thư viện', num: 5),
          Criteria(name: 'Phòng học', num: 4),
          Criteria(name: 'Phòng thực hành', num: 4),
          Criteria(name: 'Thiết bị giảng dạy', num: 4),
        ],
        like: 1500,
        comment: 300,
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Môi trường học tập'));
    return list;
  }

  List<Post> getMyPostListPublic() {
    List<Post> list = [];
    list.add(new Post(
        listPost: getPostPublic(),
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '    Dạy học theo định hướng phát triển năng lực học sinh mang đến những thuận lợi sau đây:\n-Linh hoạt cho tất cả các đối tượng học sinh, bất kể nền tảng kiến ​​thức hoặc trình độ hiểu biết.\n-Loại bỏ sự bất bình đẳng trong quá trình học tập, học sinh nắm chắc “chất lượng kiến thức”.\n-Học sinh được chuẩn bị các kỹ năng cần thiết để thành công khi trưởng thành\n-Học sinh học các kĩ năng để học tập tốt hơn và chịu trách nhiệm về quá trình học tập của mình.\n-Học sinh được khuyến khích để phát triển mọi mặt, phát hiện và phát triển thế mạnh của bản thân\n-Học sinh được thỏa sức sáng tạo, từ đó khai thác hết những tiềm lực của học sinh\n-Kéo gần mối quan hệ cô - trò, thầy - trò.',
        disadvantage:
            '-Khó khăn trong cách tiếp cận vấn đề.\n-Chương trình học ở các cấp tuy có giảm tải, nhưng vẫn còn "khá nặng" đối với nhiều giáo viên và học sinh.\n-Công tác đổi mới phương pháp ở nhiều trường học còn thiếu sự giám sát, nhắc nhở từ các cấp lãnh đạo.\n-Nhiều giáo viên chỉ thực hiện đổi mới theo hình thức, mang tính chất đối phó.',
        postDate: '21 giờ 25/09/2021',
        image: [
          'https://i.chungta.vn/2020/02/17/10-1581877494_860x0.jpg',
          'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
        ],
        criteria: [
          Criteria(name: 'Cơ sở vật chất', num: 5),
          Criteria(name: 'Chất lượng đào tạo', num: 5),
          Criteria(name: 'Sự kiện', num: 5),
        ],
        number: 4,
        like: 1856,
        comment: 956,
        title1: 'Chất lượng đào tạo',
        title: 'Cơ sở vật chất',
        title2: 'Sự kiện'));
    list.add(new Post(
        listPost: getPostPublic1(),
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '-Thiết bị dạy học được trang bị theo quy định của Bộ Giáo dục và Đào tạo.-Các phòng học bộ môn được trang bị đầy đủ bàn, ghế, tủ, giá, kệ, hệ thống điện, nước, hệ thống quạt, thông gió, các thiết bị hỗ trợ khác và thiết bị dạy học, học liệu theo tính chất đặc thù của từng bộ môn.',
        disadvantage:
            '-Thiếu phòng chuyên môn, nhà đa năng, các phòng chức năng, khu vực vệ sinh không đảm bảo, thiếu các khu vui chơi giải trí.',
        postDate: '21 giờ 18/09/2021',
        image: [
          'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
        ],
        number: 3,
        criteria: [
          Criteria(name: 'Cơ sở vật chất', num: 5),
          Criteria(name: 'Chất lượng đào tạo', num: 5),
          Criteria(name: 'Sự kiện', num: 5),
        ],
        like: 1500,
        comment: 300,
        title1: 'Chất lượng đào tạo',
        title: 'Cơ sở vật chất',
        title2: 'Sự kiện'));
    return list;
  }

  List<Post>? getPostPublic() {
    List<Post>? list = [];
    list.add(getPost12());
    list.add(getPost11());
    list.add(getPost13());
    return list;
  }

  List<Post>? getPostPublic1() {
    List<Post>? list = [];
    list.add(getPost121());
    list.add(getPost111());
    list.add(getPost131());
    return list;
  }

  // List<Post>? getPostPublic1() {
  //   List<Post>? list = [];
  //   list.add(getPost12());
  //   list.add(getPost11());
  //   list.add(getPost13());
  //   list.add(getPost11());
  //   list.add(getPost13());
  //   return list;
  // }

  List<Post>? getPostWaiting() {
    List<Post>? list = [];
    list.add(getPost22());
    list.add(getPost21());
    list.add(getPost23());
    return list;
  }

  List<Post>? getPostWaiting1() {
    List<Post>? list = [];
    list.add(getPost221());
    list.add(getPost211());
    list.add(getPost231());
    return list;
  }

  List<Post>? getPostUnPublic() {
    List<Post>? list = [];
    list.add(getPost32());
    list.add(getPost31());
    list.add(getPost33());
    return list;
  }

  List<Post>? getPostUnPublic1() {
    List<Post>? list = [];
    list.add(getPost32());
    list.add(getPost34());
    list.add(getPost33());
    return list;
  }

  Post getPost11() {
    return new Post(
      avatar:
          'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
      campaignName: 'Phi Long',
      schoolName: 'FPT',
      campusName: 'HC',
      advantage:
          'Dạy học theo định hướng phát triển năng lực học sinh mang đến những thuận lợi sau đây:\n- Linh hoạt cho tất cả các đối tượng học sinh, bất kể nền tảng kiến ​​thức hoặc trình độ hiểu biết.\n- Loại bỏ sự bất bình đẳng trong quá trình học tập, học sinh nắm chắc “chất lượng kiến thức”.\n- Học sinh được chuẩn bị các kỹ năng cần thiết để thành công khi trưởng thành\n- Học sinh học các kĩ năng để học tập tốt hơn và chịu trách nhiệm về quá trình học tập của mình.\n- Học sinh được khuyến khích để phát triển mọi mặt, phát hiện và phát triển thế mạnh của bản thân\n- Học sinh được thỏa sức sáng tạo, từ đó khai thác hết những tiềm lực của học sinh\n- Kéo gần mối quan hệ cô - trò, thầy - trò.',
      disadvantage:
          '- Khó khăn trong cách tiếp cận vấn đề.\n- Chương trình học ở các cấp tuy có giảm tải, nhưng vẫn còn "khá nặng" đối với nhiều giáo viên và học sinh.\n- Công tác đổi mới phương pháp ở nhiều trường học còn thiếu sự giám sát, nhắc nhở từ các cấp lãnh đạo.\n- Nhiều giáo viên chỉ thực hiện đổi mới theo hình thức, mang tính chất đối phó.',
      postDate: '21 giờ 25/09/2021',
      image: [],
      criteria: [
        Criteria(name: 'Lộ trình các môn học', num: 4),
        Criteria(name: 'Tài liệu môn học', num: 4),
        Criteria(name: 'Giảng viên', num: 4),
      ],
      number: 4,
      like: 1856,
      comment: 956,
    );
  }

  Post getPost111() {
    return new Post(
      avatar:
          'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
      campaignName: 'Phi Long',
      schoolName: 'FPT',
      campusName: 'HC',
      advantage:
          '- Học sinh được chuẩn bị các kỹ năng cần thiết để thành công khi trưởng thành\n- Học sinh học các kĩ năng để học tập tốt hơn và chịu trách nhiệm về quá trình học tập của mình.\n- Học sinh được khuyến khích để phát triển mọi mặt, phát hiện và phát triển thế mạnh của bản thân\n- Học sinh được thỏa sức sáng tạo, từ đó khai thác hết những tiềm lực của học sinh\n- Kéo gần mối quan hệ cô - trò, thầy - trò.',
      disadvantage:
          '- Công tác đổi mới phương pháp ở nhiều trường học còn thiếu sự giám sát, nhắc nhở từ các cấp lãnh đạo.\n- Nhiều giáo viên chỉ thực hiện đổi mới theo hình thức, mang tính chất đối phó.',
      postDate: '21 giờ 25/09/2021',
      image: [],
      criteria: [
        Criteria(name: 'Lộ trình các môn học', num: 3),
        Criteria(name: 'Tài liệu môn học', num: 3),
        Criteria(name: 'Giảng viên', num: 3),
      ],
      number: 4,
      like: 1856,
      comment: 956,
    );
  }

  Post getPost12() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '- Thiết bị dạy học được trang bị theo quy định của Bộ Giáo dục và Đào tạo.\n- Các phòng học bộ môn được trang bị đầy đủ bàn, ghế, tủ, giá, kệ, hệ thống điện, nước, hệ thống quạt, thông gió, các thiết bị hỗ trợ khác và thiết bị dạy học, học liệu theo tính chất đặc thù của từng bộ môn.',
        disadvantage:
            '- Thiếu phòng chuyên môn, nhà đa năng, các phòng chức năng, khu vực vệ sinh không đảm bảo, thiếu các khu vui chơi giải trí.',
        postDate: '21 giờ 18/09/2021',
        image: ['https://i.chungta.vn/2020/02/17/10-1581877494_860x0.jpg'],
        number: 4,
        criteria: [
          Criteria(name: 'Nhà xe', num: 3),
          Criteria(name: 'Căn tin', num: 4),
          Criteria(name: 'Thư viện', num: 5),
          Criteria(name: 'Phòng học', num: 4),
          Criteria(name: 'Phòng thực hành', num: 4),
          Criteria(name: 'Thiết bị giảng dạy', num: 4),
        ],
        like: 1500,
        comment: 300,
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Sự kiện');
  }

  Post getPost121() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '- Thiết bị dạy học được trang bị theo quy định của Bộ Giáo dục và Đào tạo.\n- Các phòng học bộ môn được trang bị đầy đủ bàn, ghế, tủ, giá, kệ, hệ thống điện, nước, hệ thống quạt, thông gió, các thiết bị hỗ trợ khác và thiết bị dạy học, học liệu theo tính chất đặc thù của từng bộ môn.',
        disadvantage:
            '- Thiếu phòng chuyên môn, nhà đa năng, các phòng chức năng, khu vực vệ sinh không đảm bảo, thiếu các khu vui chơi giải trí.',
        postDate: '21 giờ 18/09/2021',
        image: [
          'https://daihoc.fpt.edu.vn/media/2020/04/Co%CC%9B-so%CC%9B%CC%89-va%CC%A3%CC%82t-cha%CC%82%CC%81t-trang-thie%CC%82%CC%81t-bi%CC%A3-hie%CC%A3%CC%82n-%C4%91a%CC%A3i.jpg'
        ],
        number: 3,
        criteria: [
          Criteria(name: 'Nhà xe', num: 3),
          Criteria(name: 'Căn tin', num: 3),
          Criteria(name: 'Thư viện', num: 3),
          Criteria(name: 'Phòng học', num: 3),
          Criteria(name: 'Phòng thực hành', num: 3),
          Criteria(name: 'Thiết bị giảng dạy', num: 3),
        ],
        like: 1500,
        comment: 300,
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Sự kiện');
  }

  Post getPost13() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '- Kỹ năng tương tác giữa các cá nhân tốt.\n- Dồi dào năng lượng từ các cá thể sinh viên của trường.\n- Luôn sáng tạo và đổi mới trong khâu tổ chức.\n- Cẩn thận, tỉ mỉ trong từng chi tiết.',
        disadvantage:
            '- Chi phí tổ chức sự kiện lớn.\n- Thiếu nhân sự tổ chức, thông thường phải thuê ngoài.\n- Hệ thống thiết bị sự kiện kém, lạc hậu không đáp ứng nhu cầu của doanh nghiệp.\n- Gặp rủi ro trong tổ chức khi thuê đơn vị thiếu năng lực tổ chức.',
        postDate: '21 giờ 18/09/2021',
        image: [
          'https://i.ytimg.com/vi/XXeACiNG8EA/maxresdefault.jpg',
        ],
        number: 4,
        criteria: [
          Criteria(name: 'Quy mô sự kiện', num: 4),
          Criteria(name: 'Mức độ đa dạng', num: 4),
          Criteria(name: 'Sức lan tỏa', num: 4),
          Criteria(name: 'Đội ngũ nhân sự', num: 4),
        ],
        like: 1500,
        comment: 300,
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Sự kiện');
  }

  Post getPost131() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '- Dồi dào năng lượng từ các cá thể sinh viên của trường.\n- Luôn sáng tạo và đổi mới trong khâu tổ chức.\n- Cẩn thận, tỉ mỉ trong từng chi tiết.',
        disadvantage:
            '- Hệ thống thiết bị sự kiện kém, lạc hậu không đáp ứng nhu cầu của doanh nghiệp.\n- Gặp rủi ro trong tổ chức khi thuê đơn vị thiếu năng lực tổ chức.',
        postDate: '21 giờ 18/09/2021',
        image: [
          'https://i.ytimg.com/vi/XXeACiNG8EA/maxresdefault.jpg',
        ],
        number: 3,
        criteria: [
          Criteria(name: 'Quy mô sự kiện', num: 3),
          Criteria(name: 'Mức độ đa dạng', num: 3),
          Criteria(name: 'Sức lan tỏa', num: 3),
          Criteria(name: 'Đội ngũ nhân sự', num: 3),
        ],
        like: 1500,
        comment: 300,
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Sự kiện');
  }

  List<Post> getMyPostListWaiting() {
    List<Post> list = [];
    list.add(new Post(
        listPost: getPostWaiting(),
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HC',
        advantage:
            '- Loại bỏ sự bất bình đẳng trong quá trình học tập, học sinh nắm chắc “chất lượng kiến thức”.\n- Học sinh được chuẩn bị các kỹ năng cần thiết để thành công khi trưởng thành\n- Học sinh học các kĩ năng để học tập tốt hơn và chịu trách nhiệm về quá trình học tập của mình.\n- Học sinh được khuyến khích để phát triển mọi mặt, phát hiện và phát triển thế mạnh của bản thân\n- Học sinh được thỏa sức sáng tạo, từ đó khai thác hết những tiềm lực của học sinh\n- Kéo gần mối quan hệ cô - trò, thầy - trò.',
        disadvantage:
            '- Công tác đổi mới phương pháp ở nhiều trường học còn thiếu sự giám sát, nhắc nhở từ các cấp lãnh đạo.\n- Nhiều giáo viên chỉ thực hiện đổi mới theo hình thức, mang tính chất đối phó.',
        postDate: '21 giờ 25/09/2021',
        status: 1,
        image: [
          'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
        ],
        number: 4,
        criteria: [
          Criteria(name: 'Cơ sở vật chất', num: 4),
          Criteria(name: 'Chất lượng đào tạo', num: 4),
          Criteria(name: 'Sự kiện', num: 4),
        ],
        title1: 'Chất lượng đào tạo',
        title: 'Cơ sở vật chất',
        title2: 'Sự kiện'));

    list.add(new Post(
        listPost: getPostWaiting1(),
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            'Trường Đại học FPT được xem là 1 môi trường xanh ở đây trồng rất nhiều cây xanh.',
        disadvantage: 'Trồng rất nhiều cây xanh.',
        postDate: '20 giờ 25/09/2021',
        status: 1,
        image: [
          'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
        ],
        number: 3,
        criteria: [
          Criteria(name: 'Cơ sở vật chất', num: 3),
          Criteria(name: 'Chất lượng đào tạo', num: 3),
          Criteria(name: 'Sự kiện', num: 3),
        ],
        title1: 'Chất lượng đào tạo',
        title: 'Cơ sở vật chất',
        title2: 'Sự kiện'));

    return list;
  }

  Post getPost21() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '- Loại bỏ sự bất bình đẳng trong quá trình học tập, học sinh nắm chắc “chất lượng kiến thức”.\n- Học sinh được chuẩn bị các kỹ năng cần thiết để thành công khi trưởng thành\n- Học sinh học các kĩ năng để học tập tốt hơn và chịu trách nhiệm về quá trình học tập của mình.\n- Học sinh được khuyến khích để phát triển mọi mặt, phát hiện và phát triển thế mạnh của bản thân\n- Học sinh được thỏa sức sáng tạo, từ đó khai thác hết những tiềm lực của học sinh\n- Kéo gần mối quan hệ cô - trò, thầy - trò.',
        disadvantage:
            '- Công tác đổi mới phương pháp ở nhiều trường học còn thiếu sự giám sát, nhắc nhở từ các cấp lãnh đạo.\n- Nhiều giáo viên chỉ thực hiện đổi mới theo hình thức, mang tính chất đối phó.',
        postDate: '21 giờ 25/09/2021',
        status: 1,
        image: [],
        number: 4,
        criteria: [
          Criteria(name: 'Lộ trình các môn học', num: 4),
          Criteria(name: 'Tài liệu môn học', num: 5),
          Criteria(name: 'Giảng viên', num: 3),
        ],
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Sự kiện');
  }

  Post getPost211() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '- Học sinh học các kĩ năng để học tập tốt hơn và chịu trách nhiệm về quá trình học tập của mình.\n- Học sinh được khuyến khích để phát triển mọi mặt, phát hiện và phát triển thế mạnh của bản thân\n- Học sinh được thỏa sức sáng tạo, từ đó khai thác hết những tiềm lực của học sinh\n- Kéo gần mối quan hệ cô - trò, thầy - trò.',
        disadvantage:
            '- Nhiều giáo viên chỉ thực hiện đổi mới theo hình thức, mang tính chất đối phó.',
        postDate: '21 giờ 25/09/2021',
        status: 1,
        image: [],
        number: 3,
        criteria: [
          Criteria(name: 'Lộ trình các môn học', num: 3),
          Criteria(name: 'Tài liệu môn học', num: 3),
          Criteria(name: 'Giảng viên', num: 3),
        ],
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Sự kiện');
  }

  Post getPost22() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            'Khuôn viên trường mang dáng dấp một resort với sự hài hòa của các công trình kiến trúc sinh thái, cây xanh, đảo cò, hồ nước điều hòa tạo cảnh quan và cấp nước cho hệ thống sân vườn tự nhiên.',
        disadvantage: 'Có nhiều con trùng và hiện tượng lá rụng nhiều.',
        postDate: '20 giờ 25/09/2021',
        status: 1,
        image: [
          'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
        ],
        number: 4,
        criteria: [
          Criteria(name: 'Nhà xe', num: 4),
          Criteria(name: 'Căn tin', num: 4),
          Criteria(name: 'Thư viện', num: 5),
          Criteria(name: 'Phòng học', num: 2),
          Criteria(name: 'Phòng thực hành', num: 2),
          Criteria(name: 'Thiết bị giảng dạy', num: 5),
        ],
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Sự kiện');
  }

  Post getPost221() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            'Khuôn viên trường mang dáng dấp một resort với sự hài hòa của các công trình kiến trúc sinh thái, cây xanh, đảo cò, hồ nước điều hòa tạo cảnh quan và cấp nước cho hệ thống sân vườn tự nhiên.',
        disadvantage: 'Có nhiều con trùng và hiện tượng lá rụng nhiều.',
        postDate: '20 giờ 25/09/2021',
        status: 1,
        image: [
          'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
        ],
        number: 3,
        criteria: [
          Criteria(name: 'Nhà xe', num: 3),
          Criteria(name: 'Căn tin', num: 3),
          Criteria(name: 'Thư viện', num: 3),
          Criteria(name: 'Phòng học', num: 3),
          Criteria(name: 'Phòng thực hành', num: 3),
          Criteria(name: 'Thiết bị giảng dạy', num: 3),
        ],
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Sự kiện');
  }

  Post getPost23() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            'Trường tổ chức nhiều sự kiện hoành tráng giúp sinh viên có thể trải nghiệm và học hỏi nhiều hơn.',
        disadvantage: 'Thời gian tổ chức chưa hợp lí.',
        postDate: '20 giờ 25/09/2021',
        status: 1,
        image: [
          'https://chamsockhachang.com/wp-content/uploads/truong-dai-hoc-FPT-ho-chi-minh.jpg',
        ],
        number: 3,
        criteria: [
          Criteria(name: 'Quy mô sự kiện', num: 3),
          Criteria(name: 'Mức độ đa dạng', num: 3),
          Criteria(name: 'Sức lan tỏa', num: 3),
          Criteria(name: 'Đội ngũ nhân sự', num: 3),
        ],
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Sự kiện');
  }

  Post getPost231() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            'Trường tổ chức nhiều sự kiện hoành tráng giúp sinh viên có thể trải nghiệm và học hỏi nhiều hơn.',
        disadvantage: 'Thời gian tổ chức chưa hợp lí.',
        postDate: '20 giờ 25/09/2021',
        status: 1,
        image: [
          'https://chamsockhachang.com/wp-content/uploads/truong-dai-hoc-FPT-ho-chi-minh.jpg',
        ],
        number: 3,
        criteria: [
          Criteria(name: 'Quy mô sự kiện', num: 3),
          Criteria(name: 'Mức độ đa dạng', num: 3),
          Criteria(name: 'Sức lan tỏa', num: 3),
          Criteria(name: 'Đội ngũ nhân sự', num: 3),
        ],
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Sự kiện');
  }

  // Post getPost5() {
  //   return new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       advantage:
  //           'Một buổi sáng đẹp trời. Ngắm nhìn view trường xịn xò các kiểu con đà điều ở lầu 3.',
  //       disadvantage: 'Kiểu con đà điều ở lầu 3.',
  //       postDate: '21 giờ 25/09/2021',
  //       status: 1,
  //       image: [
  //         'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
  //       ],
  //       number: 5,
  //       criteria: [
  //         Criteria(name: 'Lộ trình các môn học', num: 5),
  //         Criteria(name: 'Tài liệu môn học', num: 5),
  //         Criteria(name: 'Giảng viên', num: 5),
  //       ],
  //       title: 'Chất lượng đào tạo',
  //       title1: 'Cơ sở vật chất',
  //       title2: 'Môi trường học tập');
  // }

  // Post getPost6() {
  //   return new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       err: 'không có nội dung',
  //       advantage: 's',
  //       disadvantage: 's',
  //       postDate: '21 giờ 25/09/2021',
  //       image: [
  //         'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg',
  //       ],
  //       number: 5,
  //       criteria: [
  //         Criteria(name: 'Khách mời', num: 5),
  //         Criteria(name: 'Quy mô', num: 5),
  //         Criteria(name: 'Đội ngũ tổ chức', num: 5),
  //       ],
  //       title: 'Chất lượng đào tạo',
  //       title1: 'Cơ sở vật chất',
  //       title2: 'Sự kiện');
  // }

  List<Post> getMyPostListRefuse() {
    List<Post> list = [];
    list.add(new Post(
        listPost: getPostUnPublic(),
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        err: 'không có nội dung',
        postDate: '21 giờ 25/09/2021',
        image: [
          'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg',
        ],
        number: 2,
        criteria: [
          Criteria(name: 'Cơ sở vật chất', num: 3),
          Criteria(name: 'Chất lượng đào tạo', num: 2),
          Criteria(name: 'Sự kiện', num: 1),
        ],
        title1: 'Chất lượng đào tạo',
        title: 'Cơ sở vật chất',
        title2: 'Sự kiện'));

    // list.add(new Post(
    //     listPost: getPostUnPublic1(),
    //     avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
    //     campaignName: 'Phi Long',
    //     schoolName: 'FPT',
    //     campusName: 'HCM',
    //     err: 'nội dung không liên quan đến tiêu chí bài viết.',
    //     advantage:
    //         'Trường Đại học FPT được xem là 1 môi trường xanh ở đây trồng rất nhiều cây xanh.',
    //     disadvantage: 'Trồng rất nhiều cây xanh.',
    //     postDate: '21 giờ 25/09/2021',
    //     image: [
    //       'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
    //     ],
    //     number: 2,
    //     criteria: [
    //       Criteria(name: 'Cơ sở vật chất', num: 3),
    //       Criteria(name: 'Chất lượng đào tạo', num: 2),
    //       Criteria(name: 'Sự kiện', num: 1),
    //     ],
    //     title: 'Chất lượng đào tạo',
    //     title1: 'Cơ sở vật chất',
    //     title2: 'Sự kiện'));
    return list;
  }

  Post getPost31() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HC',
        err: 'nội dung không liên quan đến tiêu chí bài viết.',
        advantage:
            'Một buổi sáng đẹp trời. Ngắm nhìn view trường xịn xò các kiểu con đà điều ở lầu 3.',
        disadvantage: 'Trường không có mái che học võ cho sinh viên.',
        postDate: '21 giờ 25/09/2021',
        status: 1,
        image: [],
        number: 3,
        criteria: [
          Criteria(name: 'Lộ trình các môn học', num: 3),
          Criteria(name: 'Tài liệu môn học', num: 2),
          Criteria(name: 'Giảng viên', num: 4),
        ],
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Sự kiện');
  }

  Post getPost34() {
    return new Post(
      avatar:
          'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
      campaignName: 'Phi Long',
      schoolName: 'FPT',
      campusName: 'HC',
      advantage:
          'Dạy học theo định hướng phát triển năng lực học sinh mang đến những thuận lợi sau đây:\n- Linh hoạt cho tất cả các đối tượng học sinh, bất kể nền tảng kiến ​​thức hoặc trình độ hiểu biết.\n- Loại bỏ sự bất bình đẳng trong quá trình học tập, học sinh nắm chắc “chất lượng kiến thức”.\n- Học sinh được chuẩn bị các kỹ năng cần thiết để thành công khi trưởng thành\n- Học sinh học các kĩ năng để học tập tốt hơn và chịu trách nhiệm về quá trình học tập của mình.\n- Học sinh được khuyến khích để phát triển mọi mặt, phát hiện và phát triển thế mạnh của bản thân\n- Học sinh được thỏa sức sáng tạo, từ đó khai thác hết những tiềm lực của học sinh\n- Kéo gần mối quan hệ cô - trò, thầy - trò.',
      disadvantage:
          '- Khó khăn trong cách tiếp cận vấn đề.\n- Chương trình học ở các cấp tuy có giảm tải, nhưng vẫn còn "khá nặng" đối với nhiều giáo viên và học sinh.\n- Công tác đổi mới phương pháp ở nhiều trường học còn thiếu sự giám sát, nhắc nhở từ các cấp lãnh đạo.\n- Nhiều giáo viên chỉ thực hiện đổi mới theo hình thức, mang tính chất đối phó.',
      postDate: '21 giờ 25/09/2021',
      image: [],
      criteria: [
        Criteria(name: 'Lộ trình các môn học', num: 4),
        Criteria(name: 'Tài liệu môn học', num: 4),
        Criteria(name: 'Giảng viên', num: 4),
      ],
      number: 4,
      like: 1856,
      comment: 956,
    );
  }

  Post getPost32() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        err: 'nội dung sai sự thật.',
        advantage: 'Cái trường ni thì có cái chi ngon mô toàn tệ.',
        disadvantage: 'Trường có nhiều ma, không có chổ ăn trưa cho sinh viên.',
        postDate: '20 giờ 25/09/2021',
        image: [
          'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
        ],
        number: 1,
        criteria: [
          Criteria(name: 'Nhà xe', num: 1),
          Criteria(name: 'Căn tin', num: 1),
          Criteria(name: 'Thư viện', num: 1),
          Criteria(name: 'Phòng học', num: 1),
          Criteria(name: 'Phòng thực hành', num: 1),
          Criteria(name: 'Thiết bị giảng dạy', num: 1),
        ],
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Sự kiện');
  }

  Post getPost33() {
    return new Post(
        avatar:
            'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
        campaignName: 'Phi Long',
        schoolName: 'FPT',
        campusName: 'HCM',
        advantage:
            '- Kỹ năng tương tác giữa các cá nhân tốt.\n- Dồi dào năng lượng từ các cá thể sinh viên của trường.\n- Luôn sáng tạo và đổi mới trong khâu tổ chức.\n- Cẩn thận, tỉ mỉ trong từng chi tiết.',
        disadvantage:
            '- Chi phí tổ chức sự kiện lớn.\n- Thiếu nhân sự tổ chức, thông thường phải thuê ngoài.\n- Hệ thống thiết bị sự kiện kém, lạc hậu không đáp ứng nhu cầu của doanh nghiệp.\n- Gặp rủi ro trong tổ chức khi thuê đơn vị thiếu năng lực tổ chức.',
        postDate: '20 giờ 25/09/2021',
        image: [
          'https://chamsockhachang.com/wp-content/uploads/truong-dai-hoc-FPT-ho-chi-minh.jpg',
        ],
        number: 2,
        criteria: [
          Criteria(name: 'Quy mô sự kiện', num: 2),
          Criteria(name: 'Mức độ đa dạng', num: 2),
          Criteria(name: 'Sức lan tỏa', num: 2),
          Criteria(name: 'Đội ngũ nhân sự', num: 2),
        ],
        title: 'Chất lượng đào tạo',
        title1: 'Cơ sở vật chất',
        title2: 'Sự kiện');
  }

  // List<Post> getMyPostList1() {
  //   List<Post> list = [];
  //   list.add(new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       advantage:
  //           'Một buổi sáng đẹp trời. Ngắm nhìn view trường xịn xò các kiểu con đà điều ở lầu 3.',
  //       disadvantage: 'Kiểu con đà điều ở lầu 3.',
  //       postDate: '21 giờ 25/09/2021',
  //       status: 1,
  //       image: [
  //         'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
  //       ],
  //       number: 5,
  //       criteria: [
  //         Criteria(name: 'Lộ trình các môn học', num: 5),
  //         Criteria(name: 'Tài liệu môn học', num: 5),
  //         Criteria(name: 'Giảng viên', num: 5),
  //       ],
  //       title: 'Chất lượng đào tạo',
  //       title1: 'Cơ sở vật chất',
  //       title2: 'Môi trường học tập'));

  //   list.add(new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       advantage:
  //           'Trường Đại học FPT được xem là 1 môi trường xanh ở đây trồng rất nhiều cây xanh.',
  //       disadvantage: 'Trồng rất nhiều cây xanh.',
  //       postDate: '20 giờ 25/09/2021',
  //       status: 1,
  //       image: [
  //         'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
  //       ],
  //       number: 4,
  //       criteria: [
  //         Criteria(name: 'Nhà xe', num: 3),
  //         Criteria(name: 'Căn tin', num: 4),
  //         Criteria(name: 'Thư viện', num: 5),
  //         Criteria(name: 'Phòng học', num: 4),
  //         Criteria(name: 'Phòng thực hành', num: 4),
  //         Criteria(name: 'Thiết bị giảng dạy', num: 4),
  //       ],
  //       title: 'Chất lượng đào tạo',
  //       title1: 'Cơ sở vật chất',
  //       title2: 'Môi trường học tập'));
  //   return list;
  // }

  // Post getPost() {
  //   return new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       disadvantage:
  //           '- Lạc vào FPT, bạn sẽ lập tức bị đốn tim bởi không gian xanh mướt và lối kiến trúc đẹp như mơ chẳng kém gì những khu nghỉ dưỡng hạng sang.\n- Sinh viên không cần phải lên tận Hồ Tây để chụp sen, sinh viên Đại học FPT có thể thỏa sức tạo dáng tại hồ sen rộng 2 ha ngay trong khuôn viên nhà trường.\n- Tương truyền rằng: Ở FPT, dàn nam nhân hùng hậu đã áp đảo về mặt số lượng với dàn nữ nhân. Do đó, tỷ lệ Ế của các nam nhân nhà F ngày một tăng theo cấp số nhân.\n- trường Đại Học của tập đoàn FPT thì chắc là cũng tốt đấy, với cả có trường nào pr lại nói trường mình không tốt đâu, còn bị dìm hay không, tốt nghiệp sớm hay muộn chủ yếu là do bản thân thôi, còn vào trường này là phải có điều kiện rồi, nyc mình đang học ở đây  . gia đình bạn có điều kiện và bạn có đam mê với CNTT thì vào thôi chứ còn chờ gì nữa hihi.\n- Mình hiện tại năm cuối của trường, và xác nhận việc dìm học sinh là có thật :slight_smile: Nhưng chỉ là 1 vài giảng viên thôi, mà kiểu giảng viên sát thủ như vậy luôn xuất hiện ở các trường đại học khác mà nên không sao, miễn bạn học tốt, chăm chỉ, tư duy tốt là ok. Bởi vì chương trình học ở đây khá nặng nên nhiều sv bỏ cuộc hoặc out (đó là những sv sức học yếu) nên về kêu ca, đồn thổi, ngụy biện cho cái bất tài của họ là bình thường',
  //       postDate: '21 giờ 25/09/2021',
  //       image: [
  //         'https://i.ytimg.com/vi/01C5TDIrD2o/maxresdefault.jpg',
  //         'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg',
  //         'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
  //         'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
  //       ],
  //       criteria: [
  //         Criteria(name: 'Cơ sở vật chất', num: 5),
  //         Criteria(name: 'Cơ sở vật chất', num: 5),
  //         Criteria(name: 'Cơ sở vật chất', num: 5),
  //         Criteria(name: 'Cơ sở vật chất', num: 5),
  //         Criteria(name: 'Cơ sở vật chất', num: 5),
  //       ],
  //       number: 5,
  //       like: 1856,
  //       comment: 956,
  //       title: 'Tổng quan về trường Đại học FPT TP.HCM');
  // }

  // Post getPost1() {
  //   return new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       content:
  //           '- Lạc vào FPT, bạn sẽ lập tức bị đốn tim bởi không gian xanh mướt và lối kiến trúc đẹp như mơ chẳng kém gì những khu nghỉ dưỡng hạng sang.\n- Sinh viên không cần phải lên tận Hồ Tây để chụp sen, sinh viên Đại học FPT có thể thỏa sức tạo dáng tại hồ sen rộng 2 ha ngay trong khuôn viên nhà trường.\n- Tương truyền rằng: Ở FPT, dàn nam nhân hùng hậu đã áp đảo về mặt số lượng với dàn nữ nhân. Do đó, tỷ lệ Ế của các nam nhân nhà F ngày một tăng theo cấp số nhân.\n- trường Đại Học của tập đoàn FPT thì chắc là cũng tốt đấy, với cả có trường nào pr lại nói trường mình không tốt đâu, còn bị dìm hay không, tốt nghiệp sớm hay muộn chủ yếu là do bản thân thôi, còn vào trường này là phải có điều kiện rồi, nyc mình đang học ở đây  . gia đình bạn có điều kiện và bạn có đam mê với CNTT thì vào thôi chứ còn chờ gì nữa hihi.\n- Mình hiện tại năm cuối của trường, và xác nhận việc dìm học sinh là có thật :slight_smile: Nhưng chỉ là 1 vài giảng viên thôi, mà kiểu giảng viên sát thủ như vậy luôn xuất hiện ở các trường đại học khác mà nên không sao, miễn bạn học tốt, chăm chỉ, tư duy tốt là ok. Bởi vì chương trình học ở đây khá nặng nên nhiều sv bỏ cuộc hoặc out (đó là những sv sức học yếu) nên về kêu ca, đồn thổi, ngụy biện cho cái bất tài của họ là bình thường',
  //       postDate: '21 giờ 22/09/2021',
  //       image: [
  //         'https://i.ytimg.com/vi/01C5TDIrD2o/maxresdefault.jpg',
  //         'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg',
  //         'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
  //         'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
  //       ],
  //       criteria: [
  //         Criteria(name: 'Cơ sở vật chất', num: 5),
  //         Criteria(name: 'Cơ sở vật chất', num: 5),
  //         Criteria(name: 'Cơ sở vật chất', num: 5),
  //         Criteria(name: 'Cơ sở vật chất', num: 5),
  //         Criteria(name: 'Cơ sở vật chất', num: 5),
  //       ],
  //       number: 5,
  //       like: 1856,
  //       comment: 956,
  //       title: 'Tổng quan về trường Đại học FPT TP.HCM');
  // }

  // List<Post> getPostList() {
  //   List<Post> list = [];
  //   list.add(new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       content:
  //           '- Lạc vào FPT, bạn sẽ lập tức bị đốn tim bởi không gian xanh mướt và lối kiến trúc đẹp như mơ chẳng kém gì những khu nghỉ dưỡng hạng sang.\n- Sinh viên không cần phải lên tận Hồ Tây để chụp sen, sinh viên Đại học FPT có thể thỏa sức tạo dáng tại hồ sen rộng 2 ha ngay trong khuôn viên nhà trường.\n- Tương truyền rằng: Ở FPT, dàn nam nhân hùng hậu đã áp đảo về mặt số lượng với dàn nữ nhân. Do đó, tỷ lệ Ế của các nam nhân nhà F ngày một tăng theo cấp số nhân.\n- trường Đại Học của tập đoàn FPT thì chắc là cũng tốt đấy, với cả có trường nào pr lại nói trường mình không tốt đâu, còn bị dìm hay không, tốt nghiệp sớm hay muộn chủ yếu là do bản thân thôi, còn vào trường này là phải có điều kiện rồi, nyc mình đang học ở đây  . gia đình bạn có điều kiện và bạn có đam mê với CNTT thì vào thôi chứ còn chờ gì nữa hihi.\n- Mình hiện tại năm cuối của trường, và xác nhận việc dìm học sinh là có thật :slight_smile: Nhưng chỉ là 1 vài giảng viên thôi, mà kiểu giảng viên sát thủ như vậy luôn xuất hiện ở các trường đại học khác mà nên không sao, miễn bạn học tốt, chăm chỉ, tư duy tốt là ok. Bởi vì chương trình học ở đây khá nặng nên nhiều sv bỏ cuộc hoặc out (đó là những sv sức học yếu) nên về kêu ca, đồn thổi, ngụy biện cho cái bất tài của họ là bình thường',
  //       postDate: '21 giờ 25/09/2021',
  //       image: [
  //         'https://i.ytimg.com/vi/01C5TDIrD2o/maxresdefault.jpg',
  //         'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg',
  //         'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
  //         'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
  //       ],
  //       criteria: [
  //         Criteria(name: 'Lộ trình các môn học', num: 5),
  //         Criteria(name: 'Tài liệu môn học', num: 5),
  //         Criteria(name: 'Giảng viên', num: 5),
  //         Criteria(name: 'Giáo án', num: 5),
  //       ],
  //       number: 5,
  //       like: 1856,
  //       comment: 956,
  //       title: 'Tổng quan về trường Đại học FPT TP.HCM'));
  //   list.add(new Post(
  //       avatar:
  //           'https://photo-cms-anninhthudo.zadn.vn/w600/Uploaded/2021/206/2020_07_28/tho.jpg',
  //       campaignName: 'Hiếu Nguyễn',
  //       schoolName: 'UEH',
  //       campusName: 'HCM',
  //       content:
  //           'Nhắc tới Trường ĐH Kinh tế TPHCM (UEH) là nhắc tới ngôi trường có bề dày lịch sử và có quy mô rộng lớn. Trường đứng trong top 1000 trường kinh doanh trong bảng xếp hạng thế giới và thuộc top 14 trường đại học trọng điểm Việt Nam. Có thể nói nếu đã là sinh viên tại TP HCM mà không biết đến Đại học Kinh Tế UEH thì quả là thiếu sót bởi đây là ngôi trường có sức hút rất lớn và có tiếng tăm khá lừng lẫy tại Sài Gòn. Nào hãy cùng theo chân mình tìm hiểu về ngôi trường đầy thú vị này nhé. Choáng ngợp bởi ‘một rừng’ CLB, đội, nhóm UEH nổi tiếng là đại học có nhiều câu lạc bộ, đội, nhóm và hoạt động tích cực nhất trong toàn thành. Nếu như bạn là một người năng nổ trong mọi hoạt động từ khi còn học trung học, thì đây chính là môi trường tốt nhất cho bạn tung hoành trong suốt 4 năm đại học. Đừng nghĩ rằng tại trường Kinh tế chỉ có những CLB hoạt động ở những lĩnh vực liên quan như kế toán, tài chính, marketing..., thực tế còn có các CLB tiếng Anh, văn nghệ và các nhóm học tập, nghiên cứu khoa học, nhóm hỗ trợ sinh viên. Và dù bạn là một người sống nội tâm, thường e dè những chốn đông người đi chăng nữa thì ắt hẳn cũng không kiềm lòng được một lần “có một nơi thuộc về” tại các CLB.',
  //       postDate: '21 giờ 24/09/2021',
  //       image: [
  //         'https://truongvietnam.net/wp-content/uploads/2021/04/ueh.gif',
  //         'https://ueh.edu.vn/images/upload/editer/Green%20campus_800-7.jpg'
  //       ],
  //       criteria: [
  //         Criteria(name: 'Nhà xe', num: 3),
  //         Criteria(name: 'Căn tin', num: 4),
  //         Criteria(name: 'Thư viện', num: 5),
  //         Criteria(name: 'Phòng học', num: 4),
  //         Criteria(name: 'Phòng thực hành', num: 4),
  //         Criteria(name: 'Thiết bị giảng dạy', num: 4),
  //       ],
  //       number: 4,
  //       like: 250,
  //       comment: 351,
  //       title: 'Tổng quan về trường Đại học Kinh Tế TP.HCM'));
  //   list.add(new Post(
  //       avatar:
  //           'https://giasubaochau.net/storage/posts/November2020/893_day_cho_con_lam_quen_khi_ve_nha_moi.jpg',
  //       campaignName: 'Ngọc Trí',
  //       schoolName: 'BK',
  //       campusName: 'HCM',
  //       content:
  //           '“Sinh viên Bách Khoa giỏi đến vậy cũng rớt môn sao?” Hầu hết các sinh viên mới vào trường đều mang những quyết tâm to lớn về học bổng, những thành tích xuất sắc. Nhưng thực tế thì… rất phũ phàng. Đầu tiên các bạn sẽ được trải qua những môn đại cương “huyền thoại” như Giải tích 1, Giải tích 2, Đại số tuyến tính. Có những môn học đã đi vào lòng người với những tên gọi bất hủ như: “Xác chết thống kế” (Xác suất Thống kê); “Cơ lưu ban” (Cơ lưu chất). Nghe qua thì thật đáng sợ nhưng chỉ cần các bạn siêng năng, chăm chỉ và nỗ lực nhiều thì việc qua môn cũng không thực sự khó khăn. Bằng chứng cụ thể là mỗi năm vẫn có rất nhiều sinh viên đạt các suất học bổng giá trị. Hãy cố gắng lên nhé! Một ngày nào đó bạn cũng sẽ được một suất thì sao nào? Đại học Bách Khoa – “Lầu Xanh” chốn hoang vu. Vì con gái được coi là “của hiếm”. Bên cạnh “Lầu xanh” còn có “Hắc Điếm” Khoa học Tự Nhiên, “Nữ Nhi Quốc” Khoa học Xã hội và Nhân Văn và “Hồng Lâu Mộng” Quốc tế.',
  //       postDate: '20 giờ 19/09/2021',
  //       image: [
  //         'https://media-cdn.laodong.vn/storage/newsportal/2018/8/5/623249/DH-BK-TPHCM.jpg?w=720&crop=auto&scale=both',
  //         'https://image.vtc.vn/resize/th/upload/2021/08/08/img202003261516586vksh-15525783.jpg'
  //       ],
  //       criteria: [
  //         Criteria(name: 'Khách mời', num: 4),
  //         Criteria(name: 'Quy mô sự kiện', num: 4),
  //         Criteria(name: 'Đội ngũ sự kiện', num: 5),
  //         Criteria(name: 'Ý nghĩa', num: 3),
  //       ],
  //       number: 4,
  //       like: 900,
  //       comment: 666,
  //       title: 'Tổng quan về trường Đại học Bách Khoa TP.HCM'));
  //   list.add(new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       content:
  //           '- Tương truyền rằng: Ở FPT, dàn nam nhân hùng hậu đã áp đảo về mặt số lượng với dàn nữ nhân. Do đó, tỷ lệ Ế của các nam nhân nhà F ngày một tăng theo cấp số nhân.\n- trường Đại Học của tập đoàn FPT thì chắc là cũng tốt đấy, với cả có trường nào pr lại nói trường mình không tốt đâu, còn bị dìm hay không, tốt nghiệp sớm hay muộn chủ yếu là do bản thân thôi, còn vào trường này là phải có điều kiện rồi, nyc mình đang học ở đây  . gia đình bạn có điều kiện và bạn có đam mê với CNTT thì vào thôi chứ còn chờ gì nữa hihi.\n- Mình hiện tại năm cuối của trường, và xác nhận việc dìm học sinh là có thật :slight_smile: Nhưng chỉ là 1 vài giảng viên thôi, mà kiểu giảng viên sát thủ như vậy luôn xuất hiện ở các trường đại học khác mà nên không sao, miễn bạn học tốt, chăm chỉ, tư duy tốt là ok. Bởi vì chương trình học ở đây khá nặng nên nhiều sv bỏ cuộc hoặc out (đó là những sv sức học yếu) nên về kêu ca, đồn thổi, ngụy biện cho cái bất tài của họ là bình thường',
  //       postDate: '21 giờ 18/09/2021',
  //       image: [
  //         'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
  //         'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
  //       ],
  //       criteria: [
  //         Criteria(name: 'Nhà xe', num: 3),
  //         Criteria(name: 'Căn tin', num: 4),
  //         Criteria(name: 'Thư viện', num: 5),
  //         Criteria(name: 'Phòng học', num: 4),
  //         Criteria(name: 'Phòng thực hành', num: 4),
  //         Criteria(name: 'Thiết bị giảng dạy', num: 4),
  //       ],
  //       number: 4,
  //       like: 1500,
  //       comment: 300,
  //       title: 'Trường Đại học FPT có những gì?'));
  //   return list;
  // }

  // List<Post> getMyPostList() {
  //   List<Post> list = [];
  //   list.add(new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       content:
  //           '- Lạc vào FPT, bạn sẽ lập tức bị đốn tim bởi không gian xanh mướt và lối kiến trúc đẹp như mơ chẳng kém gì những khu nghỉ dưỡng hạng sang.\n- Sinh viên không cần phải lên tận Hồ Tây để chụp sen, sinh viên Đại học FPT có thể thỏa sức tạo dáng tại hồ sen rộng 2 ha ngay trong khuôn viên nhà trường.\n- Tương truyền rằng: Ở FPT, dàn nam nhân hùng hậu đã áp đảo về mặt số lượng với dàn nữ nhân. Do đó, tỷ lệ Ế của các nam nhân nhà F ngày một tăng theo cấp số nhân.\n- trường Đại Học của tập đoàn FPT thì chắc là cũng tốt đấy, với cả có trường nào pr lại nói trường mình không tốt đâu, còn bị dìm hay không, tốt nghiệp sớm hay muộn chủ yếu là do bản thân thôi, còn vào trường này là phải có điều kiện rồi, nyc mình đang học ở đây  . gia đình bạn có điều kiện và bạn có đam mê với CNTT thì vào thôi chứ còn chờ gì nữa hihi.\n- Mình hiện tại năm cuối của trường, và xác nhận việc dìm học sinh là có thật :slight_smile: Nhưng chỉ là 1 vài giảng viên thôi, mà kiểu giảng viên sát thủ như vậy luôn xuất hiện ở các trường đại học khác mà nên không sao, miễn bạn học tốt, chăm chỉ, tư duy tốt là ok. Bởi vì chương trình học ở đây khá nặng nên nhiều sv bỏ cuộc hoặc out (đó là những sv sức học yếu) nên về kêu ca, đồn thổi, ngụy biện cho cái bất tài của họ là bình thường',
  //       postDate: '21 giờ 25/09/2021',
  //       image: [
  //         'https://i.ytimg.com/vi/01C5TDIrD2o/maxresdefault.jpg',
  //         'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg',
  //         'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
  //         'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
  //       ],
  //       criteria: [
  //         Criteria(name: 'Lộ trình các môn học', num: 5),
  //         Criteria(name: 'Tài liệu môn học', num: 5),
  //         // Criteria(name: 'Cấp bậc học vấn giảng viên', num: 5),
  //         // Criteria(name: 'Nội quy trong giảng dạy', num: 5),
  //         // Criteria(name: 'Chất lượng giáo án các môn học', num: 5),
  //       ],
  //       number: 5,
  //       like: 1856,
  //       comment: 956,
  //       title: 'Tổng quan về trường Đại học FPT TP.HCM'));
  //   list.add(new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       content:
  //           '- Tương truyền rằng: Ở FPT, dàn nam nhân hùng hậu đã áp đảo về mặt số lượng với dàn nữ nhân. Do đó, tỷ lệ Ế của các nam nhân nhà F ngày một tăng theo cấp số nhân.\n- trường Đại Học của tập đoàn FPT thì chắc là cũng tốt đấy, với cả có trường nào pr lại nói trường mình không tốt đâu, còn bị dìm hay không, tốt nghiệp sớm hay muộn chủ yếu là do bản thân thôi, còn vào trường này là phải có điều kiện rồi, nyc mình đang học ở đây  . gia đình bạn có điều kiện và bạn có đam mê với CNTT thì vào thôi chứ còn chờ gì nữa hihi.\n- Mình hiện tại năm cuối của trường, và xác nhận việc dìm học sinh là có thật :slight_smile: Nhưng chỉ là 1 vài giảng viên thôi, mà kiểu giảng viên sát thủ như vậy luôn xuất hiện ở các trường đại học khác mà nên không sao, miễn bạn học tốt, chăm chỉ, tư duy tốt là ok. Bởi vì chương trình học ở đây khá nặng nên nhiều sv bỏ cuộc hoặc out (đó là những sv sức học yếu) nên về kêu ca, đồn thổi, ngụy biện cho cái bất tài của họ là bình thường',
  //       postDate: '21 giờ 18/09/2021',
  //       image: [
  //         'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
  //         'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
  //       ],
  //       number: 4,
  //       criteria: [
  //         Criteria(name: 'Nhà xe', num: 3),
  //         Criteria(name: 'Căn tin', num: 4),
  //         Criteria(name: 'Thư viện', num: 5),
  //         Criteria(name: 'Phòng học', num: 4),
  //         Criteria(name: 'Phòng thực hành', num: 4),
  //         Criteria(name: 'Thiết bị giảng dạy', num: 4),
  //       ],
  //       like: 1500,
  //       comment: 300,
  //       title: 'Trường Đại học FPT có những gì?'));
  //   return list;
  // }

  // List<Post> getMyPostList2() {
  //   List<Post> list = [];
  //   list.add(new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       err: 'không có nội dung',
  //       content: 's',
  //       postDate: '21 giờ 25/09/2021',
  //       image: [
  //         'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg',
  //       ],
  //       number: 5,
  //       criteria: [
  //         Criteria(name: 'Lộ trình các môn học', num: 5),
  //         Criteria(name: 'Tài liệu môn học', num: 5),
  //         Criteria(name: 'Giảng viên', num: 5),
  //         Criteria(name: 'Giáo án', num: 5),
  //       ],
  //       title: 'Tổng quan về trường Đại học FPT TP.HCM'));

  //   list.add(new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       err: 'nội dung chưa đi vào trọng tâm.',
  //       content:
  //           'Trường Đại học FPT được xem là 1 môi trường xanh ở đây trồng rất nhiều cây xanh.',
  //       postDate: '21 giờ 25/09/2021',
  //       image: [
  //         'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
  //       ],
  //       number: 4,
  //       criteria: [
  //         Criteria(name: 'Nhà xe', num: 3),
  //         Criteria(name: 'Căn tin', num: 4),
  //         Criteria(name: 'Thư viện', num: 5),
  //         Criteria(name: 'Phòng học', num: 4),
  //         Criteria(name: 'Phòng thực hành', num: 4),
  //         Criteria(name: 'Thiết bị giảng dạy', num: 4),
  //       ],
  //       title: 'Review về trường Đại học FPT TP.HCM'));
  //   return list;
  // }

  // List<Post> getMyPostList1() {
  //   List<Post> list = [];
  //   list.add(new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       content:
  //           'Một buổi sáng đẹp trời. Ngắm nhìn view trường xịn xò các kiểu con đà điều ở lầu 3.',
  //       postDate: '21 giờ 25/09/2021',
  //       status: 1,
  //       image: [
  //         'https://tikibook.com/upload/news/072021/dai-hoc-fpt-thanh-pho-hcm-1.jpg'
  //       ],
  //       number: 5,
  //       criteria: [
  //         Criteria(name: 'Lộ trình các môn học', num: 5),
  //         Criteria(name: 'Tài liệu môn học', num: 5),
  //         Criteria(name: 'Giảng viên', num: 5),
  //         Criteria(name: 'Giáo án', num: 5),
  //       ],
  //       title: 'Tổng quan về trường Đại học FPT TP.HCM'));

  //   list.add(new Post(
  //       avatar: 'https://static.wikia.nocookie.net/bleach/images/1/16/Hitsugayatoshiro.png/revision/latest?cb=20111020043210&path-prefix=vi',
  //       campaignName: 'Phi Long',
  //       schoolName: 'FPT',
  //       campusName: 'HCM',
  //       content:
  //           'Trường Đại học FPT được xem là 1 môi trường xanh ở đây trồng rất nhiều cây xanh.',
  //       postDate: '20 giờ 25/09/2021',
  //       status: 1,
  //       image: [
  //         'http://daihoc.fpt.edu.vn/media/2020/02/IMG_0664-488x325.jpg',
  //       ],
  //       number: 4,
  //       criteria: [
  //         Criteria(name: 'Nhà xe', num: 3),
  //         Criteria(name: 'Căn tin', num: 4),
  //         Criteria(name: 'Thư viện', num: 5),
  //         Criteria(name: 'Phòng học', num: 4),
  //         Criteria(name: 'Phòng thực hành', num: 4),
  //         Criteria(name: 'Thiết bị giảng dạy', num: 4),
  //       ],
  //       title: 'Review về Đại học FPT TP.HCM'));
  //   return list;
  // }
}
