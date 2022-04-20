import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whiteboard_hci/utils/color.dart';

class ImagePicker1 extends StatefulWidget {
  const ImagePicker1({Key? key}) : super(key: key);

  @override
  _ImagePicker1State createState() => _ImagePicker1State();
}

class _ImagePicker1State extends State<ImagePicker1> {
  final ImagePicker picker = ImagePicker();
  bool check = false;
  List<XFile> imageFileList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          (check == false)
              ? Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Center(
                          // child: OutlinedButton(
                          //     onPressed: () {
                          //       check = true;
                          //       selectImages();
                          //       // Navigator.flPageRoute(builder: (context) => CreatePost()));
                          //     },
                          //     ),
                          child: IconButton(
                        icon: Icon(
                          Icons.image,
                          color: Colors.grey,
                        ),
                        iconSize: 60,
                        onPressed: () {
                          check = true;
                          selectImages();
                        },
                      )),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Đăng ảnh thẻ sinh viên hoặc bằng tốt nghiệp của bạn',
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                )
              : (check == true)
                  ? Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 5, bottom: 15),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GridView.builder(
                              itemCount: imageFileList.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3),
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Image.file(
                                    File(imageFileList[index].path),
                                    fit: BoxFit.cover,
                                  ),
                                );
                              }),
                        ),
                      ),
                    )
                  : SizedBox()
        ],
      ),
    );
  }

  void selectImages() async {
    final List<XFile>? selectedImages = await picker.pickMultiImage();
    if (selectedImages!.isNotEmpty) {
      imageFileList.addAll(selectedImages);
    }
    setState(() {});
  }
}
