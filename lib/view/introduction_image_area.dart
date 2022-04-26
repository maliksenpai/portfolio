import 'package:flutter/material.dart';
import 'package:parallax_image/parallax_image.dart';

class IntroductionImageArea extends StatelessWidget {
  bool isSmallScreen;
  IntroductionImageArea({Key? key, required this.isSmallScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isSmallScreen ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height - AppBar().preferredSize.height,
      alignment: Alignment.center,
      child: ParallaxImage(
        image: AssetImage('images/parallax-1'),
        extent: 100.0,
      ),
    );
  }
}
