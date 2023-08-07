import 'dart:developer';

import 'package:get/get.dart';

class DoctorProfileController extends GetxController {

  RxBool readMoreAbout = false.obs;
  final getDoctorData = Get.arguments;
  late String doctorName;
  late String profileImagePath;
  late String speciality;
  late String charge;


  @override
  void onInit() {

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
