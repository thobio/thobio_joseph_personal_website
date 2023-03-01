import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:thobio_joseph_personal_website/app/modules/home/controllers/home_controller.dart';
import 'package:thobio_joseph_personal_website/app/modules/home/views/web_body_home.dart';

import '../../../routes/app_pages.dart';
import 'home_mobile_screen.dart';

class HomeWebScreen extends GetView<HomeController> {
  HomeWebScreen({super.key});
  bool isMobile = false;
  // List<Widget> navBarItem = [
  //   Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: TextButton(
  //       onPressed: () {
  //         Get.to(Routes.HOME);
  //       },
  //       child: const Text(
  //         "Home",
  //         style: TextStyle(
  //           color: Colors.black,
  //           fontWeight: FontWeight.w500,
  //         ),
  //       ),
  //     ),
  //   ),
  //   Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: TextButton(
  //       onPressed: () {
  //         Get.to(Routes.SKILL);
  //       },
  //       child: const Text(
  //         "Skills",
  //         style: TextStyle(
  //           color: Colors.black,
  //           fontWeight: FontWeight.w500,
  //         ),
  //       ),
  //     ),
  //   ),
  //   Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: TextButton(
  //       onPressed: () {
  //         Get.to(Routes.COMPANY);
  //       },
  //       child: const Text(
  //         "Company's",
  //         style: TextStyle(
  //           color: Colors.black,
  //           fontWeight: FontWeight.w500,
  //         ),
  //       ),
  //     ),
  //   ),
  //   Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: TextButton(
  //       onPressed: () {},
  //       child: const Text(
  //         "Work's",
  //         style: TextStyle(
  //           color: Colors.black,
  //           fontWeight: FontWeight.w500,
  //         ),
  //       ),
  //     ),
  //   ),
  //   Padding(
  //     padding: const EdgeInsets.all(8.0),
  //     child: TextButton(
  //       onPressed: () {},
  //       child: const Text(
  //         "Contact Me",
  //         style: TextStyle(
  //           color: Colors.black,
  //           fontWeight: FontWeight.w500,
  //         ),
  //       ),
  //     ),
  //   ),
  // ];

  @override
  Widget build(BuildContext context) {
    isMobile = context.width > 733 ? false : true;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SvgPicture.asset(
          "./assets/images/ThobioJoseph.svg",
        ),

        // actions: const [Spacer()], //isMobile ? null : navBarItem,
      ),
      // drawer: isMobile
      //     ? Drawer(
      //         surfaceTintColor: Colors.black,
      //         child: ListView(
      //           children: navBarItem,
      //         ),
      //       )
      //     : null,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 50.0, right: 50.0),
          child: isMobile ? const HomeMobileScreen() : const WebBodyHome(),
        ),
      ),
    );
  }
}
