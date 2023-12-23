import 'package:flutter/material.dart';

class OpenChattingScreen extends StatefulWidget {
  const OpenChattingScreen({super.key});

  @override
  State<OpenChattingScreen> createState() => _OpenChattingScreen();
}

class _OpenChattingScreen extends State<OpenChattingScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          const Center(
            child: Text(
              '오픈채팅방',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Opacity(
            opacity: 0,
            child: Container(
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ],
      );
  }
}
