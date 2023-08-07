import 'package:get/get.dart';

import '../controllers/booking_2_controller.dart';

class Booking2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Booking2Controller>(
      () => Booking2Controller(),
    );
  }
}
