import 'package:get/get.dart';

import '../controllers/search_doctors_controller.dart';

class SearchDoctorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchDoctorsController>(
      () => SearchDoctorsController(),
    );
  }
}
