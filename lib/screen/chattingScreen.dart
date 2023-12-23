import 'package:flutter/material.dart';

class ChattingScreen extends StatefulWidget {
  const ChattingScreen({super.key});

  @override
  State<ChattingScreen> createState() => _ChattingScreen();
}

class _ChattingScreen extends State<ChattingScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          const Center(
            child: Text(
              '채팅방들',
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
    ;
  }
}
