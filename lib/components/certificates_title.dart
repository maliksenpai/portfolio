import 'package:flutter/material.dart';
import 'package:portfolio/data/data.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class CertificatesTitle extends StatelessWidget {
  bool isMobile;

  CertificatesTitle({Key? key, required this.isMobile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GradientText(
          "Certificates",
          colors: const [
            Colors.blueAccent,
            Colors.deepOrangeAccent,
            Colors.redAccent,
          ],
          gradientType: GradientType.linear,
          style: TextStyle(
            fontSize: isMobile ? 24.sp : 8.sp,
          ),
        ),
        Text(
          "Number of Certificates: ${certificates.length}",
          style: TextStyle(
            fontSize: isMobile ? 9.sp : 3.sp,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
