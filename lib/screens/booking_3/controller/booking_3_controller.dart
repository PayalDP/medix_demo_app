import 'dart:developer';

import 'package:get/get.dart';

class Booking3Controller extends GetxController {

  final doctorDetail = Get.arguments['doctorDetail'];
  final bookingDetails = Get.arguments['bookingDetail'];
  RxBool isPayByCard = true.obs;
  RxBool isPayByApplePay = false.obs;


  @override
  void onInit() {

    log(doctorDetail.toString(), name: 'Doctor detail');
    log(bookingDetails.toString(), name: 'bookingDetails');

    super.onInit();
  }

  getAllBookingDetail () {

    bookingDetails.addAll(doctorDetail);

    bookingDetails.addAll({
      'isPayByCard': isPayByCard,
      'isPayByApplePay': isPayByApplePay,
    });

    log(bookingDetails.toString(), name: 'all marge data');

  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

}
