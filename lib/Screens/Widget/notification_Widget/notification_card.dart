import 'package:flutter/material.dart';
import 'package:trendora/Core/constant.dart';
import 'package:trendora/Screens/Widget/notification_Widget/get_times_ago.dart';
import 'package:trendora/models/notification_model.dart';

class Notification_card extends StatelessWidget {
  const Notification_card({super.key, required this.items});

  final NotificationModel items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 5),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  items.image,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                  errorBuilder:
                      (context, error, stackTrace) =>
                          const Icon(Icons.broken_image),
                ),

                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        items.body,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: kGrey),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        getTimeAgo(items.timestamp),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Divider(thickness: 1),
          ],
        ),
      ),
    );
  }
}
