
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medix_demo_app/utils/date_utils.dart';
import '../../../main.dart';
import '../../routes/app_pages.dart';
import '../../utils/constant.dart';
import '../../widgets/date_day_card.dart';
import '../../widgets/time_card.dart';
import 'controller/booking_2_controller.dart';

class Booking2View extends StatelessWidget {
  const Booking2View({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<Booking2Controller>(
      init: Booking2Controller(),
      global: false,
      builder: (controller) {

        controller.timeSlots = controller.getTimeSlotsList(context);

        return Scaffold(
          body: Padding(
            padding: EdgeInsets.only(
                left: size.width * .05,
                right: size.width * .05,
                top: size.height * .06),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Booking text back button
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

                    //booking text
                    Text(
                      'Booking',
                      style: TextStyle(
                          fontSize: titleFontSize,
                          color: textColor,
                          fontFamily: 'bold'),
                    ),

                    //booking screen number
                    Text(
                      '2/3',
                      style: TextStyle(
                        fontSize: largeTextSize,
                        color: greyTextColor,
                        fontFamily: 'medium',
                      ),
                    ),
                  ],
                ),

                //select date and time text
                Padding(
                  padding: EdgeInsets.only(top: size.height * .05),
                  child: Text(
                    'Select date and time',
                    style: TextStyle(
                        color: textColor,
                        fontFamily: 'medium',
                        fontSize: extraLargeTextSize),
                  ),
                ),

                //current month and year
                Padding(
                  padding: EdgeInsets.only(top: size.height * .02),
                  child: Obx(
                        () => Text(
                      '${getSelectedMonth(controller.selectedDate.value.month)} ${controller.selectedDate.value.year}',
                      style: TextStyle(
                        fontSize: smallTextSize,
                        color: Colors.grey,
                        fontFamily: 'regular',
                      ),
                    ),
                  ),
                ),

                //date picker
                Padding(
                  padding: EdgeInsets.only(top: size.height * .01),
                  child: SizedBox(
                    height: size.height * .1,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: controller.dateList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            DateAndDayCard(
                              dateTime: controller.dateList[index],
                              controller: controller,
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),

                //time Picker
                Padding(
                  padding: EdgeInsets.only(top: size.height * .04),
                  child: Text(
                    'Time',
                    style: TextStyle(
                      fontSize: smallTextSize,
                      color: Colors.grey,
                      fontFamily: 'regular',
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: size.height * .015),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TimeCard(
                        timeString: controller.timeSlots.first,
                        controller: controller,
                      ),
                      TimeCard(
                        timeString: controller.timeSlots[1],
                        controller: controller,
                      ),
                      TimeCard(
                        timeString: controller.timeSlots[2],
                        controller: controller,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: size.height * .015),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TimeCard(
                        timeString: controller.timeSlots[6],
                        controller: controller,
                      ),
                      TimeCard(
                        timeString: controller.timeSlots[7],
                        controller: controller,
                      ),
                      TimeCard(
                        timeString: controller.timeSlots[8],
                        controller: controller,
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: size.height * .015),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TimeCard(
                        timeString: controller.timeSlots[9],
                        controller: controller,
                      ),
                      TimeCard(
                        timeString: controller.timeSlots[10],
                        controller: controller,
                      ),
                      TimeCard(
                        timeString: controller.timeSlots[11],
                        controller: controller,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          //Next button
          bottomSheet: BottomSheet(
            backgroundColor: Colors.white,
            showDragHandle: false,
            onClosing: () {},
            builder: (context) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    vertical: size.height * .015, horizontal: size.width * .05),
                child: InkWell(
                  onTap: () async {

                    if(controller.selectedTime.isNotEmpty){

                      //merge previous screen's data and current screen's data;
                      controller.addItemInBookingDetails(controller.bookingDetail);

                      Get.toNamed(
                          Routes.BOOKING_3,
                          arguments: {
                            'doctorDetail': controller.doctorDetail,
                            'bookingDetail': controller.bookingDetail
                          }
                      );

                    }

                  },
                  child: Container(
                    height: size.height * .08,
                    width: size.width,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: darkTeal,
                        borderRadius: BorderRadius.circular(size.width * .05)),
                    child: Text(
                      'Next',
                      style: TextStyle(
                          color: whiteTone,
                          fontSize: mediumtextSize,
                          fontFamily: 'medium'),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}

