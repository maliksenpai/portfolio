import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:parallax_image/parallax_image.dart';
import 'package:portfolio/data/data.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroductionTextArea extends StatelessWidget {
  bool isSmallScreen;
  IntroductionTextArea({Key? key, required this.isSmallScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isSmallScreen ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.5,
      height: MediaQuery.of(context).size.height - AppBar().preferredSize.height,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height - AppBar().preferredSize.height) * 0.3,
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText(
                  name,
                  textStyle: const TextStyle(
                    fontSize: 64.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                RotateAnimatedText(
                  role,
                  textStyle: const TextStyle(
                    fontSize: 64.0,
                    color: Colors.black87,
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
          ),
          SizedBox(height: 36,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(githubLink.isNotEmpty)
                IconButton(
                  icon: kIsWeb ? Image.network('assets/images/github.png') : Image.asset('images/github.png'),
                  iconSize: 36,
                  onPressed: (){
                    launch(githubLink);
                  },
                ),
              if(linkedInLink.isNotEmpty)
                IconButton(
                  icon: kIsWeb ? Image.network('assets/images/linkedin.png') : Image.asset('images/linkedin.png'),
                  iconSize: 36,
                  onPressed: (){
                    launch(linkedInLink);
                  },
                )
            ],
          )
        ],
      ),
    );
  }
}
