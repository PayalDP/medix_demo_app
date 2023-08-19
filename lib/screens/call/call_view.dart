import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medix_demo_app/main.dart';
import 'package:medix_demo_app/utils/constant.dart';

import 'controller/call_controller.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CallController>(
      global: false,
      init: CallController(),
      builder: (controller) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.only(
              left: size.width * .05,
              right: size.width * .05,
              top: size.height * .06,
              bottom: size.height * .04,
            ),
            child: Column(
              children: [
                Container(
                  height: size.height * .64,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.width * .08),
                    color: whiteTone,
                  ),
                  child: Stack(
                    children: [
                      //dr. profile Photo
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.width * .08),
                          image: DecorationImage(
                              image: AssetImage(controller.profilePhotoPath),
                              fit: BoxFit.cover),
                        ),
                      ),

                      //back button
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: size.width * .04, top: size.height * .02),
                          child: InkWell(
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
                              child: Icon(
                                Icons.arrow_back_ios_outlined,
                                color: textColor,
                                size: largeTextSize,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Align(
                        alignment: AlignmentDirectional.topCenter,
                        child: Padding(padding: EdgeInsets.only(
                            top: size.height * .045),
                        child: Text(
                          '01:32',
                          style: TextStyle(
                            color: whiteTone,
                            fontFamily: 'medium',
                            fontSize: mediumToLargeSize,
                          ),
                        ),
                        ),
                      ),

                      //patient image or video
                      Align(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: Padding(
                          padding: EdgeInsets.only(
                              bottom: size.height * .02,
                              right: size.width * .04),
                          child: Container(
                            height: size.height * .15,
                            width: size.width * .2,
                            decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.circular(size.width * .05),
                              image: const DecorationImage(
                                  image:
                                  AssetImage('images/profile_picture.jpeg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: AlignmentDirectional.bottomEnd,
                                  child: Container(
                                    height: size.height * .04,
                                    width: size.width * .08,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          size.width * .03),
                                      color: darkTeal,
                                    ),
                                    child: Icon(
                                      Icons.flip_camera_android_rounded,
                                      size: mediumtextSize,
                                      color: whiteTone,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                //dr. Name and speciality
                Padding(
                  padding: EdgeInsets.only(top: size.height * .02),
                  child: Container(
                    height: size.height * .15,
                    width: size.width,
                    padding: EdgeInsets.all(size.width * .05),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(size.width * .08),
                      color: whiteTone,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          controller.speciality,
                          style: TextStyle(
                            color: greyTextColor,
                            fontSize: mediumToLargeSize,
                            fontFamily: 'regular',
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: size.height * .02),
                          child: Text(
                            controller.doctorName,
                            style: TextStyle(
                              color: textColor,
                              fontSize: titleFontSize,
                              fontFamily: 'bold',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //bottom buttons row
                Padding(
                  padding: EdgeInsets.only(
                    top: size.height * .02,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //video call button
                      Container(
                        width: size.width * .23,
                        height: size.height * .07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.width * .05),
                          color: controller.isVideoCall.value == true
                              ? darkTeal
                              : lightTeal,
                        ),
                        child: Icon(
                          Icons.videocam_outlined,
                          color: controller.isVideoCall.value == true ? whiteTone : textColor,
                          size: titleFontSize,
                        ),
                      ),

                      //voice Call button
                      Container(
                        width: size.width * .23,
                        height: size.height * .07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.width * .05),
                          color: controller.isVoiceCall.value == true
                              ? darkTeal
                              : lightTeal,
                        ),
                        child: Icon(
                          Icons.phone_outlined,
                          color: controller.isVoiceCall.value == true ? whiteTone : textColor,
                          size: titleFontSize,
                        ),
                      ),

                      //recording button
                      Container(
                        width: size.width * .23,
                        height: size.height * .07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.width * .05),
                          color: controller.isRecordingOn.value == true
                              ? darkTeal
                              : lightTeal,
                        ),
                        child: Icon(
                          Icons.keyboard_voice_outlined,
                          color: controller.isRecordingOn.value == true ? whiteTone : textColor,
                          size: titleFontSize,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
