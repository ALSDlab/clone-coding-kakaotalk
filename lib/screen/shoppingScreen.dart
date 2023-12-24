import 'package:flutter/material.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({super.key});

  @override
  State<ShoppingScreen> createState() => _ShoppingScreen();
}

class _ShoppingScreen extends State<ShoppingScreen> {
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
            leadingWidth: 90,
            leading: TextButton(
              child: const Text(
                '쇼핑',
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.settings_outlined),
                onPressed: () {},
              ),
            ],
          ),
        ]),
      ],
    );
  }
}
