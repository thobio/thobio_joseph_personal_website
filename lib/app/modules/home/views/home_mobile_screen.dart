import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:thobio_joseph_personal_website/app/modules/home/controllers/home_controller.dart';

class HomeMobileScreen extends GetView<HomeController> {
  const HomeMobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Image.asset(
          "./assets/images/gg.png",
        ),
        Container(
          width: (context.height / 2) + 15,
          child: Wrap(
            alignment: WrapAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "Hey, It's me,",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Thobio Joseph ",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      "here",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Mobile Application Developer",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF605F65),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  "High level experience in mobile application development, producing quality work in iOS Development & Flutter Development.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF605F65),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xFF7879F1),
                        ),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: const [
                            Text(
                              "Contact Me",
                              style: TextStyle(fontSize: 15),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => controller.gitHubClicked(),
                  child: SvgPicture.asset(
                    "./assets/images/git.svg",
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                InkWell(
                  onTap: () => controller.linkedinClicked(),
                  child: SvgPicture.asset(
                    "./assets/images/Linkedin.svg",
                  ),
                ),
                const SizedBox(
                  height: 38,
                ),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "./assets/images/Vector.png",
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
