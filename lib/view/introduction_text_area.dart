import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class IntroductionTextArea extends StatelessWidget {
  bool isSmallScreen;
  bool isExtended;

  IntroductionTextArea(
      {Key? key, required this.isSmallScreen, required this.isExtended})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fullWidth = isExtended ? 90.w : 95.w;
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
    );
    return Container(
      width: isSmallScreen ? fullWidth : 50.w,
      height: 100.h,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12),
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
    );
  }
}
