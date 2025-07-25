import 'package:flutter/material.dart';
import 'package:trendora/Core/constant.dart';
import 'package:trendora/Screens/notification_screen.dart';

class SeatchBar extends StatelessWidget {
  const SeatchBar({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Search for products/stores',
              suffixIcon: Icon(Icons.search, color: kGreen),
              fillColor: Colors.grey[200],
              filled: true,
              contentPadding: EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 20,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: kGreen),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
        SizedBox(width: screenWidth * 0.01),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationScreen()),
            );
          },
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Icon(Icons.notifications_outlined, color: kRed, size: 32),
              Positioned(
                right: -2,
                top: -2,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: kRed,
                    shape: BoxShape.circle,
                  ),
                  constraints: BoxConstraints(minWidth: 20, minHeight: 20),
                  child: Center(
                    child: Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: screenWidth * 0.02),
        Icon(Icons.local_offer_outlined, color: kOrange, size: 32),
      ],
    );
  }
}
