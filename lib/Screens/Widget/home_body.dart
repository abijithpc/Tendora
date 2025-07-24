import 'package:flutter/material.dart';
import 'package:trendora/Core/Widget/custom_heading.dart';
import 'package:trendora/Core/constant.dart';
import 'package:trendora/Screens/Widget/category_bar.dart';
import 'package:trendora/Screens/Widget/craze_deal_card.dart';
import 'package:trendora/Screens/Widget/near_by_store_card.dart';
import 'package:trendora/Screens/Widget/refer_and_earn_card.dart';
import 'package:trendora/Screens/Widget/search_bar.dart';
import 'package:trendora/Screens/Widget/top_pick_card.dart';
import 'package:trendora/Screens/Widget/trending_card.dart';

class Home_body extends StatelessWidget {
  const Home_body({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Search Bar
            SeatchBar(screenWidth: screenWidth),
            SizedBox(height: screenHeight * 0.05),
            Text(
              "What would you like to day today?",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenHeight * 0.01),
            CategoryBar1(),
            SizedBox(height: screenHeight * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("More", style: TextStyle(color: kGreen, fontSize: 23)),
                Icon(Icons.expand_more, color: kGreen, size: 26),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),
            HeadingSubheading(heading: "Top Pick for you"),
            SizedBox(height: screenHeight * 0.02),
            Top_pick_Card(screenHeight: screenHeight, screenWidth: screenWidth),
            HeadingSubheading(heading: "Trending", subheading: "See all"),
            SizedBox(
              height: screenHeight * 0.15,
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: screenWidth * 0.6,
                      child: Trending_Card(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: screenHeight * 0.12,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: screenWidth * 0.6,
                      child: Trending_Card(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                      ),
                    ),
                  );
                },
              ),
            ),
            HeadingSubheading(heading: "Craze deals"),
            SizedBox(
              height: screenHeight * 0.24, // Increased from 0.12 to 0.30
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: screenWidth * 0.99,
                    height: screenHeight * 0.18,
                    child: craze_deal_card(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Refer_Earn(screenWidth: screenWidth, screenHeight: screenHeight),
            SizedBox(height: screenHeight * 0.02),
            HeadingSubheading(heading: "Nearby stores", subheading: "See all"),
            SizedBox(height: screenHeight * 0.02),
            nearby_store_card(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            nearby_store_card(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            SizedBox(
              width: screenWidth * 0.6,
              height: screenHeight * 0.05,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: kGreen,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                child: Text(
                  "View all stores",
                  style: TextStyle(color: kWhite, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
