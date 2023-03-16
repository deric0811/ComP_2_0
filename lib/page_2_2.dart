import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';
import 'package:flutter/material.dart';

class Page_2_2 extends StatelessWidget {
  const Page_2_2({super.key});

  @override
  Widget build(BuildContext context) {
    return WebViewApp();
  }
}

class TimeTable_2 extends StatelessWidget {
  const TimeTable_2({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Image.asset('assets/화면 캡처 2022-11-17 061257.jpg'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('교직원 식당'),
        actions: <Widget>[
          ElevatedButton(
              child: Text('시간표'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const TimeTable_2()));
              })
        ],
      ),
      body: const WebView(
        initialUrl:
            'https://sejong.korea.ac.kr/campuslife/facilities/dining/weeklymenu',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
