import 'package:flutter/material.dart';
import 'package:whiteboard_hci/utils/color.dart';
import 'package:whiteboard_hci/views/home.dart';
import 'package:whiteboard_hci/views/sign_up.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
              image: (!isKeyboard)
                  ? DecorationImage(
                      image: AssetImage("assets/images/frame_hci.png"),
                      fit: BoxFit.cover)
                  : null),
          child: ListView(
            children: [
              Column(
                children: [
                  if (!isKeyboard) buildLogo(context),
                  if (isKeyboard)
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Container(
                    width: size.width - 80,
                    height: size.height * 0.06,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Tài khoản',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  Container(
                    width: size.width - 80,
                    height: size.height * 0.06,
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Mật khẩu',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility_off)),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  Container(
                      width: size.width - 80,
                      alignment: Alignment.centerRight,
                      child: Text(
                        "Quên mật khẩu?",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  Container(
                    width: size.width - 80,
                    height: size.height * 0.06,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(white_blue),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ))),
                      child: Text(
                        'Đăng nhập',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  Container(
                      width: size.width - 80,
                      alignment: Alignment.center,
                      child: Text(
                        "Hoặc",
                        style: TextStyle(color: grey_text, fontSize: 14),
                      )),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  Container(
                    width: size.width - 80,
                    height: size.height * 0.06,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      side: BorderSide(
                                          color: white_blue, width: 1)))),
                      child: Text(
                        'Tạo tài khoản',
                        style: TextStyle(fontSize: 16, color: white_blue),
                      ),
                    ),
                  ),
                  // Container(
                  //   height: size.height * 0.06,
                  //   width: size.width - 100,
                  //   child: ElevatedButton(
                  //     onPressed: () {},
                  //     style: ButtonStyle(
                  //         backgroundColor:
                  //             MaterialStateProperty.all<Color>(Colors.white),
                  //         shape:
                  //             MaterialStateProperty.all<RoundedRectangleBorder>(
                  //                 RoundedRectangleBorder(
                  //                     borderRadius: BorderRadius.circular(30),
                  //                     side: BorderSide(
                  //                         color: white_blue, width: 1)))),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Text(
                  //           'Đăng nhập',
                  //           style: TextStyle(fontSize: 16, color: white_blue),
                  //         ),
                  //         SizedBox(
                  //           width: size.width * 0.03,
                  //         ),
                  //         Icon(
                  //           FontAwesomeIcons.googlePlusG,
                  //           color: white_blue,
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildLogo(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return Column(
    children: [
      SizedBox(
        height: size.height * 0.13,
      ),
      Center(
        child: Container(
          child: Image.asset("assets/images/logo.jpg"),
          height: size.height * 0.2,
        ),
      ),
      SizedBox(
        height: size.height * 0.015,
      ),
      Center(
          child: Text(
        "UniReview",
        style:
            TextStyle(color: white_blue, fontFamily: "Dancing", fontSize: 35),
      )),
      Center(
          child: Text(
        "Đánh giá trường đại học",
        style: TextStyle(color: dart_blue, fontFamily: "Dancing", fontSize: 25),
      )),
    ],
  );
}
