import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  Future<void> gitHubClicked() async {
    const url = "https://github.com/thobio";
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> linkedinClicked() async {
    const url = "https://www.linkedin.com/in/thobio-joseph-529a29133/";
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> openUrl() async {
    Uri url = Uri(
      scheme: 'mailto',
      path: 'jthobio2@gmail.com',
    );
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
