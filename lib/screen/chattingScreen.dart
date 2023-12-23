import 'package:clone_coding_kakaotalk/repository/kakaoTalkRepository.dart';
import 'package:clone_coding_kakaotalk/widget/bannerCard.dart';
import 'package:flutter/material.dart';

class ChattingScreen extends StatefulWidget {
  const ChattingScreen({super.key});

  @override
  State<ChattingScreen> createState() => _ChattingScreen();
}

class _ChattingScreen extends State<ChattingScreen> {
  final chatInfos = ChattingRepository().getChatDetail();
  List<Widget> sliverList = [];

  @override
  void initState() {
    super.initState();
    sliverList.insert(0, SliverAppBar(
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
    ));
    sliverList.add(const BannerCard());



  }

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
          slivers: sliverList,
        )
      ],
    );
  }
}

