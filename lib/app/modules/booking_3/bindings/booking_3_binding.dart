import 'package:get/get.dart';

import '../controllers/booking_3_controller.dart';

class Booking3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Booking3Controller>(
      () => Booking3Controller(),
    );
  }
}
