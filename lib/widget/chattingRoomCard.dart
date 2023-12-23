import 'package:clone_coding_kakaotalk/chatModel/chats.dart';
import 'package:flutter/material.dart';

class ChattingRoomCard extends StatelessWidget {
  const ChattingRoomCard({super.key, required this.chat});

  final ChatDetail chat;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(),
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
    );
  }
}



class ProfilImage extends StatefulWidget {
  const ProfilImage({super.key});

  @override
  State<ProfilImage> createState() => _ProfilImageState();
}

class _ProfilImageState extends State<ProfilImage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
