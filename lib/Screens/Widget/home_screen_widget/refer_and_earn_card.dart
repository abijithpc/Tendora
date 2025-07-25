import 'package:flutter/material.dart';
import 'package:trendora/Core/constant.dart';

class Refer_Earn extends StatelessWidget {
  const Refer_Earn({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight * 0.10,
      decoration: BoxDecoration(
        color: kGreen,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Refer & Earn",
                  style: TextStyle(color: kWhite, fontSize: 24),
                ),
                Row(
                  children: [
                    Text(
                      "Invite your friends & earn 15% off",
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 14,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.01),

                    Icon(
                      Icons.arrow_circle_right,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ],
            ),
            Image.asset('assets/icons/Gift.png'),
          ],
        ),
      ),
    );
  }
}
