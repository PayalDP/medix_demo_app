import 'dart:developer';

import 'package:get/get.dart';

class DoneController extends GetxController {

  final bookingDetails = Get.arguments;
  final String patient = 'Emily Deo';
  late String doctorName;
  late String date;
  late RxString time;
  late double totalCharge;

  @override
  void onInit() {

    // log(bookingDetails.toString(), name: 'final booking details');

    doctorName = bookingDetails['doctorName'];
    date = bookingDetails['selectedDate'];
    time = bookingDetails['selectedTime'];
    totalCharge = bookingDetails['charge'];

    // log(doctorName, name: 'Doctor Name');
    // log(date, name: 'date');
    // log(time.value, name: 'time');
    // log('$totalCharge', name: 'charge');

    super.onInit();
  }
}