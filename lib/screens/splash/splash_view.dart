import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medix_demo_app/screens/splash/controller/splash_controller.dart';
import 'package:medix_demo_app/utils/constant.dart';

import '../../main.dart';
import '../../routes/app_pages.dart';
import '../../widgets/health_detail_card.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return GetBuilder<SplashController>(
      init: SplashController(),
      global: false,
      builder: (controller) {
        return Scaffold(
          body: Padding(
            padding:
                EdgeInsets.only(left: size.width * .05, top: size.height * .07),
            child: Stack(
              children: [
                //app logo and name
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset('images/app icon.png'),
                      Text(
                        'Medix',
                        style: TextStyle(
                          color: textColor,
                          fontSize: largeTextSize,
                          fontFamily: 'medium',
                        ),
                      ),
                    ],
                  ),
                ),

                //big text
                Positioned(
                  top: size.height * .1,
                  right: size.width * .3,
                  left: size.width * .0,
                  child: Text(
                    'Your health is our priority',
                    style: TextStyle(
                        fontSize: size.width * .1,
                        fontFamily: 'bold',
                        color: textColor,
                        height: size.width * .003),
                  ),
                ),

                //small text
                Positioned(
                  top: size.height * .23,
                  right: size.width * .4,
                  left: size.width * .0,
                  child: Text(
                    'Expert care, when you need it most',
                    style: TextStyle(
                        fontSize: mediumtextSize,
                        fontFamily: 'medium',
                        color: Colors.grey.shade400,
                        height: size.width * .003),
                  ),
                ),

                //Dental container
                Positioned(
                  top: size.height * .37,
                  left: size.width * .01,
                  right: size.width * .46,
                  child: Container(
                    height: size.height * .28,
                    width: size.width * .4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(size.width * .08),
                      color: Colors.blue.shade50,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: size.width * .06, top: size.height * .03),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //category Icon
                          Image.asset('images/tooth_icon.png'),

                          //category Name
                          Padding(
                            padding: EdgeInsets.only(top: size.height * .035),
                            child: Text(
                              'Dental',
                              style: TextStyle(
                                  fontSize: subTitleFontSize,
                                  color: textColor,
                                  fontFamily: 'medium'),
                            ),
                          ),

                          // number of available doctors
                          Padding(
                            padding: EdgeInsets.only(top: size.height * .025),
                            child: const Text(
                              '9 Doctors',
                              style: TextStyle(
                                fontFamily: 'regular',
                                color: greyTextColor,
                              ),
                            ),
                          ),

                          //List of doctor as avatar
                          Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .015, left: 0),
                            child: SizedBox(
                              height: size.height * .07,
                              width: size.width,
                              child: Stack(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(size.width * .005),
                                    width: size.width * .1,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white),
                                    child: CircleAvatar(
                                      radius: size.width * .05,
                                      backgroundImage:
                                          const AssetImage('images/Dr.4.jpeg'),
                                    ),
                                  ),
                                  Positioned(
                                    left: size.width * .06,
                                    child: Container(
                                      padding:
                                          EdgeInsets.all(size.width * .005),
                                      width: size.width * .1,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: CircleAvatar(
                                        radius: size.width * .05,
                                        backgroundImage: const AssetImage(
                                            'images/Dr.3.jpeg'),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: size.width * .12,
                                    child: Container(
                                      padding:
                                          EdgeInsets.all(size.width * .005),
                                      width: size.width * .1,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: CircleAvatar(
                                        radius: size.width * .05,
                                        backgroundImage: const AssetImage(
                                            'images/Dr.2.jpeg'),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: size.width * .18,
                                    child: Container(
                                      padding:
                                          EdgeInsets.all(size.width * .005),
                                      width: size.width * .1,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: CircleAvatar(
                                        radius: size.width * .05,
                                        backgroundImage:
                                            const AssetImage('images/Dr.1.jpg'),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: size.width * .24,
                                    child: Container(
                                      padding:
                                          EdgeInsets.all(size.width * .005),
                                      width: size.width * .1,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white),
                                      child: CircleAvatar(
                                        radius: size.width * .05,
                                        backgroundColor: Colors.white,
                                        child: const Text(
                                          '${(9 - 4)}',
                                          style: TextStyle(
                                            color: greyTextColor,
                                            fontFamily: 'regular',
                                          ),
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
                ),

                //pulse container
                Positioned(
                  top: size.height * .27,
                  left: size.width * .55,
                  child: const HealthDetailCard(activeCategoryImagePath: 'images/active_pulse_icon.png', inactiveImagePath: 'images/pulse_icon.png',categoryName: 'Pulse', amount: '65', categoryParameter: 'bpm', isActive: true),
                ),

                Positioned(
                  top: size.height * .525,
                  left: size.width * .55,
                  child: const HealthDetailCard(
                      activeCategoryImagePath:
                          'images/active_bloodPressure_icon.png',
                      inactiveImagePath: 'images/bloodPressure_icon.png',
                      categoryName: 'Blood pressure',
                      amount: '120/80',
                      categoryParameter: '',
                      isActive: false),
                ),
              ],
            ),
          ),

          //get started button
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
                    Get.toNamed(Routes.HOME);
                  },
                  child: Container(
                    height: size.height * .08,
                    width: size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: darkTeal,
                        borderRadius: BorderRadius.circular(size.width * .05)),
                    child: Text(
                      'Get stared',
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
