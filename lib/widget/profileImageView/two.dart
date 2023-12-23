import 'package:clone_coding_kakaotalk/chatModel/chats.dart';
import 'package:flutter/material.dart';

class TwoView extends StatelessWidget {
  const TwoView({super.key, required this.chat});

  final ChatDetail chat;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 64,
      child: Stack(
        children: [
          Positioned(
            left: 1,
            top: 1,
            child: Container(
              padding: const EdgeInsets.all(5),
              width: 38,
              height: 38,
              decoration:  BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(17),
                ),
              ),
              child: ClipRRect(
                child: Image.asset(
                  chat.talkerImage[0],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            right: 1,
            bottom: 1,
            child: Container(
              padding: const EdgeInsets.all(5),
              width: 38,
              height: 38,
              decoration:  BoxDecoration(
                border: Border.all(color: Colors.green, width: 2),
                color: Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(17),
                ),
              ),
              child: ClipRRect(
                child: Image.asset(
                  chat.talkerImage[1],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
