import 'package:flutter/material.dart';

import '../../../../main.dart';
import '../../constant.dart';


class HealthDetailCard extends StatelessWidget {
  const HealthDetailCard({
    super.key, required this.activeCategoryImagePath, required this.inactiveImagePath ,required this.categoryName, required this.amount, required this.categoryParameter, required this.isActive,
  });

  final String activeCategoryImagePath;
  final String inactiveImagePath;
  final String categoryName;
  final String amount;
  final String categoryParameter;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .22,
      width: size.width * .43,
      padding: EdgeInsets.all(size.width * .05),
      decoration: BoxDecoration(
          color: isActive ? darkTeal : lightTeal,
          borderRadius: BorderRadius.circular(size.width * .08)),
      child: Stack(
        children: [

          //category icon and text
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //category icon
              Image.asset(isActive ? activeCategoryImagePath : inactiveImagePath),

              //category text
              Padding(
                padding: EdgeInsets.only(top: size.height* .015),
                child: Text(
                  categoryName,
                  style: TextStyle(
                    color: isActive ? Colors.white : textColor,
                    fontSize: smallTextSize,
                    fontFamily: 'regular',
                  ),
                ),
              ),
            ],
          ),

          //amount
          Positioned(
            bottom: size.height* .02,
            child: RichText(
              text: TextSpan(
                  text: amount,
                  style: TextStyle(
                    fontSize: largeTitleSize,
                    color: isActive ? Colors.white : textColor,
                    fontFamily: 'medium',
                  ),
                  children: [
                    TextSpan(
                        text: ' $categoryParameter',
                        style: TextStyle(
                          color: isActive ? Colors.teal.shade100 : greyTextColor,
                          fontSize: smallTextSize,
                          fontFamily: 'regular',
                        )
                    )
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }
}