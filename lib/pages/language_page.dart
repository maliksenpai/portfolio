import 'package:flutter/material.dart';
import 'package:portfolio/view/languages_bars.dart';
import 'package:portfolio/view/mobile_drawer.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Projects'),),
      drawer: const MobileDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: LanguageBars(isMobile: true,),
        ),
      ),
    );
  }
}
