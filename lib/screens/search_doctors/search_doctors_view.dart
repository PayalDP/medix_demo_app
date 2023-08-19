import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:medix_demo_app/widgets/search_specialist_card.dart';

import '../../../main.dart';
import '../../utils/constant.dart';
import 'controller/search_doctors_controller.dart';

class SearchDoctorsView extends GetView<SearchDoctorsController> {
  const SearchDoctorsView({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsets.only(
              left: size.width * .05,
              right: size.width * .05,
              top: size.height * .05),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //searchText and back button
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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

                  //Search text
                  Padding(
                    padding: EdgeInsets.only(left: size.width * .2),
                    child: Text(
                      'Search',
                      style: TextStyle(
                          fontSize: titleFontSize,
                          color: textColor,
                          fontFamily: 'bold'),
                    ),
                  ),
                ],
              ),

              //search bar and filter button
              Padding(
                padding: EdgeInsets.only(top: size.height * .04),
                child: SizedBox(
                  width: size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height * .075,
                        width: size.width * .73,
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * .035),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(size.width * .04),
                          color: whiteTone,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //search icon
                            Image.asset('images/search_icon.png'),

                            //search text field
                            Padding(
                              padding: EdgeInsets.only(left: size.width * .02),
                              child: SizedBox(
                                width: size.width * .45,
                                child: TextField(
                                  onTap: () {
                                    controller.isSearching.value = true;
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search specialist',
                                    hintStyle: TextStyle(
                                      fontFamily: 'medium',
                                      fontSize: size.width * .045,
                                      color: const Color(0xff000000)
                                          .withOpacity(0.202),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            const Icon(
                              Icons.close_sharp,
                              color: textColor,
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

              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: const [
                    // specialist card
                    SearchSpecialistCard(
                      profileImagePath: 'images/female_doctor.jpg',
                      doctorName: 'Dr. Lily Davis',
                      speciality: 'Dentist',
                      charge: 30,
                      isFavorite: true,
                    ),

                    SearchSpecialistCard(
                        profileImagePath: 'images/maleDoctor_image.jpg',
                        doctorName: 'Dr. Allen Green',
                        speciality: 'Dentist',
                        charge: 40,
                        isFavorite: false),

                    SearchSpecialistCard(
                        profileImagePath: 'images/female_Image_2.jpeg',
                        doctorName: 'Dr. Stefania Keller',
                        speciality: 'Dentist',
                        charge: 60,
                        isFavorite: true),

                    SearchSpecialistCard(
                        profileImagePath: 'images/Dr.1.jpg',
                        doctorName: 'Dr. Marry Adams',
                        speciality: 'Dentist',
                        charge: 50,
                        isFavorite: false),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
