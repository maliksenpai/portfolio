import 'package:flutter/material.dart';
import 'package:portfolio/view/certificates_area_small.dart';
import 'package:portfolio/view/introduction_projects_small.dart';
import 'package:portfolio/view/sidebar_mobile.dart';
import 'package:sidebarx/sidebarx.dart';

class CertificatesPage extends StatefulWidget {
  const CertificatesPage({Key? key}) : super(key: key);

  @override
  State<CertificatesPage> createState() => _CertificatesPageState();
}

class _CertificatesPageState extends State<CertificatesPage> {
  int selectedIndex = 0;
  bool isExtended = false;
  late SidebarXController sidebarXController;

  @override
  void initState() {
    super.initState();
    sidebarXController =
        SidebarXController(selectedIndex: selectedIndex, extended: isExtended);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Certificates',
          style: TextStyle(color: Color(0xFFB71C1C)),
        ),
        backgroundColor: const Color(0xFF1B1B1B),
        iconTheme: const IconThemeData(
          color: Color(0xFFB71C1C),
        ),
      ),
      drawer: SideBarMobile(
        controller: sidebarXController,
        selectedIndex: selectedIndex,
        isExtended: isExtended,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/mobile-background.png"),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: CertificatesAreaSmall(),
          ),
        ),
      ),
    );
  }
}
