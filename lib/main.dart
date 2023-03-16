import 'package:flutter/material.dart';
import 'package:comp2_0__project_2/page_1_1_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '학교앱',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const Page_home(title: '오늘도 화이팅!!!'),
    );
  }
}
