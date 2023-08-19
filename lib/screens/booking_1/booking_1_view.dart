

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../main.dart';
import '../../routes/app_pages.dart';
import '../../utils/constant.dart';
import 'controller/booking_1_controller.dart';

class Booking1View extends StatelessWidget {
  const Booking1View({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Booking1Controller>(
      init: Booking1Controller(),
      global: false,
      builder: (controller) => Scaffold(
        resizeToAvoidBottomInset: true,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsets.only(
                left: size.width * .05,
                right: size.width * .05,
                top: size.height * .06),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                            borderRadius:
                                BorderRadius.circular(size.width * .04),
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
                        '1/3',
                        style: TextStyle(
                          fontSize: largeTextSize,
                          color: greyTextColor,
                          fontFamily: 'medium',
                        ),
                      ),
                    ],
                  ),

                  // Dr. info card
                  Padding(
                    padding: EdgeInsets.only(top: size.height * .05),
                    child: Container(
                      height: size.height * .166,
                      padding: EdgeInsets.all(size.width * .05),
                      decoration: BoxDecoration(
                        color: darkTeal,
                        borderRadius: BorderRadius.circular(size.width * .08),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //doctor profile photo
                          Container(
                            height: size.height,
                            width: size.width * .24,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(size.width * .05),
                              color: Colors.white,
                              image: DecorationImage(
                                  image:
                                      AssetImage(controller.profileImagePath),
                                  fit: BoxFit.cover),
                            ),
                          ),

                          //details
                          Padding(
                            padding: EdgeInsets.only(
                                left: size.width * .04,
                                top: size.height * .005),
                            child: SizedBox(
                              width: size.width * .43,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //Dr. Name
                                  Text(
                                    controller.doctorName,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'medium',
                                      fontSize: mediumtextSize,
                                    ),
                                  ),

                                  //doctor's speciality
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: size.height * .01),
                                    child: Text(
                                      controller.speciality,
                                      style: TextStyle(
                                        color: Colors.teal.shade100,
                                        fontFamily: 'regular',
                                        fontSize: mediumtextSize,
                                      ),
                                    ),
                                  ),

                                  //price
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: size.height * .025),
                                    child: Text(
                                      '\$${controller.charge}',
                                      // '\$${controller.charge}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'medium',
                                        fontSize: extraLargeTextSize,
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

                  //appointment type container
                  Padding(
                    padding: EdgeInsets.only(top: size.height * .015),
                    child: Container(
                      height: size.height * .166,
                      width: size.width,
                      padding: EdgeInsets.all(size.width * .05),
                      decoration: BoxDecoration(
                        color: whiteTone,
                        borderRadius: BorderRadius.circular(size.width * .08),
                      ),
                      child: Stack(
                        children: [
                          //appointment type text
                          Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Appointment type',
                              style: TextStyle(
                                color: textColor,
                                fontFamily: 'medium',
                                fontSize: extraLargeTextSize,
                              ),
                            ),
                          ),

                          //online and inPerson box
                          Align(
                            alignment: AlignmentDirectional.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //onLine box
                                InkWell(
                                  onTap: () {
                                    controller.isOnline.value = true;
                                    controller.isInPerson.value = false;
                                  },
                                  child: Obx(
                                    () => Container(
                                      width: size.width * .38,
                                      height: size.height * .06,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            size.width * .04),
                                        color: controller.isOnline.value
                                            ? darkTeal
                                            : Colors.white,
                                      ),
                                      child: Text(
                                        'Online',
                                        style: TextStyle(
                                            color: controller.isOnline.value
                                                ? Colors.white
                                                : greyTextColor,
                                            fontFamily: 'medium',
                                            fontSize: mediumtextSize),
                                      ),
                                    ),
                                  ),
                                ),

                                //inPerson box
                                InkWell(
                                  onTap: () {
                                    controller.isInPerson.value = true;
                                    controller.isOnline.value = false;
                                  },
                                  child: Obx(
                                    () => Container(
                                      width: size.width * .38,
                                      height: size.height * .06,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            size.width * .04),
                                        color: controller.isInPerson.value
                                            ? darkTeal
                                            : Colors.white,
                                      ),
                                      child: Text(
                                        'In person',
                                        style: TextStyle(
                                            color: controller.isInPerson.value
                                                ? Colors.white
                                                : greyTextColor,
                                            fontFamily: 'medium',
                                            fontSize: mediumtextSize),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //Booking for container
                  Padding(
                    padding: EdgeInsets.only(top: size.height * .015),
                    child: Container(
                      height: size.height * .166,
                      width: size.width,
                      padding: EdgeInsets.all(size.width * .05),
                      decoration: BoxDecoration(
                        color: whiteTone,
                        borderRadius: BorderRadius.circular(size.width * .08),
                      ),
                      child: Stack(
                        children: [
                          //appointment type text
                          Align(
                            alignment: AlignmentDirectional.topStart,
                            child: Text(
                              'Booking for',
                              style: TextStyle(
                                color: textColor,
                                fontFamily: 'medium',
                                fontSize: extraLargeTextSize,
                              ),
                            ),
                          ),

                          //myself and for other person box
                          Align(
                            alignment: AlignmentDirectional.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //onLine box
                                InkWell(
                                  onTap: () {
                                    controller.forMySelf.value = true;
                                    controller.forOtherPerson.value = false;
                                  },
                                  child: Obx(
                                    () => Container(
                                      width: size.width * .38,
                                      height: size.height * .06,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            size.width * .04),
                                        color: controller.forMySelf.value
                                            ? darkTeal
                                            : Colors.white,
                                      ),
                                      child: Text(
                                        'Myself',
                                        style: TextStyle(
                                            color: controller.forMySelf.value
                                                ? Colors.white
                                                : greyTextColor,
                                            fontFamily: 'medium',
                                            fontSize: mediumtextSize),
                                      ),
                                    ),
                                  ),
                                ),

                                //inPerson box
                                InkWell(
                                  onTap: () {
                                    controller.forOtherPerson.value = true;
                                    controller.forMySelf.value = false;
                                  },
                                  child: Obx(
                                    () => Container(
                                      width: size.width * .38,
                                      height: size.height * .06,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            size.width * .04),
                                        color: controller.forOtherPerson.value
                                            ? darkTeal
                                            : Colors.white,
                                      ),
                                      child: Text(
                                        'Other person',
                                        style: TextStyle(
                                            color:
                                                controller.forOtherPerson.value
                                                    ? Colors.white
                                                    : greyTextColor,
                                            fontFamily: 'medium',
                                            fontSize: mediumtextSize),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),

                  //Comment container
                  Padding(
                    padding: EdgeInsets.only(top: size.height * .015),
                    child: Container(
                      height: size.height * .166,
                      width: size.width,
                      padding: EdgeInsets.only(
                          right: size.width * .01,
                          left: size.width * .05,
                          bottom: size.width * .02,
                          top: size.width * .01),
                      decoration: BoxDecoration(
                        color: whiteTone,
                        borderRadius: BorderRadius.circular(size.width * .08),
                      ),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional.topStart,
                            child: TextField(
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'regular',
                                fontSize: mediumtextSize,
                                color: textColor,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Add comment',
                                hintStyle: TextStyle(
                                  fontFamily: 'medium',
                                  fontSize: mediumtextSize,
                                  color: greyTextColor,
                                ),
                              ),
                            ),
                          ),

                          //attachment button
                          Align(
                            alignment: AlignmentDirectional.bottomEnd,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.attach_file_rounded,
                                  color: darkTeal,
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
                  Get.toNamed(Routes.BOOKING_2, arguments: {
                    'doctorData': await controller.getDoctorData,
                    'isOnline': controller.isOnline.value,
                    'isInPerson': controller.isInPerson.value,
                    'forMySelf': controller.forMySelf.value,
                    'forOtherPerson': controller.forOtherPerson.value,
                  });
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
