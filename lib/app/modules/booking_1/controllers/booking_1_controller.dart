import 'dart:developer';

import 'package:get/get.dart';

class Booking1Controller extends GetxController {


  final getDoctorData = Get.arguments;
  late String doctorName;
  late String profileImagePath;
  late String speciality;
  late String charge;

  RxBool isOnline = false.obs;
  RxBool isInPerson = true.obs;
  RxBool forOtherPerson = false.obs;
  RxBool forMySelf = true.obs;

  @override
  void onInit() {
    log(getDoctorData.toString(), name: 'Doctor data');

    profileImagePath = getDoctorData['profileImagePath'];
    doctorName = getDoctorData['doctorName'];
    speciality = getDoctorData['speciality'];
    charge = '${getDoctorData['charge']}';
    log(profileImagePath.toString(), name: 'profilePhotoPath');
    log(doctorName.toString(), name: 'doctorName');
    log(speciality.toString(), name: 'speciality');
    log(charge.toString(), name: 'charge');

    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
