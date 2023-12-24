import 'package:clone_coding_kakaotalk/repository/kakaoTalkRepository.dart';
import 'package:clone_coding_kakaotalk/widget/bannerCard.dart';
import 'package:clone_coding_kakaotalk/widget/chattingRoomCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
    sliverList.insert(
        0,
        SliverAppBar(
          pinned: true,
          surfaceTintColor: const Color.fromRGBO(163, 244, 204, 1),
          backgroundColor: Colors.white,
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
    for (int i = 0; i < chatInfos.length; i++) {
      sliverList.add(SliverToBoxAdapter(
        child: Slidable(
            // Specify a key if the Slidable is dismissible.
            key: ValueKey(i),

            // The start action pane is the one at the left or the top side.
            startActionPane: const ActionPane(
              // A motion is a widget used to control how the pane animates.
              motion: ScrollMotion(),

              // A pane can dismiss the Slidable.

              // All actions are defined in the children parameter.
              children: [
                // A SlidableAction can have an icon and/or a label.
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xFF89BCF1),
                  foregroundColor: Colors.white,
                  icon: Icons.star_outline_rounded,
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xFF82B7ED),
                  foregroundColor: Colors.white,
                  icon: Icons.notifications,
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xFF7CB0E9),
                  foregroundColor: Colors.white,
                  icon: Icons.inventory_2_outlined,
                ),
              ],
            ),

            // The end action pane is the one at the right or the bottom side.
            endActionPane: const ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  // An action can be bigger than the others.
                  onPressed: doNothing,
                  backgroundColor: Colors.grey,
                  foregroundColor: Colors.white,
                  label: '읽음',
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  label: '나가기',
                ),
              ],
            ),
            child: ChattingRoomCard(chat: chatInfos[i])),
      ));
    }
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
          physics: const BouncingScrollPhysics(),
          slivers: sliverList,
        )
      ],
    );
  }
}

void doNothing(BuildContext context) {}
