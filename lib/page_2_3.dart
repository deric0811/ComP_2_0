import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Page_2_3 extends StatelessWidget {
  const Page_2_3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: (PhotoView(
              imageProvider: const AssetImage('assets/bus_timetable.jpg')))),
    );
  }
}
