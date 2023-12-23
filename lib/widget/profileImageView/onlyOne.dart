import 'package:clone_coding_kakaotalk/chatModel/chats.dart';
import 'package:flutter/material.dart';

class OnlyOneView extends StatelessWidget {
  const OnlyOneView({super.key, required this.chat});

  final ChatDetail chat;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.green, width: 2),
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(27),
        ),
      ),
      child: ClipRRect(
        child: Image.asset(
          chat.talkerImage[0],
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
