import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/components/certificates_item.dart';
import 'package:portfolio/components/certificates_title.dart';
import 'package:portfolio/data/data.dart';
import 'package:sizer/sizer.dart';

class CertificatesArea extends StatelessWidget {
  const CertificatesArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        minHeight: 100.h,
      ),
      child: Column(
        children: [
          CertificatesTitle(isMobile: false),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 70.h,
              width: 100.w,
              child: CarouselSlider.builder(
                itemCount: certificates.length,
                options: CarouselOptions(),
                itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex){
                  return CertificatesItem(certificate: certificates[itemIndex], isMobile: false,);
                }
              ),
            ),
          )
        ],
      ),
    );
  }
}
