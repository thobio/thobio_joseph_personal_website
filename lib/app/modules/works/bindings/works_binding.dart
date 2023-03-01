import 'package:get/get.dart';

import '../controllers/works_controller.dart';

class WorksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorksController>(
      () => WorksController(),
    );
  }
}
