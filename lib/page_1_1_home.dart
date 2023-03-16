import 'package:comp2_0__project_2/page_2_1.dart';
import 'package:flutter/material.dart';
import 'package:comp2_0__project_2/page_2_1_1.dart';
import 'package:comp2_0__project_2/page_2_2.dart';
import 'package:comp2_0__project_2/page_2_3.dart';

class Page_home extends StatelessWidget {
  const Page_home({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(this.title),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                child: const Text('학식 식단표', style: TextStyle(fontSize: 21)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const Page_2_1_1()));
                }),
            ElevatedButton(
                child: const Text('교직원 식당 식단표', style: TextStyle(fontSize: 21)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Page_2_2()));
                }),
            ElevatedButton(
                child: const Text('버스 시간표', style: TextStyle(fontSize: 21)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Page_2_3()));
                })
          ]),
        ));
  }
}
