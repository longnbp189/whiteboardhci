import 'package:flutter/material.dart';
import 'package:whiteboard_hci/views/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widget Demo',
      home: LoginScreen(),
    );
  }
}
