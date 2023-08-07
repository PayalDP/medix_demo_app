import 'package:get/get.dart';

import '../controllers/booking_1_controller.dart';

class Booking1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Booking1Controller>(
      () => Booking1Controller(),
    );
  }
}
