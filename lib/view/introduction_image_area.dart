import 'package:flutter/material.dart';
import 'package:parallax_image/parallax_image.dart';

class IntroductionImageArea extends StatelessWidget {
  bool isSmallScreen;
  IntroductionImageArea({Key? key, required this.isSmallScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Container(
            width: isSmallScreen ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height - AppBar().preferredSize.height,
            alignment: Alignment.center,
            child: ParallaxImage(
              image: AssetImage('images/parallax-1.jpeg'),
              extent: 10000.0,
              child: Container(
                width: isSmallScreen ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height - AppBar().preferredSize.height,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
