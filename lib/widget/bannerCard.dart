import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(15),
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'assets/banner.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
