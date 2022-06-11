import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class IntroductionTextBackgroundArea extends StatelessWidget {
  bool isExtended;

  IntroductionTextBackgroundArea({Key? key, required this.isExtended})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String image =
        kIsWeb ? 'assets/images/parallax-1.jpeg' : 'images/parallax-1.jpeg';
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
    );
    return Column(
      children: [
        Container(
          width: 100.w,
          height: 100.h,
          alignment: Alignment.center,
          child: Stack(
            children: [
              Image.asset(
                image,
                width: 100.w,
                height: 100.h,
                opacity: AlwaysStoppedAnimation(1),
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'You can contact me with this email address:',
                          ),
                          TextSpan(
                              text: emailAddress,
                              style: TextStyle(
                                color: Color(0xFFB71C1C),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => launchUrl(emailLaunchUri)),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
