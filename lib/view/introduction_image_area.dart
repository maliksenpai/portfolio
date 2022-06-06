import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';
import 'package:parallax_image/parallax_image.dart';
import 'package:sizer/sizer.dart';

class IntroductionImageArea extends StatelessWidget {
  bool isExtended;
  bool isSmallScreen;

  IntroductionImageArea(
      {Key? key, required this.isSmallScreen, required this.isExtended})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    ImageProvider image1 = kIsWeb
        ? AssetImage('assets/images/parallax-1.jpeg') as ImageProvider
        : AssetImage('images/parallax-1.jpeg');
    ImageProvider image2 = kIsWeb
        ? AssetImage('assets/images/parallax-2.jpeg') as ImageProvider
        : AssetImage('images/parallax-2.jpeg');
    var fullWidth = isExtended ? 90.w : 95.w;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Container(
            width: isSmallScreen ? fullWidth : 40.w,
            height: 100.h,
            alignment: Alignment.center,
            child: ParallaxStack(
              layers: [
                ParallaxLayer(
                  yRotation: 0.35,
                  xRotation: 0.5,
                  xOffset: 60,
                  child: Padding(
                    padding: EdgeInsets.only(left: isSmallScreen ? 10.w : 3.w),
                    child: ParallaxImage(
                      image: image2,
                      extent: 10000.0,
                      child: Container(
                        width: isSmallScreen ? fullWidth : 30.w,
                        height: 100.h * 0.4,
                      ),
                    ),
                  ),
                ),
                ParallaxLayer(
                  yRotation: 0.35,
                  xOffset: 80,
                  child: Center(
                    child: ParallaxImage(
                      image: image1,
                      extent: 10000.0,
                      child: Container(
                        width: isSmallScreen ? fullWidth : 30.w,
                        height: 100.h * 0.7,
                      ),
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
