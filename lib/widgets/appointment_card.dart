
import 'package:flutter/material.dart';

import '../../../main.dart';
import '../utils/constant.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({
    super.key, required this.profilePhotoPath, required this.doctorName, required this.doctorField, required this.dateAndTime,
  });

  final String profilePhotoPath;
  final String doctorName;
  final String doctorField;
  final String dateAndTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height* .01),
      child: Container(
        height: size.height* .25,
        width: size.width,
        padding: EdgeInsets.all(size.width* .04),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size.width* .08),
          color: whiteTone,
        ),

        child: Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            // appointment detail
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //doctor profile photo
                Container(
                  height: size.height* .12,
                  width: size.width * .24,
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.circular(size.width * .05),
                    color: Colors.white,
                    image: DecorationImage(
                        image:
                        AssetImage(profilePhotoPath),
                        fit: BoxFit.cover),
                  ),
                ),

                //details
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * .04,
                      top: size.height * .005),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Dr. Name
                      Text(
                        doctorName,
                        style: TextStyle(
                          color: textColor,
                          fontFamily: 'medium',
                          fontSize: largeTextSize,
                        ),
                      ),

                      //doctor's speciality
                      Padding(
                        padding:
                        EdgeInsets.only(top: size.height * .01),
                        child: Text(
                          doctorField,
                          style: TextStyle(
                            color: greyTextColor,
                            fontFamily: 'regular',
                            fontSize: mediumtextSize,
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * .025),
                        child: Row(
                          children:[

                            Image.asset('images/calendar_text_emoji.png'),

                            Text(
                            ' $dateAndTime',
                            style: TextStyle(
                              color: textColor,
                              fontFamily: 'medium',
                              fontSize: mediumtextSize,
                            ),
                          ),
                        ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //buttons
            Padding(
              padding: EdgeInsets.only(top: size.height* .023),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  //cancel button
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: size.height* .06,
                      width: size.width* .35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size.width* .03),
                        color: lightTeal,
                      ),
                      child: Text('cancel',
                        style: TextStyle(
                          fontSize: mediumtextSize,
                          color: textColor,
                          fontFamily: 'medium',
                        ),
                      ),
                    ),
                  ),

                  //Reschedule
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: size.height* .06,
                      width: size.width* .35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size.width* .03),
                        color: darkTeal,
                      ),
                      child: Text('Reschedule',
                        style: TextStyle(
                          fontSize: mediumtextSize,
                          color: Colors.white,
                          fontFamily: 'medium',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}