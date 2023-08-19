import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    getSplash();

    super.onInit();
  }

  Future<void> getSplash() async {
    await Future.delayed(const Duration(seconds: 2)).then(
      (value) => Get.offAllNamed(Routes.HOME),
    );
  }
}
