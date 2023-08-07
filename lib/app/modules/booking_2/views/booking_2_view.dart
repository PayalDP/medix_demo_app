import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/booking_2_controller.dart';

class Booking2View extends GetView<Booking2Controller> {
  const Booking2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking2View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Booking2View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
