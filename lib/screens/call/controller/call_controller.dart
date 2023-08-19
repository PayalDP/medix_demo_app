

import 'dart:developer';

import 'package:get/get.dart';

class CallController extends GetxController{

  final String doctorName = Get.arguments['doctorName'];
  final String speciality = Get.arguments['speciality'];
  final String profilePhotoPath = Get.arguments['profilePhotoPath'];
  RxBool isVoiceCall = true.obs;
  RxBool isVideoCall = false.obs;
  RxBool isRecordingOn = false.obs;


  @override
  void onInit() {
    log(doctorName , name: 'Doctor Name');
    log(speciality, name: 'speciality');
    log(profilePhotoPath, name: 'profilePhotoPath');

    super.onInit();
  }
}