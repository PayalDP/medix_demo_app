import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medix_demo_app/screens/booking_2/controller/booking_2_controller.dart';
import '../../../main.dart';
import 'package:intl/intl.dart';

import '../utils/constant.dart';

class DateAndDayCard extends StatelessWidget {
   const DateAndDayCard({
    super.key, required this.dateTime, required this.controller,
  });

  final DateTime dateTime;
  final Booking2Controller controller;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(right: size.width* .02),
      child: Obx(() => InkWell(
        onTap: () {
          controller.selectedDate.value = dateTime;
          log(controller.selectedDate.value.toString(), name: 'selected date');
        },
        child: Container(
          height: size.height * .1,
          width: size.width * .15,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: controller.selectedDate.value.day == dateTime.day ? darkTeal : whiteTone,
            borderRadius: BorderRadius.circular(size.width * .04),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //date
              Text(
                '${dateTime.day}',
                style: TextStyle(
                  color: controller.selectedDate.value.day == dateTime.day ? Colors.white : textColor,
                  fontSize: largeTextSize,
                  fontFamily: 'medium',
                ),
              ),

              //day
              Padding(
                padding: EdgeInsets.only(top: size.height* .01),
                child: Text(
                  DateFormat('EEE').format(dateTime),
                  style: TextStyle(
                    color: controller.selectedDate.value.day == dateTime.day ? Colors.white : greyTextColor,
                    fontSize: smallTextSize,
                    fontFamily: 'regular',
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
