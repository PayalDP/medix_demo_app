import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medix_demo_app/screens/done/controller/done_controller.dart';

import '../../main.dart';
import '../../routes/app_pages.dart';
import '../../utils/constant.dart';
import '../../widgets/on_done_custom_painter.dart';

class DoneView extends StatelessWidget {
  const DoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DoneController>(
      init: DoneController(),
      global: false,
      builder: (controller) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.only(
              top: size.height * .06,
              bottom: size.height * .06,
              left: size.width * .05,
              right: size.width * .05,
            ),
            child: Column(
              children: [
                Container(
                  height: size.height * .5,
                  decoration: BoxDecoration(
                    color: lightTeal,
                    borderRadius: BorderRadius.circular(size.width * .08),
                  ),
                  child: Stack(
                    children: [
                      //done icon custom Painter
                      Positioned(
                        child: SizedBox(
                          height: size.height,
                          width: size.width,
                          child: CustomPaint(
                            painter: Painter(),
                          ),
                        ),
                      ),

                      //done text
                      Positioned(
                        top: size.height * .32,
                        right: size.width * .345,
                        left: size.width * .345,
                        child: Text(
                          'Done',
                          style: TextStyle(
                            fontSize: titleFontSize,
                            color: textColor,
                            fontFamily: 'bold',
                          ),
                        ),
                      ),

                      //successful booking text with Dr. Name
                      Positioned(
                        bottom: size.height * .07,
                        left: size.width * .04,
                        right: size.width * .04,
                        child: RichText(
                          textAlign: TextAlign.center,
                          strutStyle: StrutStyle(
                            height: size.height * .002,
                          ),
                          text: TextSpan(
                            text: 'Your appointment with ',
                            style: TextStyle(
                              color: greyTextColor,
                              fontSize: mediumtextSize,
                              fontFamily: 'medium',
                            ),
                            children: [
                              TextSpan(
                                  text: controller.doctorName,
                                  style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'bold',
                                    fontSize: mediumtextSize,
                                  )),
                              TextSpan(
                                text: ' was successfully booked',
                                style: TextStyle(
                                  color: greyTextColor,
                                  fontSize: mediumtextSize,
                                  fontFamily: 'medium',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //appointments detail information
                Padding(
                  padding: EdgeInsets.only(top: size.height * .02),
                  child: Container(
                    height: size.height* .3,
                    width: size.width,
                    padding: EdgeInsets.symmetric(vertical: size.width* .06, horizontal: size.width* .04),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(size.width* .08),
                      color: whiteTone,
                    ),
                    child: Column(
                      children: [

                        //date
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Date',
                              style: TextStyle(
                                color: greyTextColor,
                                fontSize: mediumtextSize,
                                fontFamily: 'regular'
                              ),
                            ),

                            Text(
                              controller.date,
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: mediumtextSize,
                                  fontFamily: 'medium'
                              ),
                            ),
                          ],
                        ),

                        //Time
                        Padding(
                          padding: EdgeInsets.only(top: size.height* .045),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Time',
                                style: TextStyle(
                                    color: greyTextColor,
                                    fontSize: mediumtextSize,
                                    fontFamily: 'regular'
                                ),
                              ),

                              Text(
                                controller.time.value,
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: mediumtextSize,
                                    fontFamily: 'medium'
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Patient
                        Padding(
                          padding: EdgeInsets.only(top: size.height* .045),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Patient',
                                style: TextStyle(
                                    color: greyTextColor,
                                    fontSize: mediumtextSize,
                                    fontFamily: 'regular'
                                ),
                              ),

                              Text(
                                controller.patient,
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: mediumtextSize,
                                    fontFamily: 'medium'
                                ),
                              ),
                            ],
                          ),
                        ),

                        //total charge
                        Padding(
                          padding: EdgeInsets.only(top: size.height* .045),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                    color: greyTextColor,
                                    fontSize: mediumtextSize,
                                    fontFamily: 'regular'
                                ),
                              ),

                              Text(
                                '\$${controller.totalCharge}',
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: mediumtextSize,
                                    fontFamily: 'medium'
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
                    Get.toNamed(
                      Routes.HOME,
                    );
                  },
                  child: Container(
                    height: size.height * .08,
                    width: size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: darkTeal,
                        borderRadius: BorderRadius.circular(size.width * .05)),
                    child: Text(
                      'Back Home',
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
        );
      },
    );
  }
}
