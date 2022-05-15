import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:parallax_image/parallax_image.dart';
import 'package:sizer/sizer.dart';

class IntroductionImageArea extends StatelessWidget {
  bool isSmallScreen;
  IntroductionImageArea({Key? key, required this.isSmallScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ImageProvider image1 = kIsWeb ? AssetImage('assets/images/parallax-1.jpeg') as ImageProvider : AssetImage('images/parallax-1.jpeg');
    ImageProvider image2 = kIsWeb ? AssetImage('assets/images/parallax-2.jpeg') as ImageProvider : AssetImage('images/parallax-2.jpeg');
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Container(
            width: isSmallScreen ? 100.w : 40.w,
            height: 100.h - AppBar().preferredSize.height,
            alignment: Alignment.center,
            child: Stack(
              children: [
                Positioned(
                  left: 100,
                  top: 0,
                  right: 0,
                  bottom: 100,
                  child: ParallaxImage(
                    image: image2,
                    extent: 10000.0,
                    child: Container(
                      width: isSmallScreen ? 100.w : 30.w,
                      height: 100.h - AppBar().preferredSize.height * 0.4,
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 100,
                  right: 100,
                  bottom: 0,
                  child: ParallaxImage(
                    image: image1,
                    extent: 10000.0,
                    child: Container(
                      width: isSmallScreen ? 100.w : 30.w,
                      height: 100.h - AppBar().preferredSize.height * 0.7,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
