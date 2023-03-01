import 'package:get/get.dart';

import '../modules/company/bindings/company_binding.dart';
import '../modules/company/views/company_view.dart';
import '../modules/footer/bindings/footer_binding.dart';
import '../modules/footer/views/footer_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/skill/bindings/skill_binding.dart';
import '../modules/skill/views/skill_view.dart';
import '../modules/works/bindings/works_binding.dart';
import '../modules/works/views/works_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SKILL,
      page: () => const SkillView(),
      binding: SkillBinding(),
    ),
    GetPage(
      name: _Paths.COMPANY,
      page: () => CompanyView(),
      binding: CompanyBinding(),
    ),
    GetPage(
      name: _Paths.WORKS,
      page: () => const WorksView(),
      binding: WorksBinding(),
    ),
    GetPage(
      name: _Paths.FOOTER,
      page: () => const FooterView(),
      binding: FooterBinding(),
    ),
  ];
}
