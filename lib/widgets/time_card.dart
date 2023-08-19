import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../main.dart';
import '../screens/booking_2/controller/booking_2_controller.dart';
import '../utils/constant.dart';

class TimeCard extends StatelessWidget {
  const TimeCard({
    super.key,
    required this.timeString,
    required this.controller,
  });

  final String timeString;
  final Booking2Controller controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
      height: size.height * .06,
      width: size.width * .25,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: controller.selectedTime.value.toLowerCase() == timeString.toLowerCase()
              ? darkTeal
              : whiteTone,
          borderRadius: BorderRadius.circular(size.width * .04)),
      child: InkWell(
        onTap: () {
          controller.getSelectedTimeSlot(timeString);
          log(controller.selectedTime.toString(), name: 'selected time');
        },
        child: Text(
          timeString,
          style: TextStyle(
            color: controller.selectedTime.value.toLowerCase() == timeString.toLowerCase()
                ? Colors.white
                : textColor,
            fontFamily: 'medium',
            fontSize: mediumtextSize,
          ),
        ),
      ),
    ));
  }
}