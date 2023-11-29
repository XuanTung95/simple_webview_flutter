import 'package:example/webview_list_view_screen.dart';
import 'package:example/webview_screen.dart';
import 'package:flutter/material.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({Key? key}) : super(key: key);

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select test screen'),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return const FullScreenWebview();
                    }));
                  },
                  child: const Text('Full screen WebView'),
                ),
                const SizedBox(height: 16,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                      return const WebViewListViewScreen();
                    }));
                  },
                  child: const Text('WebView List view'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
