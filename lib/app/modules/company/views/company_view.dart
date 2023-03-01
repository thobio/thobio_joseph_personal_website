import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thobio_joseph_personal_website/app/data/custom_widget/info_palette.dart';
import 'package:timelines/timelines.dart';

import '../controllers/company_controller.dart';

class CompanyView extends GetView<CompanyController> {
  CompanyView({Key? key}) : super(key: key);
  List<String> companyNames = [
    "Web Network Pvt. Ltd.",
    "Zerone Consulting Pvt. Ltd.",
    "Fourart Designs Pvt. Ltd.",
  ];
  List<String> yearOfWorking = [
    "Jan 2021 - Present · 2+ yrs ",
    "Oct 2017 - Jan 2021 · 3 yrs 4 mos",
    "Nov 2016 - Sep 2017 · 11 mos",
  ];

  List<String> roleInTheCompany = [
    "Joined in the company as Senior Mobile Application Developer.Worked with lot of projects swift and Flutter with Getx state management library",
    "Joined the company as software engineer,Worked on different version of Swift and architectural patterns like MVC,MVVM, Designing the UI using Storyboards and Programatic Designing, Developed 5+ Applcation all from the scratch to end. Worked with different thrid party frameworks.",
    "Started my career as a iOS Developer (Freelancer), With Swift and Objective-C as MVC an architectural pattern for the company. Developed two applications for the company."
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "Company's",
            style:
                GoogleFonts.nunito(fontSize: 20.0, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Timeline.tileBuilder(
              theme: TimelineThemeData(
                color: Colors.grey[900],
                connectorTheme: ConnectorThemeData(
                  thickness: 1,
                  color: Colors.grey[600],
                ),
              ),
              builder: TimelineTileBuilder.fromStyle(
                contentsAlign: ContentsAlign.alternating,
                indicatorStyle: IndicatorStyle.dot,
                connectorStyle: ConnectorStyle.dashedLine,
                endConnectorStyle: ConnectorStyle.dashedLine,
                oppositeContentsBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InfoPaletteWithOutSpace(
                    title: companyNames[index],
                    description: yearOfWorking[index],
                    icon: Icons.auto_awesome_sharp,
                  ),
                ),
                contentsBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    roleInTheCompany[index],
                    style: GoogleFonts.nunito(
                        fontSize: 14.0, fontWeight: FontWeight.w700),
                  ),
                ),
                itemCount: 3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
