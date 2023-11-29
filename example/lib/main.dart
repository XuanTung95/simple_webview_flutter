import 'package:example/select_screen.dart';
import 'package:flutter/material.dart';
import 'package:simple_platform_view/simple_platform_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SelectScreen(),
      // Fix StretchingOverscrollIndicator issues
      scrollBehavior: SimplePlatformViewScrollBehavior(),
    );
  }
}