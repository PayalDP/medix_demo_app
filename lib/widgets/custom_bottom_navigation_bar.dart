import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../main.dart';
import '../routes/app_pages.dart';
import '../utils/constant.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, required this.isHomeScreenOn, required this.isAppointmentScreenOn, required this.isChatScreenOn, required this.isProfileScreenOn});

  final bool isHomeScreenOn;
  final bool isAppointmentScreenOn;
  final bool isChatScreenOn;
  final bool isProfileScreenOn;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * .1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          //home button
          InkWell(
            onTap: () {
              Get.toNamed(Routes.HOME);
            },
            child: Container(
              height: size.height * .06,
              width: size.width * .17,
              decoration: BoxDecoration(
                  color: isHomeScreenOn ? darkTeal : null,
                  borderRadius: BorderRadius.circular(size.width* .03)
              ),
              child: isHomeScreenOn ? Image.asset('images/active_home_icon.png') : Image.asset('images/home_icon.png'),
            ),
          ),

          //appointment button
          InkWell(
            onTap: () {
              Get.toNamed(Routes.APPOINTMENTS);
            },
            child: Container(
              height: size.height * .06,
              width: size.width * .17,
              decoration: BoxDecoration(
                  color: isAppointmentScreenOn ? darkTeal : null,
                  borderRadius: BorderRadius.circular(size.width* .03)
              ),
              child: isAppointmentScreenOn ? Image.asset('images/active_calendar_icon.png') : Image.asset('images/calendar_icon.png'),
            ),
          ),

          //conversation button
          InkWell(
            onTap: () {
              Get.toNamed(Routes.CHAT);
            },
            child: Container(
              height: size.height * .06,
              width: size.width * .17,
              decoration: BoxDecoration(
                  color: isChatScreenOn ? darkTeal : null,
                  borderRadius: BorderRadius.circular(size.width* .03)
              ),
              child: isChatScreenOn ? Image.asset('images/active_message_icon.png') : Image.asset('images/message_icon.png'),),
          ),

          //profile button
          InkWell(
            onTap: () {
              Get.toNamed(Routes.PROFILE);
            },
            child: Container(
              height: size.height * .06,
              width: size.width * .17,
              decoration: BoxDecoration(
                  color: isProfileScreenOn ? darkTeal : null,
                  borderRadius: BorderRadius.circular(size.width* .03)
              ),
              child: isProfileScreenOn ? Image.asset('images/active_user_icon.png') : Image.asset('images/user_icon.png'),),
          ),
        ],
      ),
    );
  }
}