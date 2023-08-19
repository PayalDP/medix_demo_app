import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medix_demo_app/utils/constant.dart';
import 'package:medix_demo_app/widgets/custom_bottom_navigation_bar.dart';

import '../../../main.dart';
import '../../routes/app_pages.dart';
import '../../widgets/Home_screen_specialist_card.dart';
import 'controller/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return GetBuilder<HomeController>(
      init: HomeController(),
      global: false,
      builder: (controller) => Scaffold(
        body: Padding(
          padding: EdgeInsets.only(
              left: size.width * .05,
              right: size.width * .05,
              top: size.height * .05),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Row with address button and profile name
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //location page button
                  Container(
                    height: size.height * .06,
                    width: size.width * .12,
                    decoration: BoxDecoration(
                      color: whiteTone,
                      borderRadius: BorderRadius.circular(size.width * .04),
                      image: const DecorationImage(
                        image: AssetImage('images/location_icon.png'),
                      ),
                    ),
                  ),

                  //user name textField
                  Padding(
                    padding: EdgeInsets.only(left: size.width * .04),
                    child: Text(
                      'kyiv',
                      style: TextStyle(
                        color: textColor,
                        fontFamily: 'regular',
                        fontSize: size.width * .05,
                      ),
                    ),
                  ),
                ],
              ),

              //find your doctor text
              Padding(
                padding: EdgeInsets.only(top: size.height * .02),
                child: Text(
                  'Find your doctor',
                  style: TextStyle(
                    fontFamily: 'bold',
                    fontSize: titleFontSize,
                    color: textColor,
                  ),
                ),
              ),

              //search bar
              Padding(
                padding: EdgeInsets.only(top: size.height * .02),
                child: Container(
                  height: size.height * .075,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.width * .04),
                    color: whiteTone,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        padding: EdgeInsets.only(left: size.width* .01),
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(Routes.SEARCH_DOCTORS);
                          },
                          child: SizedBox(
                            width: size.width * .65,
                            child: Text(
                              'Search',
                              style: TextStyle(
                                fontFamily: 'medium',
                                fontSize: size.width * .045,
                                color: const Color(0xff000000).withOpacity(0.202),
                              ),
                            ),
                          ),
                        ),
                      ),

                      //microphone icon
                      Padding(
                        padding: EdgeInsets.only(right: size.width * .05),
                        child: InkWell(
                          onTap: () {},
                          child: Image.asset('images/microphone_icon.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //appointment and 'see all' button
              Padding(
                padding: EdgeInsets.only(top: size.height * .02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //text for appointment
                    Text(
                      'Appointments',
                      style: TextStyle(
                          color: textColor,
                          fontSize: subTitleFontSize,
                          fontFamily: 'medium'),
                    ),

                    // see all button
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(
                          color: const Color(0xff000000).withOpacity(0.402),
                          fontFamily: 'medium',
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Appointment card
              Padding(
                padding: EdgeInsets.only(top: size.height * .005),
                child: SizedBox(
                  height: size.height * .18,
                  child: Stack(
                    children: [
                      //Shadow box
                      Positioned(
                        left: size.width * .05,
                        right: size.width * .05,
                        top: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.teal[100],
                            border: Border.all(color: Colors.teal.shade100),
                            borderRadius: BorderRadius.circular(size.width * .08),
                          ),
                        ),
                      ),

                      //appointment content
                      Positioned(
                        child: Container(
                          height: size.height * .166,
                          padding: EdgeInsets.all(size.width * .05),
                          decoration: BoxDecoration(
                            color: darkTeal,
                            borderRadius: BorderRadius.circular(size.width * .08),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //doctor profile photo
                              Container(
                                height: size.height,
                                width: size.width * .24,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(size.width * .05),
                                  color: Colors.white,
                                  image: const DecorationImage(
                                      image:
                                      AssetImage('images/female_doctor.jpg'),
                                      fit: BoxFit.cover),
                                ),
                              ),

                              //details
                              Padding(
                                padding: EdgeInsets.only(
                                    left: size.width * .04,
                                    top: size.height * .005),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //Dr. Name
                                    Text(
                                      'Dr. Lily Davis',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'regular',
                                        fontSize: mediumtextSize,
                                      ),
                                    ),

                                    //doctor's speciality
                                    Padding(
                                      padding:
                                      EdgeInsets.only(top: size.height * .01),
                                      child: Text(
                                        'Dentist',
                                        style: TextStyle(
                                          color: lightTeal,
                                          fontFamily: 'regular',
                                          fontSize: mediumtextSize,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: size.height * .025),
                                      child: Text(
                                        'June 21, 2:00 PM',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'regular',
                                          fontSize: largeTextSize,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Specialist text and 'see all' button
              Padding(
                padding: EdgeInsets.only(top: size.height * .01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //text for appointment
                    Text(
                      'Specialist',
                      style: TextStyle(
                          color: textColor,
                          fontSize: subTitleFontSize,
                          fontFamily: 'medium'),
                    ),

                    // see all button
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'See all',
                        style: TextStyle(
                            color: const Color(0xff000000).withOpacity(0.402),
                            fontFamily: 'medium'),
                      ),
                    ),
                  ],
                ),
              ),

              //Specialist cards
              Padding(
                padding: EdgeInsets.only(top: size.height * .01),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    // cardio
                    HomeScreenSpecialistCard(
                      categoryImagePath: 'images/cardio_icon.png',
                      categoryName: 'Cardio',
                      numberOfDoctors: 12,
                      firstDoctorImagePath: 'images/Dr.1.jpg',
                      secondDoctorImagePath: 'images/Dr.2.jpeg',
                      thirdDoctorImagePath: 'images/Dr.3.jpeg',
                      fourthDoctorImagePath: 'images/Dr.4.jpeg',
                    ),

                    //dental
                    HomeScreenSpecialistCard(
                      categoryImagePath: 'images/tooth_icon.png',
                      categoryName: 'Dental',
                      numberOfDoctors: 9,
                      firstDoctorImagePath: 'images/Dr.4.jpeg',
                      secondDoctorImagePath: 'images/Dr.3.jpeg',
                      thirdDoctorImagePath: 'images/Dr.2.jpeg',
                      fourthDoctorImagePath: 'images/Dr.1.jpg',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(
            isHomeScreenOn: true,
            isAppointmentScreenOn: false,
            isChatScreenOn: false,
            isProfileScreenOn: false),
      ),
    );
  }
}



// class HomeView extends GetView<HomeController> {
//   const HomeView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     size = MediaQuery.of(context).size;
//
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.only(
//             left: size.width * .05,
//             right: size.width * .05,
//             top: size.height * .05),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             //Row with address button and profile name
//             Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 //location page button
//                 Container(
//                   height: size.height * .06,
//                   width: size.width * .12,
//                   decoration: BoxDecoration(
//                     color: whiteTone,
//                     borderRadius: BorderRadius.circular(size.width * .04),
//                     image: const DecorationImage(
//                       image: AssetImage('images/location_icon.png'),
//                     ),
//                   ),
//                 ),
//
//                 //user name textField
//                 Padding(
//                   padding: EdgeInsets.only(left: size.width * .04),
//                   child: Text(
//                     'kyiv',
//                     style: TextStyle(
//                       color: textColor,
//                       fontFamily: 'regular',
//                       fontSize: size.width * .05,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//
//             //find your doctor text
//             Padding(
//               padding: EdgeInsets.only(top: size.height * .02),
//               child: Text(
//                 'Find your doctor',
//                 style: TextStyle(
//                   fontFamily: 'bold',
//                   fontSize: titleFontSize,
//                   color: textColor,
//                 ),
//               ),
//             ),
//
//             //search bar
//             Padding(
//               padding: EdgeInsets.only(top: size.height * .02),
//               child: Container(
//                 height: size.height * .075,
//                 width: size.width,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(size.width * .04),
//                   color: whiteTone,
//                 ),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     //search icon
//                     Padding(
//                       padding: EdgeInsets.only(
//                         left: size.width * .05,
//                       ),
//                       child: Image.asset('images/search_icon.png'),
//                     ),
//
//                     //search text field
//                     Padding(
//                       padding: EdgeInsets.only(left: size.width* .01),
//                       child: InkWell(
//                         onTap: () {
//                           Get.toNamed(Routes.SEARCH_DOCTORS);
//                         },
//                         child: SizedBox(
//                           width: size.width * .65,
//                           child: Text(
//                             'Search',
//                              style: TextStyle(
//                                 fontFamily: 'medium',
//                                 fontSize: size.width * .045,
//                                 color: const Color(0xff000000).withOpacity(0.202),
//                               ),
//                           ),
//                         ),
//                       ),
//                     ),
//
//                     //microphone icon
//                     Padding(
//                         padding: EdgeInsets.only(right: size.width * .05),
//                         child: InkWell(
//                           onTap: () {},
//                             child: Image.asset('images/microphone_icon.png'),
//                         ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//             //appointment and 'see all' button
//             Padding(
//               padding: EdgeInsets.only(top: size.height * .02),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   //text for appointment
//                   Text(
//                     'Appointments',
//                     style: TextStyle(
//                         color: textColor,
//                         fontSize: subTitleFontSize,
//                         fontFamily: 'medium'),
//                   ),
//
//                   // see all button
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       'See all',
//                       style: TextStyle(
//                         color: const Color(0xff000000).withOpacity(0.402),
//                         fontFamily: 'medium',
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             //Appointment card
//             Padding(
//               padding: EdgeInsets.only(top: size.height * .005),
//               child: SizedBox(
//                 height: size.height * .18,
//                 child: Stack(
//                   children: [
//                     //Shadow box
//                     Positioned(
//                       left: size.width * .05,
//                       right: size.width * .05,
//                       top: 0,
//                       bottom: 0,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.teal[100],
//                           border: Border.all(color: Colors.teal.shade100),
//                           borderRadius: BorderRadius.circular(size.width * .08),
//                         ),
//                       ),
//                     ),
//
//                     //appointment content
//                     Positioned(
//                       child: Container(
//                         height: size.height * .166,
//                         padding: EdgeInsets.all(size.width * .05),
//                         decoration: BoxDecoration(
//                           color: darkTeal,
//                           borderRadius: BorderRadius.circular(size.width * .08),
//                         ),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             //doctor profile photo
//                             Container(
//                               height: size.height,
//                               width: size.width * .24,
//                               decoration: BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.circular(size.width * .05),
//                                 color: Colors.white,
//                                 image: const DecorationImage(
//                                     image:
//                                         AssetImage('images/female_doctor.jpg'),
//                                     fit: BoxFit.cover),
//                               ),
//                             ),
//
//                             //details
//                             Padding(
//                               padding: EdgeInsets.only(
//                                   left: size.width * .04,
//                                   top: size.height * .005),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   //Dr. Name
//                                   Text(
//                                     'Dr. Lily Davis',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontFamily: 'regular',
//                                       fontSize: mediumtextSize,
//                                     ),
//                                   ),
//
//                                   //doctor's speciality
//                                   Padding(
//                                     padding:
//                                         EdgeInsets.only(top: size.height * .01),
//                                     child: Text(
//                                       'Dentist',
//                                       style: TextStyle(
//                                         color: lightTeal,
//                                         fontFamily: 'regular',
//                                         fontSize: mediumtextSize,
//                                       ),
//                                     ),
//                                   ),
//
//                                   Padding(
//                                     padding: EdgeInsets.only(
//                                         top: size.height * .025),
//                                     child: Text(
//                                       'June 21, 2:00 PM',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontFamily: 'regular',
//                                         fontSize: largeTextSize,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//
//             //Specialist text and 'see all' button
//             Padding(
//               padding: EdgeInsets.only(top: size.height * .01),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   //text for appointment
//                   Text(
//                     'Specialist',
//                     style: TextStyle(
//                         color: textColor,
//                         fontSize: subTitleFontSize,
//                         fontFamily: 'medium'),
//                   ),
//
//                   // see all button
//                   TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       'See all',
//                       style: TextStyle(
//                           color: const Color(0xff000000).withOpacity(0.402),
//                           fontFamily: 'medium'),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//
//             //Specialist cards
//             Padding(
//               padding: EdgeInsets.only(top: size.height * .01),
//               child: const Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   HomeScreenSpecialistCard(
//                       categoryImagePath: 'images/cardio_icon.png',
//                       categoryName: 'Cardio',
//                     numberOfDoctors: 12,
//                     firstDoctorImagePath: 'images/Dr.1.jpg',
//                     secondDoctorImagePath: 'images/Dr.2.jpeg',
//                     thirdDoctorImagePath: 'images/Dr.3.jpeg',
//                     fourthDoctorImagePath: 'images/Dr.4.jpeg',
//                   ),
//
//                   // Container 2
//                   HomeScreenSpecialistCard(
//                     categoryImagePath: 'images/tooth_icon.png',
//                     categoryName: 'Dental',
//                     numberOfDoctors: 9,
//                     firstDoctorImagePath: 'images/Dr.4.jpeg',
//                     secondDoctorImagePath: 'images/Dr.3.jpeg',
//                     thirdDoctorImagePath: 'images/Dr.2.jpeg',
//                     fourthDoctorImagePath: 'images/Dr.1.jpg',
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//       bottomNavigationBar: const CustomBottomNavigationBar(
//           isHomeScreenOn: true,
//           isAppointmentScreenOn: false,
//           isChatScreenOn: false,
//           isProfileScreenOn: false),
//     );
//   }
// }

