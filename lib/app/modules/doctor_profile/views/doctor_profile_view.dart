import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medix_demo_app/app/routes/app_pages.dart';

import '../../../../main.dart';
import '../../../data/constant.dart';
import '../controllers/doctor_profile_controller.dart';

class DoctorProfileView extends GetView<DoctorProfileController> {
  const DoctorProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: size.width * .05,
            right: size.width * .05,
            top: size.height * .05),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //detail Container
            Container(
              height: size.height * .35,
              width: size.width,
              padding: EdgeInsets.all(size.width * .05),
              decoration: BoxDecoration(
                  color: darkTeal,
                  borderRadius: BorderRadius.circular(size.width * .08)),
              child: Stack(
                children: [
                  //back button
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      height: size.height * .055,
                      width: size.width * .11,
                      decoration: BoxDecoration(
                        color: Colors.teal.shade100,
                        borderRadius: BorderRadius.circular(size.width * .02),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: const Color(0xfff7f8fd),
                        size: extraLargeTextSize,
                      ),
                    ),
                  ),

                  //message button
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          height: size.height * .055,
                          width: size.width * .11,
                          decoration: BoxDecoration(
                            color: Colors.teal.shade100,
                            borderRadius:
                                BorderRadius.circular(size.width * .02),
                          ),
                          child: Icon(
                            Icons.messenger_outline_rounded,
                            color: const Color(0xfff7f8fd),
                            size: extraLargeTextSize,
                          )),
                    ),
                  ),

                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //doctor photo
                        Container(
                          height: size.height * .13,
                          width: size.width * .26,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(size.width * .05),
                            image: DecorationImage(
                                image:
                                    AssetImage(controller.profileImagePath),
                                fit: BoxFit.cover),
                          ),
                        ),

                        //Doctor name
                        Padding(
                          padding: EdgeInsets.only(top: size.height * .015),
                          child: Text(
                            controller.doctorName,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'bold',
                              fontSize: extraLargeTextSize,
                            ),
                          ),
                        ),

                        //Doctor's speciality
                        Padding(
                          padding: EdgeInsets.only(top: size.height * .01),
                          child: Text(
                            controller.speciality,
                            style: TextStyle(
                              color: Colors.teal.shade100,
                              fontFamily: 'regular',
                              fontSize: mediumtextSize,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Patients and number of patient
                  Positioned(
                    bottom: size.height * .0,
                    left: size.width * .06,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //Patient text
                        Text(
                          'Patients',
                          style: TextStyle(
                            color: Colors.teal.shade100,
                            fontSize: mediumtextSize,
                            fontFamily: 'regular',
                          ),
                        ),

                        //number of patient
                        Padding(
                          padding: EdgeInsets.only(top: size.height * .01),
                          child: Text(
                            '345',
                            style: TextStyle(
                              color: lightTeal,
                              fontFamily: 'medium',
                              fontSize: largeTextSize,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  //Rating
                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //rating text
                        Text(
                          'Rating',
                          style: TextStyle(
                            color: Colors.teal.shade100,
                            fontSize: mediumtextSize,
                            fontFamily: 'regular',
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: size.height * .01),
                          child: Text(
                            '4.9',
                            style: TextStyle(
                              color: lightTeal,
                              fontFamily: 'medium',
                              fontSize: largeTextSize,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  //Experience and it's number
                  Positioned(
                    bottom: size.height * .0,
                    right: size.width * .02,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //Experience text
                        Text(
                          'Experience',
                          style: TextStyle(
                            color: Colors.teal.shade100,
                            fontSize: mediumtextSize,
                            fontFamily: 'regular',
                          ),
                        ),

                        //number of patient
                        Padding(
                          padding: EdgeInsets.only(top: size.height * .01),
                          child: Text(
                            '6 years',
                            style: TextStyle(
                              color: lightTeal,
                              fontFamily: 'medium',
                              fontSize: largeTextSize,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Expanded(
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                children: [
                  Obx(() => Container(
                        height: controller.readMoreAbout.value
                            ? null
                            : size.height * .22,
                        // width: size.width,
                        padding: EdgeInsets.all(size.width * .035),
                        decoration: BoxDecoration(
                            color: whiteTone,
                            borderRadius:
                                BorderRadius.circular(size.width * .08)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //about text
                            Text(
                              'About',
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: largeTextSize,
                                  fontFamily: 'medium'),
                            ),

                            //detail info
                            Padding(
                              padding: EdgeInsets.only(top: size.height * .02),
                              child: Text(
                                'Dr. Lily Davis is a board certified cardiologist specializing in intervention cardiology, cardiovascular disease............ Dr. Lily Davis is a board certified cardiologist specializing in intervention cardiology, cardiovascular disease............ Dr. Lily Davis is a board certified cardiologist specializing in intervention cardiology, cardiovascular disease............ Dr. Lily Davis is a board certified cardiologist specializing in intervention cardiology, cardiovascular disease............ Dr. Lily Davis is a board certified cardiologist specializing in intervention cardiology, cardiovascular disease............',
                                maxLines:
                                    controller.readMoreAbout.value ? null : 3,
                                softWrap: true,
                                overflow: controller.readMoreAbout.value
                                    ? null
                                    : TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: greyTextColor,
                                  height: size.height * .002,
                                  fontSize: smallTextSize,
                                  fontFamily: 'medium',
                                ),
                              ),
                            ),

                            //more button
                            Padding(
                              padding: EdgeInsets.only(top: size.height * .015),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  //read more text
                                  Text(
                                    controller.readMoreAbout.value
                                        ? 'Read less'
                                        : 'Read more',
                                    style: TextStyle(
                                      color: darkTeal,
                                      fontSize: smallTextSize,
                                      fontFamily: 'medium',
                                    ),
                                  ),

                                  //down arrow button
                                  InkWell(
                                    onTap: () {
                                      controller.readMoreAbout.value =
                                          !controller.readMoreAbout.value;
                                    },
                                    child: Image.asset(
                                        controller.readMoreAbout.value
                                            ? 'images/up_arrow_icon.png'
                                            : 'images/down_arrow_icon.png'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),

                  //Location controller
                  Padding(
                    padding: EdgeInsets.only(top: size.height * .015),
                    child: Container(
                      height: size.height * .22,
                      width: size.width,
                      padding: EdgeInsets.all(size.width * .04),
                      decoration: BoxDecoration(
                          color: whiteTone,
                          borderRadius:
                              BorderRadius.circular(size.width * .08),
                      ),
                      child: //about text
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          //Location text
                          Text(
                            'Location',
                            style: TextStyle(
                                color: textColor,
                                fontSize: largeTextSize,
                                fontFamily: 'medium'),
                          ),

                          //Map container
                          Padding(
                            padding: EdgeInsets.only(top: size.height* .015),
                            child: Container(
                              height: size.height* .13,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(size.width* .04),
                                image: const DecorationImage(image: AssetImage('images/map_image.webp'), fit: BoxFit.cover),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),

      //book appointment button
      bottomSheet: BottomSheet(
        backgroundColor: Colors.white,
        onClosing: () {},
        builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(
                vertical: size.height * .015, horizontal: size.width * .05),
            child: InkWell(
              onTap: () async {
                Get.toNamed(
                    Routes.BOOKING_1,
                    arguments: await controller.getDoctorData);
              },
              child: Container(
                height: size.height * .08,
                width: size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: darkTeal,
                    borderRadius: BorderRadius.circular(size.width * .05)),
                child: Text(
                  'Book Appointment',
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
  }
}
