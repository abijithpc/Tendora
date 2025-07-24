import 'package:flutter/material.dart';
import 'package:trendora/Core/constant.dart';

class nearby_store_card extends StatelessWidget {
  const nearby_store_card({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.18,
      // decoration: BoxDecoration(color: kGreen),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/icons/Food.png',
            width: screenWidth * 0.20,
            height: screenHeight * 0.10,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mithas Bhandar",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    "Sweets, North Indian",
                    style: TextStyle(
                      fontSize: 15,
                      color: kGrey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    "site No - 1 | 6.4 kms",
                    style: TextStyle(
                      fontSize: 15,
                      color: kGrey,
                      fontWeight: FontWeight.normal,
                    ),
                  ),

                  Container(
                    width: screenWidth * 0.14,
                    height: screenHeight * 0.02,
                    decoration: BoxDecoration(
                      color: kGrey,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Center(
                      child: Text('Top Store', style: TextStyle(fontSize: 9)),
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.5, // or full width if you prefer
                    child: Divider(color: kGrey, thickness: 1),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/percentage.png',
                        width: screenWidth * 0.04,
                        height: screenHeight * 0.02,
                      ),
                      SizedBox(width: screenWidth * 0.01),
                      Text("Upto 10% OFF"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("★ 4.1", style: TextStyle(color: kGrey, fontSize: 17)),
                Text("45 mins", style: TextStyle(color: kOrange, fontSize: 20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
