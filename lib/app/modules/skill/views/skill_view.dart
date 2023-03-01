import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thobio_joseph_personal_website/app/data/custom_widget/info_palette.dart';

import '../controllers/skill_controller.dart';

class SkillView extends GetView<SkillController> {
  const SkillView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Skill's",
            style:
                GoogleFonts.nunito(fontSize: 20.0, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              InfoPalette(
                  title: "iOS Swift",
                  description:
                      "Worker with almost 6+ years and 10+ app in AppStore from scratch to end,Some of the domainc that i worked are Ecommerce,Banking Applications etc.",
                  icon: Icons.apple),
              InfoPalette(
                  title: "Flutter",
                  description:
                      "Created different types of mobile applications and web applications using flutter with GetX state management library.",
                  icon: Icons.flutter_dash),
              InfoPalette(
                  title: "Firebase",
                  description:
                      "I have worked with different firebase implementations like CloudMessenger,FirebaseAuth,FirebaseStorage,Realtime Database,FirebaseFirestore etc.",
                  icon: Icons.apple),
              InfoPalette(
                  title: "JCTTool(SPM)",
                  description:
                      "JCTTool is a Swift Package Manager which i created to help you to create beautiful UI with programmatic auto layout easy to use.",
                  icon: Icons.apple),
            ],
          )
        ],
      ),
    );
  }
}
