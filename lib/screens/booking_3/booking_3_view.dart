import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:get/get.dart';

import '../../main.dart';
import '../../routes/app_pages.dart';
import '../../utils/constant.dart';
import '../../widgets/custom_painter_for_credit_card.dart';
import 'controller/booking_3_controller.dart';

class Booking3View extends StatelessWidget {
  const Booking3View({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Booking3Controller>(
      init: Booking3Controller(),
      global: false,
      builder: (controller) => Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
              left: size.width * .05,
              right: size.width * .05,
              top: size.height * .06),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Booking text back button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //back button
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: size.height * .06,
                      width: size.width * .12,
                      decoration: BoxDecoration(
                        color: whiteTone,
                        borderRadius: BorderRadius.circular(size.width * .04),
                      ),
                      child: Image.asset('images/back_arrow_icon.png'),
                    ),
                  ),

                  //booking text
                  Text(
                    'Booking',
                    style: TextStyle(
                        fontSize: titleFontSize,
                        color: textColor,
                        fontFamily: 'bold'),
                  ),

                  //booking screen number
                  Text(
                    '3/3',
                    style: TextStyle(
                      fontSize: largeTextSize,
                      color: greyTextColor,
                      fontFamily: 'medium',
                    ),
                  ),
                ],
              ),

              //Payment method text
              Padding(
                padding: EdgeInsets.only(top: size.height * .05),
                child: Text(
                  'Payment method',
                  style: TextStyle(
                      color: textColor,
                      fontFamily: 'medium',
                      fontSize: extraLargeTextSize),
                ),
              ),

              //debit or credit card container
              Padding(
                padding: EdgeInsets.only(top: size.height * .015),
                child: Container(
                  width: size.width,
                  height: size.height * .36,
                  padding: EdgeInsets.all(size.width * .01),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.width * .08),
                    color: whiteTone,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //radio button to select card
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        horizontalTitleGap: size.width * .0,
                        leading: IconButton(
                          onPressed: () {
                            controller.isPayByCard.value = true;
                            controller.isPayByApplePay.value = false;
                          },
                          icon: Obx(
                            () => Icon(
                              controller.isPayByCard.value
                                  ? Icons.radio_button_checked_outlined
                                  : Icons.radio_button_off_outlined,
                              color: controller.isPayByCard.value
                                  ? darkTeal
                                  : greyTextColor,
                            ),
                          ),
                        ),
                        title: Text(
                          'Card',
                          style: TextStyle(
                            color: textColor,
                            fontFamily: 'medium',
                            fontSize: mediumToLargeSize,
                          ),
                        ),
                      ),
                      //card container
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 0, horizontal: size.width * .035),
                        child: SizedBox(
                          height: size.height * .25,
                          child: Stack(
                            children: [
                              // Shadow box
                              Positioned(
                                left: size.width * .05,
                                right: size.width * .05,
                                top: 0,
                                bottom: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.teal[100],
                                    border:
                                        Border.all(color: Colors.teal.shade100),
                                    borderRadius:
                                        BorderRadius.circular(size.width * .08),
                                  ),
                                ),
                              ),

                              //Card details
                              Positioned(
                                child: Container(
                                  height: size.height * .23,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    color: darkTeal,
                                    borderRadius:
                                        BorderRadius.circular(size.width * .08),
                                  ),
                                  child: CustomPaint(
                                    painter: BackGroundPainter(),
                                    child: Stack(
                                      children: [
                                        //Name text
                                        Positioned(
                                          top: size.width * .05,
                                          left: size.width * .05,
                                          child: Text(
                                            'Name',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: extraSmallTextSize,
                                              fontFamily: 'regular',
                                            ),
                                          ),
                                        ),

                                        //Card holder Name
                                        Positioned(
                                          top: size.height * .045,
                                          left: size.width * .05,
                                          child: Text(
                                            'Emily Doe',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'medium',
                                              fontSize: smallTextSize,
                                            ),
                                          ),
                                        ),

                                        // Card Number
                                        Positioned(
                                          top: size.height * .1,
                                          left: size.width * .05,
                                          child: Text(
                                            '**** **** **** 5432',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: mediumtextSize,
                                              fontFamily: 'medium',
                                            ),
                                          ),
                                        ),

                                        //Expires text
                                        Positioned(
                                          bottom: size.height * .055,
                                          left: size.width * .05,
                                          child: Text(
                                            'Expires',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: extraSmallTextSize,
                                              fontFamily: 'regular',
                                            ),
                                          ),
                                        ),

                                        //expire date
                                        Positioned(
                                          bottom: size.height * .03,
                                          left: size.width * .05,
                                          child: Text(
                                            '09/23',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'medium',
                                              fontSize: smallTextSize,
                                            ),
                                          ),
                                        ),

                                        Positioned(
                                          bottom: size.height * .03,
                                          right: size.width * .06,
                                          child: SizedBox(
                                            height: size.height * .02,
                                            width: size.width * .12,
                                            child: Image.asset(
                                              'images/visa_white_text.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Apple Pay Selection button
              Padding(
                padding: EdgeInsets.only(top: size.height * .02),
                child: Container(
                  height: size.height * .1,
                  width: size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: whiteTone,
                    borderRadius: BorderRadius.circular(size.width * .07),
                  ),
                  child: Obx(
                    () => ListTile(
                      horizontalTitleGap: 0.0,
                      leading: IconButton(
                        onPressed: () {
                          controller.isPayByApplePay.value = true;
                          controller.isPayByCard.value = false;
                        },
                        icon: Icon(
                          controller.isPayByApplePay.value
                              ? Icons.radio_button_checked_outlined
                              : Icons.radio_button_off_outlined,
                          color: controller.isPayByApplePay.value
                              ? darkTeal
                              : greyTextColor,
                        ),
                      ),
                      title: Text(
                        'Apple Pay',
                        style: TextStyle(
                          color: textColor,
                          fontFamily: 'medium',
                          fontSize: mediumToLargeSize,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        //Next button
        bottomSheet: BottomSheet(
          backgroundColor: Colors.white,
          showDragHandle: false,
          onClosing: () {},
          builder: (context) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * .015, horizontal: size.width * .05),
              child: InkWell(
                onTap: () async {

                  controller.getAllBookingDetail();

                  Get.offAllNamed(Routes.DONE, arguments: controller.bookingDetails);
                },
                child: Container(
                  height: size.height * .08,
                  width: size.width,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: darkTeal,
                      borderRadius: BorderRadius.circular(size.width * .05)),
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: whiteTone,
                        fontSize: mediumtextSize,
                        fontFamily: 'medium'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

