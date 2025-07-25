import 'package:flutter/material.dart';
import 'package:trendora/Core/constant.dart';

class Trending_Card extends StatelessWidget {
  const Trending_Card({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth * 0.50, // Reduced width
      height: screenHeight * 0.08, // Reduced height
      child: Row(
        children: [
          // Smaller image with fixed dimensions
          Container(
            width: screenWidth * 0.20,
            height: screenHeight * 0.10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/icons/Ice_cream2.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(width: 6),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
                vertical: 2.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Mithas Bhandar",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "Sweets, North Indian",
                    style: TextStyle(fontSize: 15, color: kGrey),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "(store location) | 6.4km",
                    style: TextStyle(fontSize: 15, color: kGrey),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "★ 4.1 | 45 mins",
                    style: TextStyle(fontSize: 15, color: kGrey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
