import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/certificate.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CertificatesItem extends StatefulWidget {
  Certificate certificate;
  bool isMobile;

  CertificatesItem(
      {Key? key, required this.certificate, required this.isMobile})
      : super(key: key);

  @override
  _CertificatesItemState createState() => _CertificatesItemState();
}

class _CertificatesItemState extends State<CertificatesItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlipCard(
        front: Align(
          alignment: Alignment.center,
          child: Card(
            color: const Color(0xFF1B1B1B),
            shadowColor: const Color(0xFFB71C1C),
            elevation: 24,
            child: Container(
              width: widget.isMobile ? 80.w : 60.w,
              height: widget.isMobile ? 80.h : 50.h,
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.certificate.name,
                    style: TextStyle(
                      fontSize: widget.isMobile ? 24.sp : 8.sp,
                      color: Colors.white70,
                    ),
                  ),
                  Text(
                    "Date: ${widget.certificate.date.month.toString().padLeft(2, '0')} - ${widget.certificate.date.year.toString()}",
                    style: TextStyle(
                      fontSize: widget.isMobile ? 16.sp : 3.sp,
                      color: Colors.white70,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      widget.certificate.certificateUrl,
                      style: TextStyle(
                        fontSize: widget.isMobile ? 16.sp : 3.sp,
                        color: const Color(0xFFB71C1C),
                      ),
                    ),
                    onPressed: () {
                      launchUrlString(widget.certificate.certificateUrl);
                    },
                  ),
                  Text(
                    "Click to more Detail",
                    style: TextStyle(
                      fontSize: widget.isMobile ? 16.sp : 3.sp,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        back: Align(
          alignment: Alignment.center,
          child: Card(
            color: const Color(0xFF1B1B1B),
            shadowColor: const Color(0xFFB71C1C),
            child: Container(
              width: widget.isMobile ? 80.w : 60.w,
              height: widget.isMobile ? 80.h : 50.h,
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.certificate.name,
                    style: TextStyle(
                      fontSize: widget.isMobile ? 24.sp : 8.sp,
                      color: Colors.white70,
                    ),
                  ),
                  Image.asset(
                    widget.certificate.imageLink,
                    width: widget.isMobile ? 70.w : 50.w,
                    height: widget.isMobile ? 50.h : 30.h,
                    fit: widget.isMobile ? BoxFit.fitWidth : BoxFit.fitHeight,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
