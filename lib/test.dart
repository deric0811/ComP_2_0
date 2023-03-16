import 'dart:async';

import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';
import 'package:flutter/material.dart';

class Page_2_1 extends StatelessWidget {
  const Page_2_1({super.key});

  @override
  Widget build(BuildContext context) {
    return WebViewApp();
  }
}

class TimeTable extends StatelessWidget {
  const TimeTable({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('맛있게 드세요 ^^')),
      body: Image.asset('assets/ComP2_0__KakaoTalk_20221117_060313219.jpg'),
    );
  }
}

class WebViewApp extends StatefulWidget {
  const WebViewApp({Key? key}) : super(key: key);

  @override
  State<WebViewApp> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp> {
  @override
  void initState() {
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
    super.initState();
  }

  var _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('학식'),
          actions: <Widget>[
            ElevatedButton(
                child: Text('시간표'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const TimeTable()));
                })
          ],
        ),
        body: Stack(
          children: [],
        ));
  }
}
