import 'package:chat_app/chat_page.dart';
import 'package:chat_app/core/theme.dart';
import 'package:chat_app/message_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      // home: MessagesPage(),
      home: ChatPage(),
    );
  }
}
