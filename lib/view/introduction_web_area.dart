import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mouse_parallax/mouse_parallax.dart';
import 'package:parallax_image/parallax_image.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../data/data.dart';

class IntroductionWebArea extends StatelessWidget {
  bool isSmallScreen;
  bool isExtended;

  IntroductionWebArea(
      {Key? key, required this.isExtended, required this.isSmallScreen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fullWidth = isExtended ? 90.w : 95.w;
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
    );
    ImageProvider image1 = kIsWeb
        ? AssetImage('assets/images/parallax-1.jpeg') as ImageProvider
        : AssetImage('images/parallax-1.jpeg');
    ImageProvider image2 = kIsWeb
        ? AssetImage('assets/images/parallax-2.jpeg') as ImageProvider
        : AssetImage('images/parallax-2.jpeg');
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      width: fullWidth,
      height: 100.h,
      alignment: Alignment.center,
      child: ParallaxStack(
        layers: [
          ParallaxLayer(
            yRotation: 0.35,
            xRotation: 0.5,
            child: Align(
              alignment: Alignment.centerRight,
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
          ),
          ParallaxLayer(
            yRotation: 0.35,
            child: Align(
              alignment: Alignment.centerRight,
              child: ParallaxImage(
                image: image1,
                extent: 10000.0,
                child: Container(
                  width: isSmallScreen ? fullWidth : 30.w,
                  height: 100.h * 0.7,
                ),
              ),
            ),
          ),
          Container(
            height: 100.h,
            width: fullWidth / 2,
            child: Align(
              alignment: Alignment.center,
              child: Card(
                color: Color(0xFF1B1B1B),
                elevation: 24,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: 100.h * 0.3,
                        child: AnimatedTextKit(
                          animatedTexts: [
                            RotateAnimatedText(
                              name,
                              textStyle: const TextStyle(
                                fontSize: 64.0,
                                color: Color(0xFFB71C1C),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RotateAnimatedText(
                              role,
                              textStyle: const TextStyle(
                                fontSize: 64.0,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                          repeatForever: true,
                          pause: Duration.zero,
                        ),
                      ),
                      SelectableText(
                        personDescription,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (githubLink.isNotEmpty)
                            IconButton(
                              icon: kIsWeb
                                  ? Image.asset('assets/images/github.png')
                                  : Image.asset('images/github.png'),
                              iconSize: 36,
                              onPressed: () {
                                launchUrlString(githubLink);
                              },
                            ),
                          if (linkedInLink.isNotEmpty)
                            IconButton(
                              icon: kIsWeb
                                  ? Image.asset('assets/images/linkedin.png')
                                  : Image.asset('images/linkedin.png'),
                              iconSize: 36,
                              onPressed: () {
                                launchUrlString(linkedInLink);
                              },
                            ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "You can contact me with this email address:",
                            style: TextStyle(color: Colors.white70),
                          ),
                          TextButton(
                            child: Text(
                              emailAddress,
                              style: TextStyle(color: Color(0xFFB71C1C)),
                            ),
                            onPressed: () {
                              launchUrl(emailLaunchUri);
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
