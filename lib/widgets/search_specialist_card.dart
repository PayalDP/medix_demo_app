import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../main.dart';
import '../routes/app_pages.dart';
import '../utils/constant.dart';

class SearchSpecialistCard extends StatelessWidget {
  const SearchSpecialistCard({
    super.key, required this.profileImagePath, required this.doctorName, required this.speciality, required this.charge, required this.isFavorite,
  });

  final String profileImagePath;
  final String doctorName;
  final String speciality;
  final double charge;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height* .008),
      child: InkWell(
        onTap: () {
          Get.toNamed(
              Routes.DOCTOR_PROFILE,
              arguments: {
                'profileImagePath': profileImagePath,
                'doctorName': doctorName,
                'speciality': speciality,
                'charge': charge}
          );
        },
        child: Container(
          height: size.height * .166,
          padding: EdgeInsets.all(size.width * .05),
          decoration: BoxDecoration(
            color: whiteTone,
            borderRadius: BorderRadius.circular(size.width * .08),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //doctor profile photo
              Container(
                height: size.height,
                width: size.width * .24,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(size.width * .05),
                  color: Colors.white,
                  image: DecorationImage(
                      image:
                      AssetImage(profileImagePath),
                      fit: BoxFit.cover),
                ),
              ),

              //details
              Padding(
                padding: EdgeInsets.only(
                  // left: size.width * .04,
                    top: size.height * .005),
                child: SizedBox(
                  width: size.width* .43,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Dr. Name
                      Text(
                        doctorName,
                        style: TextStyle(
                          color: textColor,
                          fontFamily: 'medium',
                          fontSize: mediumtextSize,
                        ),
                      ),

                      //doctor's speciality
                      Padding(
                        padding:
                        EdgeInsets.only(top: size.height * .01),
                        child: Text(
                          speciality,
                          style: TextStyle(
                            color: greyTextColor,
                            fontFamily: 'regular',
                            fontSize: mediumtextSize,
                          ),
                        ),
                      ),

                      //price
                      Padding(
                        padding: EdgeInsets.only(
                            top: size.height * .025),
                        child: Text(
                          '\$$charge',
                          style: TextStyle(
                            color: textColor,
                            fontFamily: 'medium',
                            fontSize: extraLargeTextSize,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //favorite icon
              Icon(isFavorite ? Icons.favorite : Icons.favorite_border_rounded, color: isFavorite ? darkTeal : greyTextColor,)
            ],
          ),
        ),
      ),
    );
  }
}