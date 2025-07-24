import 'package:flutter/material.dart';
import 'package:trendora/Core/constant.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_circle_left, size: 30, color: kGreen),
        ),
      ),
      body: ,
    );
  }
}
