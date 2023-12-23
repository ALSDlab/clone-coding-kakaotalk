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
            height: 80,
            width: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, bottom: 3, right: 3),
                  child: ProfilImage(chat: chat),
                ),
                Expanded(
                  flex: 7,
                  child: Container(
                    margin: EdgeInsets.only(left: 5, bottom: 20, right: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                chat.names.join(', '),
                                overflow: TextOverflow.ellipsis,
                                // 넘어갈 경우 "..."으로 표시
                                maxLines: 1,
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontFamily: 'Exo2-Bold'),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              Text(
                                '${chat.names.length}',
                                maxLines: 1,
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: Colors.teal,
                                    fontFamily: 'Exo2-Bold'),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: double.infinity,
                            child: Text(
                              chat.updateChat,
                              overflow: TextOverflow.ellipsis,
                              // 넘어갈 경우 "..."으로 표시
                              maxLines: 1,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.indigo,
                                  fontFamily: 'Exo2-Bold'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container(
                        margin: EdgeInsets.only(left: 5, bottom: 10, right: 10),
                      child: Text(chat.updateDate),
                    ))
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
