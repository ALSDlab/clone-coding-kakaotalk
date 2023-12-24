import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreen();
}

class _MoreScreen extends State<MoreScreen> {
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
        CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            actions: [
              TextButton(
                child: const Text(
                  '관리',
                  style: TextStyle(color: Colors.black12, fontSize: 25),
                ),
                onPressed: () {},
              ),
            ],
          )
        ]),
      ],
    );
  }
}
