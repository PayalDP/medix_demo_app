import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../utils/date_utils.dart';

class Booking2Controller extends GetxController {
  final Map booking1Details = Get.arguments;
  late List<DateTime> dateList;
  Rx<DateTime> selectedDate = DateTime.now().obs;
  RxString selectedTime = ''.obs;
  List<String> timeSlots = [];

  // data from previous screen
  late Map doctorDetail;
  late Map bookingDetail;

  @override
  void onInit() {
    dateList = getListOfDate();

    doctorDetail = booking1Details['doctorData'];
    bookingDetail = {
      'isOnline': booking1Details[booking1Details],
      'isInPerson': booking1Details['isInPerson'],
      'forMySelf': booking1Details['forMySelf'],
      'forOtherPerson': booking1Details['forOtherPerson'],
    };

    log('$doctorDetail $bookingDetail', name: 'booking and doctor detail');
    // isOnline = bookingDetails['isOnline'];
    // isInPerson = bookingDetails['isInPerson'];
    // forOtherPerson = bookingDetails['forOtherPerson'];
    // forMySelf = bookingDetails['forMySelf'];

    super.onInit();
  }

  addItemInBookingDetails(Map bookingDetails) {
    bookingDetail.addAll({
      'selectedDate': DateFormat('MMM d, yyyy').format(selectedDate.value),
      'selectedTime': selectedTime,
    });
  }

  //get list of timeOfDay
  Iterable<TimeOfDay> getTimes(
      TimeOfDay startTime, TimeOfDay endTime, Duration step) sync* {
    var hour = startTime.hour;
    var minute = startTime.minute;

    do {
      yield TimeOfDay(hour: hour, minute: minute);
      minute += step.inMinutes;
      while (minute >= 60) {
        minute -= 60;
        hour++;
      }
    } while (hour < endTime.hour ||
        (hour == endTime.hour && minute <= endTime.minute));
  }

  //get list of time slot
  List<String> getTimeSlotsList(BuildContext context) {
    List<String> temp = getTimes(const TimeOfDay(hour: 8, minute: 0),
            const TimeOfDay(hour: 17, minute: 0), const Duration(minutes: 30))
        .map((time) => time.format(context))
        .toList();

    log(temp.toString(), name: 'List of Time Slots at controller');

    return temp;
  }

  //get selected time slot
  String getSelectedTimeSlot(String timeSlot) {
    selectedTime.value = timeSlot;

    return selectedTime.value;
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
