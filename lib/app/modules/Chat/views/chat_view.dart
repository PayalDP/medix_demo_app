import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../main.dart';
import '../../../data/constant.dart';
import '../../../data/custom_widgets/chatScreen/chat_card.dart';
import '../../../data/custom_widgets/custom_bottom_navigation_bar.dart';
import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
            left: size.width * .05,
            right: size.width * .05,
            top: size.height * .05),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Chat text
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Chat',
                  style: TextStyle(
                      fontSize: titleFontSize,
                      color: textColor,
                      fontFamily: 'bold'),
                ),
              ],
            ),

            //search bar and filter button
            Padding(
              padding: EdgeInsets.only(top: size.height * .04),
              child: SizedBox(
                width: size.width,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height * .075,
                      width: size.width * .73,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size.width * .04),
                        color: whiteTone,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //search icon
                          Padding(
                            padding: EdgeInsets.only(
                              left: size.width * .05,
                            ),
                            child: Image.asset('images/search_icon.png'),
                          ),

                          //search text field
                          Padding(
                            padding: EdgeInsets.only(left: size.width* .02),
                            child: SizedBox(
                              width: size.width * .4,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search messages',
                                    hintStyle: TextStyle(
                                      fontFamily: 'medium',
                                      fontSize: size.width * .045,
                                      color: const Color(0xff000000)
                                          .withOpacity(0.202),
                                    )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //filter icon
                    Container(
                      height: size.height * .075,
                      width: size.width * .15,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size.width * .04),
                        color: whiteTone,
                      ),
                      child: Image.asset('images/filter_icon2.png'),
                    )
                  ],
                ),
              ),
            ),

            //List of Conversation
            ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              children: const [

                ChatItemCard(profilePhotoPath: 'images/female_doctor.jpg', doctorName: 'Dr. Lily Davis', message: 'Have you eaten anything.', time: '14:37', unReadMessagesNo: 2),

                ChatItemCard(profilePhotoPath: 'images/female_Image_2.jpeg', doctorName: 'Dr. Julie Smith', message: "Pleas make sure to take", time: '14:37', unReadMessagesNo: 0),

                ChatItemCard(profilePhotoPath: 'images/maleDoctor_image.jpg', doctorName: 'Dr. John Mayer', message: "let's schedule appointment ", time: '14:37', unReadMessagesNo: 0),

                ChatItemCard(profilePhotoPath: 'images/male_image_2.jpeg', doctorName: 'Dr. Henry Tomson', message: 'Based on your results      ', time: '14:37', unReadMessagesNo: 0),

              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(
          isHomeScreenOn: false,
          isAppointmentScreenOn: false,
          isChatScreenOn: true,
          isProfileScreenOn: false),
    );
  }
}
