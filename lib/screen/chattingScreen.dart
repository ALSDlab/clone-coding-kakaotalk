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
        Opacity(
          opacity: 0,
          child: Container(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              leadingWidth: 90,
              leading: TextButton(
                child: const Text(
                  '채팅',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.add_comment_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.settings_outlined),
                  onPressed: () {},
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
