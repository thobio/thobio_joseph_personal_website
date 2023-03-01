import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:thobio_joseph_personal_website/app/modules/company/views/company_view.dart';
import 'package:thobio_joseph_personal_website/app/modules/footer/views/footer_view.dart';
import 'package:thobio_joseph_personal_website/app/modules/skill/views/skill_view.dart';

import '../controllers/home_controller.dart';

class WebBodyHome extends GetView<HomeController> {
  const WebBodyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: context.height,
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Spacer(),
              Container(
                height: context.height - 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: () => controller.gitHubClicked(),
                      child: SvgPicture.asset(
                        "./assets/images/git.svg",
                        color: Colors.grey[900],
                      ),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    InkWell(
                      onTap: () => controller.linkedinClicked(),
                      child: SvgPicture.asset(
                        "./assets/images/Linkedin.svg",
                        color: Colors.grey[900],
                      ),
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Image.asset(
                        "./assets/images/Vector.png",
                        color: Colors.grey[900],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              const Spacer(),
              Container(
                width: context.width * 0.4,
                height: context.height * 0.35,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Wrap(
                        children: const [
                          Text(
                            "Hey, It's ",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                          Text(
                            "Thobio Joseph ",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.normal),
                          ),
                          Text(
                            "here",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Mobile Application Developer",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal,
                          color: Color(0xFF605F65),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          "High level experience in mobile application development, producing quality work in iOS Development & Flutter Development.",
                          style: TextStyle(
                            fontSize: context.width <= 1000 ? 16 : 20,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                            color: const Color(0xFF605F65),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.grey[900],
                              ),
                            ),
                            onPressed: () => controller.openUrl(),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: const [
                                  Text(
                                    "Contact Me",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 4.0),
                                    child: Icon(Icons.arrow_right),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                "./assets/images/gg.png",
                width: context.width * 0.4,
                height: context.width * 0.4,
              ),
            ],
          ),
        ),
        const SkillView(),
        CompanyView(),
        const FooterView()
      ],
    );
  }
}
