import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medix_demo_app/screens/chat_room/controller/chat_room_controller.dart';

import '../../main.dart';
import '../../routes/app_pages.dart';
import '../../utils/constant.dart';

class ChatRoomView extends StatelessWidget {
  const ChatRoomView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatRoomController>(
      global: false,
      init: ChatRoomController(),
      builder: (controller) => Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
            left: size.width * .05,
            right: size.width * .05,
            top: size.height * .06,
            bottom: size.height * .04,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //top bar
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

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage(controller.profilePhotoPath),
                      ),

                      //booking text
                      Padding(
                        padding: EdgeInsets.only(left: size.width * .02),
                        child: Text(
                          controller.doctorName,
                          style: TextStyle(
                            fontSize: mediumToLargeSize,
                            color: textColor,
                            fontFamily: 'bold',
                          ),
                        ),
                      ),
                    ],
                  ),

                  //call button
                  InkWell(
                    onTap: () {
                      Get.toNamed(
                        Routes.CALL,
                        arguments: {
                          'doctorName': controller.doctorName,
                          'speciality': controller.speciality,
                          'profilePhotoPath': controller.profilePhotoPath,
                        }
                      );
                    },
                    child: Container(
                      height: size.height * .06,
                      width: size.width * .12,
                      decoration: BoxDecoration(
                        color: whiteTone,
                        borderRadius: BorderRadius.circular(size.width * .04),
                      ),
                      child: Icon(
                        Icons.call_outlined,
                        color: textColor,
                        size: largeTextSize,
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child:
                  ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemCount: controller.messages.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: controller.patient.toLowerCase() ==
                                    controller.messages[index]['sender']
                                        .toString()
                                        .toLowerCase()
                                ? size.width * .2
                                : 0,
                            right: controller.patient.toLowerCase() ==
                                    controller.messages[index]['sender']
                                        .toString()
                                        .toLowerCase()
                                ? 0
                                : size.width * .2),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: size.height * .01),
                          child: Column(
                            children: [
                              //message
                              Row(
                                mainAxisAlignment:
                                    controller.patient.toLowerCase() ==
                                            controller.messages[index]['sender']
                                                .toString()
                                                .toLowerCase()
                                        ? MainAxisAlignment.end
                                        : MainAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: ConstrainedBox(
                                      constraints: BoxConstraints(
                                          maxWidth: size.width * .8),
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: size.height * .025,
                                            horizontal: size.width * .04),
                                        decoration: BoxDecoration(
                                          color: controller.patient
                                                      .toLowerCase() ==
                                                  controller.messages[index]
                                                          ['sender']
                                                      .toString()
                                                      .toLowerCase()
                                              ? darkTeal
                                              : whiteTone,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                size.width * .05),
                                            topRight: Radius.circular(
                                                size.width * .05),
                                            bottomLeft: controller.patient
                                                        .toLowerCase() ==
                                                    controller.messages[index]
                                                            ['sender']
                                                        .toString()
                                                        .toLowerCase()
                                                ? Radius.circular(
                                                    size.width * .05)
                                                : const Radius.circular(0),
                                            bottomRight: controller.patient
                                                        .toLowerCase() ==
                                                    controller.messages[index]
                                                            ['sender']
                                                        .toString()
                                                        .toLowerCase()
                                                ? const Radius.circular(0)
                                                : Radius.circular(
                                                    size.width * .05),
                                          ),
                                        ),
                                        child: Text(
                                          controller.messages[index]['Message']
                                              .toString(),
                                          style: TextStyle(
                                            color: controller.patient
                                                        .toLowerCase() ==
                                                    controller.messages[index]
                                                            ['sender']
                                                        .toString()
                                                        .toLowerCase()
                                                ? whiteTone
                                                : textColor,
                                            fontFamily: 'regular',
                                            fontSize: mediumtextSize,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),

                              //time
                              Padding(
                                padding:
                                    EdgeInsets.only(top: size.height * .01),
                                child: Row(
                                  mainAxisAlignment: controller.patient
                                              .toLowerCase() ==
                                          controller.messages[index]['sender']
                                              .toString()
                                              .toLowerCase()
                                      ? MainAxisAlignment.end
                                      : MainAxisAlignment.start,
                                  children: [
                                    //time
                                    Text(
                                      controller.messages[index]['time']
                                          .toString(),
                                      style: TextStyle(
                                        color: greyTextColor,
                                        fontSize: smallTextSize,
                                      ),
                                    ),

                                    //read icon
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: size.width * .01,
                                      ),
                                      child:  controller.patient.toLowerCase() ==
                                          controller.messages[index]['sender']
                                              .toString()
                                              .toLowerCase()
                                          ? Icon(
                                        Icons.done_all_rounded,
                                        color: darkTeal,
                                        size: mediumtextSize,
                                      )
                                          : const Center(),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
              ),

              Container(
                height: size.height* .07,
                width: size.width,
                padding: EdgeInsets.symmetric(horizontal: size.width* .02),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width* .04),
                  color: whiteTone,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //attachment icon
                    Icon(
                      Icons.attach_file,
                      color: textColor,
                      size: largeTextSize,
                    ),

                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: size.width* .02),
                        child: TextField(
                          style: TextStyle(
                            color: textColor,
                            fontFamily: 'regular',
                            fontSize: mediumtextSize,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: greyTextColor,
                              fontSize: mediumtextSize,
                            ),
                            hintText: 'Type here',
                          ),
                        ),
                      ),
                    ),

                    //voice icon
                    Icon(
                      Icons.keyboard_voice_outlined,
                      color: textColor,
                      size: extraLargeTextSize,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
