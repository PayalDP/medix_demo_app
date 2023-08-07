import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medix_demo_app/app/data/constant.dart';
import 'package:medix_demo_app/app/data/custom_widgets/custom_bottom_navigation_bar.dart';

import '../../../../main.dart';
import '../../../data/custom_widgets/appointmentScreen/appointment_card.dart';
import '../controllers/appointments_controller.dart';

class AppointmentsView extends GetView<AppointmentsController> {
  const AppointmentsView({Key? key}) : super(key: key);

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
            //Appointments text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Appointments',
                  style: TextStyle(
                      fontSize: titleFontSize,
                      color: textColor,
                      fontFamily: 'bold'),
                ),
              ],
            ),

            //upcoming amd past button row
            Padding(
              padding: EdgeInsets.only(top: size.height* .04),
              child: Container(
                height: size.height* .075,
                decoration: BoxDecoration(
                  color: whiteTone,
                  borderRadius: BorderRadius.circular(size.width * .04),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.isUpComing.value = true;
                        controller.isPast.value = false;
                      },
                      child: Obx(() => Container(
                            height: size.height * .07,
                            width: size.width * .45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: controller.isUpComing.value
                                  ? darkTeal
                                  : Colors.transparent,
                              borderRadius:
                                  BorderRadius.circular(size.width * .04),
                            ),
                            child: Text(
                              'Upcoming',
                              style: TextStyle(
                                color: controller.isUpComing.value
                                    ? Colors.white
                                    : greyTextColor,
                              ),
                            ),
                          )),
                    ),

                    //Past button
                    InkWell(
                        onTap: () {
                          controller.isUpComing.value = false;
                          controller.isPast.value = true;
                        },
                        child: Obx(
                          () => Container(
                            height: size.height * .07,
                            width: size.width * .45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: controller.isPast.value
                                  ? darkTeal
                                  : Colors.transparent,
                              borderRadius:
                                  BorderRadius.circular(size.width * .04),
                            ),
                            child: Text(
                              'Past',
                              style: TextStyle(
                                color: controller.isPast.value
                                    ? Colors.white
                                    : greyTextColor,
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),

            //List of appointments
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: const [

                //Appointments Card
                AppointmentCard(profilePhotoPath: 'images/female_doctor.jpg', doctorName: 'Dr. Lily Davis', doctorField: 'Dentist', dateAndTime: 'June 21, 2:00 PM'),

                AppointmentCard(profilePhotoPath: 'images/maleDoctor_image.jpg', doctorName: 'Dr. Henry Tomson', doctorField: 'Therapist', dateAndTime: 'June 29, 1:00 PM')
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
          isHomeScreenOn: false,
          isAppointmentScreenOn: true,
          isChatScreenOn: false,
          isProfileScreenOn: false),
    );
  }
}

