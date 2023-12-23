import 'package:flutter/material.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({super.key});

  @override
  State<FriendsScreen> createState() => _FriendsScreen();
}

class _FriendsScreen extends State<FriendsScreen> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Center(
          child: Text(
            '카톡 친구들',
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
