import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medix_demo_app/app/routes/app_pages.dart';

import '../../../../main.dart';
import '../../constant.dart';

class SpecialistCard extends StatelessWidget {
  const SpecialistCard({
    super.key, required this.categoryImagePath,
    required this.categoryName,
    required this.numberOfDoctors,
    required this.firstDoctorImagePath,
    required this.secondDoctorImagePath,
    required this.thirdDoctorImagePath,
    required this.fourthDoctorImagePath,
  });

  final String categoryImagePath;
  final String categoryName;
  final int numberOfDoctors;
  final String firstDoctorImagePath;
  final String secondDoctorImagePath;
  final String thirdDoctorImagePath;
  final String fourthDoctorImagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .25,
      width: size.width * .43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size.width * .04),
        color: lightTeal,
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: size.width * .04, top: size.height * .02),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //category Icon
            Image.asset(categoryImagePath),

            //category Name
            Padding(
              padding: EdgeInsets.only(top: size.height * .03),
              child: Text(
                categoryName,
                style: TextStyle(
                    fontSize: subTitleFontSize,
                    color: textColor,
                    fontFamily: 'medium'),
              ),
            ),

            // number of available doctors
            Padding(
              padding: EdgeInsets.only(top: size.height * .02),
              child: Text(
                '$numberOfDoctors Doctors',
                style: const TextStyle(
                  fontFamily: 'regular',
                  color: greyTextColor,
                ),
              ),
            ),

            //List of doctor as avatar
            Padding(
              padding:
              EdgeInsets.only(top: size.height * .01, left: 0),
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
                        AssetImage(firstDoctorImagePath),
                      ),
                    ),
                    Positioned(
                      left: size.width * .06,
                      child: Container(
                        padding: EdgeInsets.all(size.width * .005),
                        width: size.width * .1,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white),
                        child: CircleAvatar(
                          radius: size.width * .05,
                          backgroundImage:
                          AssetImage(secondDoctorImagePath),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * .12,
                      child: Container(
                        padding: EdgeInsets.all(size.width * .005),
                        width: size.width * .1,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white),
                        child: CircleAvatar(
                          radius: size.width * .05,
                          backgroundImage:
                          AssetImage(thirdDoctorImagePath),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * .18,
                      child: Container(
                        padding: EdgeInsets.all(size.width * .005),
                        width: size.width * .1,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white),
                        child: CircleAvatar(
                          radius: size.width * .05,
                          backgroundImage:
                          AssetImage(fourthDoctorImagePath),
                        ),
                      ),
                    ),
                    Positioned(
                      left: size.width * .24,
                      child: Container(
                        padding: EdgeInsets.all(size.width * .005),
                        width: size.width * .1,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white),
                        child: CircleAvatar(
                          radius: size.width * .05,
                          backgroundColor: Colors.white,
                          child: Text(
                            '${numberOfDoctors - 4}',
                            style: const TextStyle(
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
    );
  }
}