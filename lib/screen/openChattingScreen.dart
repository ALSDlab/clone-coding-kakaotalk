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
        const Opacity(
          opacity: 0,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
          ),
        ),
        CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              leadingWidth: 140,
              leading: TextButton(
                child: const Text(
                  '오픈채팅',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
                onPressed: () {},
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.forum_outlined),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.reviews_outlined),
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
