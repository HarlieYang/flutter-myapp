import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class WebViewExample extends StatefulWidget {
  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  WebViewController _controller;
  String _title = "webview";
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      // initialUrl: 'https://flutter.cn',
      initialUrl: 'https://www.baidu.com',
      // initialUrl: 'https://www.jirentech.com.cn/',
      // initialUrl:
      //     'https://h5one.jirentech.com.cn/?BUILDING_ID=00010002&Phone=18116462630',
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (controller) {
        _controller = controller;
      },
      onPageFinished: (url) {
        _controller.evaluateJavascript("document.title").then((result) {
          setState(() {
            _title = result;
          });
        });
      },
      navigationDelegate: (NavigationRequest request) {
        if (request.url.startsWith("myapp://")) {
          print("即将打开 ${request.url}");

          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
      javascriptChannels: <JavascriptChannel>[
        JavascriptChannel(
            name: "share",
            onMessageReceived: (JavascriptMessage message) {
              print("参数： ${message.message}");
            })
      ].toSet(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Startup Name Generator',
      home: new WebViewExample(),
    );
  }
}

void main() => runApp(new MyApp());
