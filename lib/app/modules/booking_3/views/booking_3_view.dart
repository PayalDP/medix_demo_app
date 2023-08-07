import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/booking_3_controller.dart';

class Booking3View extends GetView<Booking3Controller> {
  const Booking3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking3View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Booking3View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
