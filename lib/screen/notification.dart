import 'dart:convert';
import 'dart:math';

import 'package:brain_brust/models/chat_user.dart';
import 'package:brain_brust/screen/ChatRoom.dart';
import 'package:brain_brust/screen/chatProfile_screen.dart';
import 'package:brain_brust/user_auth/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class NotificationService {
  static final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  static Future<void> initialize() async {
    final InitializationSettings initializationSettings =
    InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'));

    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static Future<void> displayNotification(String title, String body) async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
      title: 'your_channel_id', // Change this to your channel ID
      'Chat Notifications', // Change this to your channel name
      'Notification Channel for Chat Messages', // Change this to your channel description
      importance: Importance.max,
      priority: Priority.high,
      showWhen: false,
    );
    var platformChannelSpecifics =
    NotificationDetails(android: androidPlatformChannelSpecifics);
    await _flutterLocalNotificationsPlugin.show(
      0, // Notification ID
      title, // Notification title
      body, // Notification body
      platformChannelSpecifics,
    );
  }
}
