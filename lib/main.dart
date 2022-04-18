import 'package:flutter/material.dart';
import 'package:portfolio/pages/layout_page.dart';
import 'package:portfolio/pages/mobile_page.dart';
import 'package:portfolio/pages/web_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SafeArea(
        child: LayoutPage(),
      ),
    );
  }
}
