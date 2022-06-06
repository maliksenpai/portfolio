import 'package:flutter/material.dart';
import 'package:portfolio/view/introduction_text_background_area.dart';
import 'package:portfolio/view/mobile_drawer.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MobileDrawer(),
      body: Center(
        child: SingleChildScrollView(
          child: IntroductionTextBackgroundArea(isExtended: false,),
        ),
      )
    );
  }
}
