import 'dart:io';

import 'package:flutter/material.dart';
import 'package:simple_platform_view/simple_platform_view.dart';
import 'package:simple_webview_flutter/simple_webview_flutter.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewListViewScreen extends StatefulWidget {
  const WebViewListViewScreen({super.key});

  @override
  State<WebViewListViewScreen> createState() => _WebViewListViewScreenState();
}

class _WebViewListViewScreenState extends State<WebViewListViewScreen> {
  late WebViewController webViewController;

  @override
  void initState() {
    super.initState();

    /// Replace WebViewPlatform.instance with the modified version
    if (Platform.isAndroid) {
      SimpleAndroidWebViewPlatform.registerWith();
    }
    webViewController = WebViewController();
    webViewController.loadRequest(Uri.parse("https://google.com"));
    webViewController.setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  Color? bgColor = Colors.orange.shade200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {},
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              if (index == 6) {
                return SizedBox(
                  height: 240,
                  width: double.infinity,
                  child: WebViewWidget(controller: webViewController),
                );
              }
              return const SizedBox(
                height: 100,
                child: Placeholder(),
              );
            },
            childCount: 120,
          ))
        ],
      ),
    );
  }
}
