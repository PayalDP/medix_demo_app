import 'package:get/get.dart';

class AppointmentsController extends GetxController {

  RxBool isUpComing = true.obs;
  RxBool isPast = false.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
