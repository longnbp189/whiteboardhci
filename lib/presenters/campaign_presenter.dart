import 'package:whiteboard_hci/models/campaign.dart';

class CampaignPresenter {
  List<Campaign> getCampaignList() {
    List<Campaign> list = [];
    list.add(new Campaign(
        schoolName: 'FPT',
        campusName: 'HCM',
        campaignName: 'Tổng quan về trường đại học FPT',
        description:
            'Review, đánh giá các trường đại học tại Việt Nam về những ưu và nhược điểm. Giúp bạn có cái nhìn tổng quan hơn về các trường đại học muốn tìm hiểu.',
        startDate: '',
        endDate: '',
        image:
            'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/2020-kim-vi/seo/campus/1-truong-dai-hoc-fpt-tphcm/truong-dai-hoc-fpt-tp-hcm-(1).jpg',
        criteria: ['Cơ sở vật chất', 'Sinh hoạt', 'Hoạt động', 'Sự kiện'],
        like: 900,
        comment: 666,
        post: 472));
    list.add(new Campaign(
        schoolName: 'FPT',
        campusName: 'HCM',
        campaignName: 'Quân sự trong tôi',
        description:
            'Hãy miêu tả 1 kỷ niệm đẹp của bạn trong khoảng thời gian học quân sự.',
        startDate: '18/09/2021',
        endDate: '18/10/2021',
        image:
            'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/kho%E1%BA%A3nh-kh%E1%BA%AFc-%C4%91%E1%BB%9Di-l%C3%ADnh/72211011_1369286846561085_7354137037672284160_o.jpg',
        criteria: ['Cơ sở vật chất', 'Sinh hoạt', 'Hoạt động', 'Sự kiện'],
        like: 900,
        comment: 666,
        post: 472));
    list.add(new Campaign(
        schoolName: 'FPT',
        campusName: 'HCM',
        campaignName: 'Trung thu yêu thương',
        description: 'Viết một bài viết liên quan đến chủ đề Tết Trung thu.',
        startDate: '24/09/2021',
        endDate: '24/10/2021',
        image:
            'https://scontent.fsgn8-1.fna.fbcdn.net/v/t1.6435-9/p843x403/242106022_396028035428006_4788682959364881495_n.png?_nc_cat=111&ccb=1-5&_nc_sid=0debeb&_nc_ohc=frnScC5ReNsAX-vkO_F&tn=EQnitUxXiVcTMFge&_nc_ht=scontent.fsgn8-1.fna&oh=da9c0c6f1e2d7cd09dd705458d0d2c06&oe=61755AE1',
        criteria: ['Hoạt động', 'Sự kiện', 'Sinh hoạt'],
        like: 1800,
        comment: 1423,
        post: 900));
    list.add(new Campaign(
        schoolName: 'FPT',
        campusName: 'HCM',
        campaignName:
            'FPTU DEBATE TOURNAMENT SEASON 2 – SÀN ĐẤU TRANH BIỆN HẤP DẪN NHẤT ĐẠI HỌC FPT ĐÃ QUAY TRỞ LẠI',
        description:
            'Cuộc thi tranh biện FPTU Debate Tournament Season 2 đã chính thức quay trở lại. Cuộc thi chính là cơ hội cho các bạn sinh viên được cọ xát, tham gia thể hiện khả năng lập luận và tư duy phản biện, rèn luyện tinh thần đồng đội của mình.',
        startDate: '01/10/2021',
        endDate: '10/10/2021',
        image:
            'https://scontent.fsgn5-5.fna.fbcdn.net/v/t1.6435-9/s960x960/242218849_1979608662195564_3442706014213906241_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=730e14&_nc_ohc=ttejsLqSxqsAX97bcB8&tn=EQnitUxXiVcTMFge&_nc_ht=scontent.fsgn5-5.fna&oh=a486729c660116678e3ec8019a212ab4&oe=61786BAE',
        criteria: ['Sinh hoạt', 'Hoạt động', 'Sự kiện'],
        like: 900,
        comment: 666,
        post: 472));
    list.add(new Campaign(
        schoolName: 'FPT',
        campusName: 'HCM',
        campaignName: 'Quân sự trong tôi',
        description:
            'Hãy miêu tả 1 kỷ niệm đẹp của bạn trong khoảng thời gian học quân sự.',
        startDate: '18/09/2021',
        endDate: '18/10/2021',
        image:
            'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/kho%E1%BA%A3nh-kh%E1%BA%AFc-%C4%91%E1%BB%9Di-l%C3%ADnh/72211011_1369286846561085_7354137037672284160_o.jpg',
        criteria: ['Cơ sở vật chất', 'Sinh hoạt', 'Hoạt động', 'Sự kiện'],
        like: 900,
        comment: 666,
        post: 472));
    list.add(new Campaign(
        schoolName: 'FPT',
        campusName: 'HCM',
        campaignName: 'Quân sự trong tôi',
        description:
            'Hãy miêu tả 1 kỷ niệm đẹp của bạn trong khoảng thời gian học quân sự.',
        startDate: '18/09/2021',
        endDate: '18/10/2021',
        image:
            'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/kho%E1%BA%A3nh-kh%E1%BA%AFc-%C4%91%E1%BB%9Di-l%C3%ADnh/72211011_1369286846561085_7354137037672284160_o.jpg',
        criteria: ['Cơ sở vật chất', 'Sinh hoạt', 'Hoạt động', 'Sự kiện'],
        like: 900,
        comment: 666,
        post: 472));
    list.add(new Campaign(
        schoolName: 'FPT',
        campusName: 'HCM',
        campaignName: 'Quân sự trong tôi',
        description:
            'Hãy miêu tả 1 kỷ niệm đẹp của bạn trong khoảng thời gian học quân sự.',
        startDate: '18/09/2021',
        endDate: '18/10/2021',
        image:
            'https://hcmuni.fpt.edu.vn/Data/Sites/1/media/kho%E1%BA%A3nh-kh%E1%BA%AFc-%C4%91%E1%BB%9Di-l%C3%ADnh/72211011_1369286846561085_7354137037672284160_o.jpg',
        criteria: ['Cơ sở vật chất', 'Sinh hoạt', 'Hoạt động', 'Sự kiện'],
        like: 900,
        comment: 666,
        post: 472));
    return list;
  }
}
