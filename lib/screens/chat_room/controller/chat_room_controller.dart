import 'dart:developer';

import 'package:get/get.dart';

class ChatRoomController extends GetxController{

  final String doctorName = Get.arguments['doctorName'];
  final String profilePhotoPath = Get.arguments['profilePhotoPath'];
  final String patient = 'Emily Doe';
  final String speciality = Get.arguments['speciality'];
  RxList<Map> messages = <Map>[].obs;

  @override
  void onInit() {

    messages.value = messageModel;

    log(doctorName, name: 'doctorName');
    log(profilePhotoPath, name: 'photo path');

    super.onInit();
  }

}

List<Map> messageModel = [
  {
    'Message': "Hello! I have a toothache that we have treated, and I can't eat anything. I also have a high fever.",
    'sender': 'Emily Doe',
    'time': '14:14',
  },
  {
    'Message': "Hello! How long ago did the tooth start to hurt?",
    'sender': 'Dr. Lily Davis',
    'time': '14:20',
  },
  {
    'Message': "From yesterday",
    'sender': 'Emily Doe',
    'time': '14:25',
  },
  {
    'Message': "Have you eaten anything solid?",
    'sender': 'Dr. Lily Davis',
    'time': '14:37',
  },
];