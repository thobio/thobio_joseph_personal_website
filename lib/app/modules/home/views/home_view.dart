import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:thobio_joseph_personal_website/app/modules/home/views/home_mobile_screen.dart';
import 'package:thobio_joseph_personal_website/app/modules/home/views/home_web_screen.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.height,
        width: double.infinity,
        child: HomeWebScreen(),
      ),
    );
  }
}
