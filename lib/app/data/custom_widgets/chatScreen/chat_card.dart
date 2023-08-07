import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../constant.dart';

class ChatItemCard extends StatelessWidget {
  const ChatItemCard({
    super.key,
    required this.profilePhotoPath,
    required this.doctorName,
    required this.message,
    required this.time, required this.unReadMessagesNo,
  });

  final String profilePhotoPath;
  final String doctorName;
  final String message;
  final String time;
  final int unReadMessagesNo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.width* .01),
      child: Container(
        height: size.height * .12,
        width: size.width,
        padding: EdgeInsets.all(size.width * .04),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size.width * .04),
          color: whiteTone,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //doctor profile photo
            Container(
              width: size.width * .15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(size.width * .05),
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage(profilePhotoPath),
                    fit: BoxFit.cover),
              ),
            ),

            //doctor name and last message
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * .03, top: size.height * .005),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //doctor name
                  Text(
                    doctorName,
                    style: TextStyle(
                        fontFamily: 'medium',
                        fontSize: mediumtextSize,
                        color: textColor),
                  ),

                  //message text
                  Padding(
                    padding: EdgeInsets.only(top: size.height * .02),
                    child: SizedBox(
                      width: size.width * .4,
                      child: Text(
                        message,
                        softWrap: false,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: greyTextColor,
                          fontFamily: 'regular',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            //time and read icon
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * .13, top: size.height * .005),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //time
                  Text(
                    time,
                    style: const TextStyle(
                      color: greyTextColor,
                      fontFamily: 'regular',
                    ),
                  ),

                  // read icon or un read message number
                  unReadMessagesNo == 0
                  // read icon
                  ? Padding(
                    padding: EdgeInsets.only(top: size.height * .01),
                    child: Icon(
                      Icons.done_all,
                      color: darkTeal,
                      size: largeTextSize,
                    ),
                  )
                      : Padding(
                    padding: EdgeInsets.only(top: size.height* .01),
                    child: Container(
                      height: size.height* .04,
                      width: size.width* .08,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: darkTeal,
                          borderRadius: BorderRadius.circular(size.width* .02)
                      ),
                      child: Text(
                        '$unReadMessagesNo',
                        style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'regular'
                        ),
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
