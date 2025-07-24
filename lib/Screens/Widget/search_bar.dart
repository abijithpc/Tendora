import 'package:flutter/material.dart';
import 'package:trendora/Core/constant.dart';
import 'package:trendora/Screens/notification_screen.dart';

class SeatchBar extends StatelessWidget {
  const SeatchBar({super.key, required this.screenWidth});

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: 'Search for products/stores',
              suffixIcon: Icon(Icons.search, color: Colors.grey),
              fillColor: Colors.grey[200],
              filled: true,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(12),
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
          child: Icon(Icons.notifications_outlined, color: kRed, size: 32),
        ),
        SizedBox(width: screenWidth * 0.02),
        Icon(Icons.local_offer_outlined, color: kOrange, size: 32),
      ],
    );
  }
}
