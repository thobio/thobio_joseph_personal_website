import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/footer_controller.dart';

class FooterView extends GetView<FooterController> {
  const FooterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.copyright_rounded,
                  color: Colors.black54,
                  size: 15.0,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "2022 All rights reserved",
                  style: GoogleFonts.nunito(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40.0,
            )
          ],
        ));
  }
}
