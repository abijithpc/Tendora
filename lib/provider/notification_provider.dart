import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trendora/models/notification_model.dart';
import 'package:http/http.dart' as http;

final notificationProvider = FutureProvider<List<NotificationModel>>((
  ref,
) async {
  final response = await http.get(
    Uri.parse(
      'https://raw.githubusercontent.com/sayanp23/test-api/main/test-notifications.json',
    ),
    headers: {
      'Accept': 'application/vnd.github.v3.raw',
      'User-Agent': 'trendora-app',
    },
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> jsonMap = jsonDecode(response.body);

    // ✅ Extract the inner list
    final List<dynamic> dataList = jsonMap['data'];

    return dataList.map((json) => NotificationModel.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load notifications: ${response.statusCode}');
  }
});
