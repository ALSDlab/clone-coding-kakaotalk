import 'package:clone_coding_kakaotalk/chatModel/chats.dart';
import 'package:clone_coding_kakaotalk/widget/profileImageView/fourOrMore.dart';
import 'package:clone_coding_kakaotalk/widget/profileImageView/onlyOne.dart';
import 'package:clone_coding_kakaotalk/widget/profileImageView/three.dart';
import 'package:clone_coding_kakaotalk/widget/profileImageView/two.dart';
import 'package:flutter/material.dart';

class ChattingRoomCard extends StatelessWidget {
  const ChattingRoomCard({super.key, required this.chat});

  final ChatDetail chat;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        children: [
          Container(
            height: 70,
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfilImage(chat: chat),
                Container(
                  child: Column(
                    children: [
                      Text('11111'),
                      Text('11111'),
                    ],
                  ),
                ),
                Container()
              ],
            ),
          ),
          ButtonBar(),
        ],
      ),
    );
  }
}

class ProfilImage extends StatelessWidget {
  const ProfilImage({super.key, required this.chat});

  final ChatDetail chat;

  @override
  Widget build(BuildContext context) {
    switch (chat.talkerImage.length) {
      case 2:
        return Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(3),
            child: TwoView(chat: chat));
      case 3:
        return Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(3),
            child: ThreeView(chat: chat));
      case >= 4:
        return Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(3),
            child: FourOrMoreView(chat: chat));
      default:
        return Container(
            width: 70,
            height: 70,
            padding: const EdgeInsets.all(3),
            child: OnlyOneView(chat: chat));
    }
  }
}
