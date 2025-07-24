// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:trendora/Core/constant.dart';
import 'package:trendora/Screens/Widget/category_bar.dart';
import 'package:trendora/Screens/Widget/category_card.dart';
import 'package:trendora/Screens/Widget/home_body.dart';
import 'package:trendora/Screens/Widget/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.location_on, color: kGreen, size: 24),
            const SizedBox(width: 4),
            Flexible(
              child: Text(
                "ABCD, New Delhi",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(Icons.expand_more, color: kGreen, size: 24),
          ],
        ),
      ),
      body: Home_body(screenWidth: screenWidth, screenHeight: screenHeight),
    );
  }
}
