
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medix_demo_app/app/data/custom_widgets/custom_bottom_navigation_bar.dart';

import '../../../../main.dart';
import '../../../data/constant.dart';
import '../../../data/custom_widgets/profileScreen/health_detail_card.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: size.width * .05,
            right: size.width * .05,
            top: size.height * .07),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: size.height * .32,
              width: size.width,
              padding: EdgeInsets.all(size.width * .05),
              decoration: BoxDecoration(
                  color: whiteTone,
                  borderRadius: BorderRadius.circular(size.width * .08)),
              child: Stack(
                children: [
                  //heart button
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: size.height * .05,
                      width: size.width * .1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(size.width * .02),
                      ),
                      child: Icon(
                        Icons.favorite_border_rounded,
                        color: textColor,
                        size: iconSize,
                      ),
                    ),
                  ),

                  //setting button
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: size.height * .05,
                        width: size.width * .1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(size.width * .02),
                        ),
                        child: Icon(
                          Icons.settings_outlined,
                          color: textColor,
                          size: iconSize,
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //user photo
                        Container(
                          height: size.height * .13,
                          width: size.width * .26,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(size.width * .05),
                            image: const DecorationImage(
                                image:
                                    AssetImage('images/profile_picture.jpeg'),
                                fit: BoxFit.cover),
                          ),
                        ),

                        //USer name
                        Padding(
                          padding: EdgeInsets.only(top: size.height * .015),
                          child: Text(
                            'Emily Doe',
                            style: TextStyle(
                              color: textColor,
                              fontFamily: 'bold',
                              fontSize: extraLargeTextSize,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Positioned(
                    bottom: size.height * .0,
                    left: size.width * .2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //height text
                        Text(
                          'Height',
                          style: TextStyle(
                            color: greyTextColor,
                            fontSize: mediumtextSize,
                            fontFamily: 'regular',
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: size.height * .01),
                          child: Text(
                            '170 cm',
                            style: TextStyle(
                              color: textColor,
                              fontFamily: 'medium',
                              fontSize: largeTextSize,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Positioned(
                    bottom: size.height * .0,
                    right: size.width * .2,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //height text
                        Text(
                          'Weight',
                          style: TextStyle(
                            color: greyTextColor,
                            fontSize: mediumtextSize,
                            fontFamily: 'regular',
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: size.height * .01),
                          child: Text(
                            '63 kg',
                            style: TextStyle(
                              color: textColor,
                              fontFamily: 'medium',
                              fontSize: largeTextSize,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * .02),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //pulse container
                  HealthDetailCard(activeCategoryImagePath: 'images/active_pulse_icon.png', inactiveImagePath: 'images/pulse_icon.png',categoryName: 'Pulse', amount: '65', categoryParameter: 'bpm', isActive: true),

                  //Pressure container
                  HealthDetailCard(activeCategoryImagePath: 'images/active_bloodPressure_icon.png',inactiveImagePath: 'images/bloodPressure_icon.png', categoryName: 'Blood pressure', amount: '120/80', categoryParameter: '', isActive: false),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * .02),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  //Temperature
                  HealthDetailCard(activeCategoryImagePath: 'images/active_temperature_icon.png', inactiveImagePath: 'images/temperature_icon.png', categoryName: 'Temperature', amount: '36.7° C', categoryParameter: '', isActive: false),

                  //Sleep time
                  HealthDetailCard(activeCategoryImagePath: 'images/active_sleepTime_icon.png', inactiveImagePath: 'images/sleepTime_icon.png', categoryName: 'Sleep time', amount: '8', categoryParameter: 'hours', isActive: false)
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
          isHomeScreenOn: false,
          isAppointmentScreenOn: false,
          isChatScreenOn: false,
          isProfileScreenOn: true),
    );
  }
}

