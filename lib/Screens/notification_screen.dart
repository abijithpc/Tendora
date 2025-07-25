import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trendora/Core/constant.dart';
import 'package:trendora/Screens/Widget/notification_Widget/notification_card.dart';
import 'package:trendora/provider/notification_provider.dart';

class NotificationScreen extends ConsumerWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationAsync = ref.watch(notificationProvider);
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
        title: Text("Notifications"),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_circle_left, size: 30, color: kGreen),
        ),
      ),
      body: notificationAsync.when(
        data: (notificaton) {
          if (notificaton.isEmpty) {
            return const Center(child: Text('No notifications'));
          }
          return ListView.builder(
            itemCount: notificaton.length,
            itemBuilder: (context, index) {
              final items = notificaton[index];
              print("Image URL: ${items.image}");
              return Notification_card(items: items);
            },
          );
        },
        error: (error, stackTrace) => Center(child: Text("Error : $error")),
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
