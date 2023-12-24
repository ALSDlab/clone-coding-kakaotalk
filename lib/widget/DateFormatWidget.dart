import 'package:clone_coding_kakaotalk/chatModel/chats.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormatWidget extends StatelessWidget {
  const DateFormatWidget({super.key, required this.chat});

  final ChatDetail chat;

  @override
  Widget build(BuildContext context) {
    DateTime lastUpdate = DateTime.parse(chat.updateDate);
    double difference = (DateTime.now().millisecondsSinceEpoch -
            lastUpdate.millisecondsSinceEpoch) /
        60000 /
        60 /
        24; // 오늘로부터 차이 계산

    switch (difference) {
      case > 365:
        return Text(DateFormat('yy.MM.dd').format(lastUpdate).toString(),
            style: const TextStyle(fontSize: 11, color: Colors.grey));
      case > 2:
        return Text(DateFormat('M월 d일').format(lastUpdate).toString(),
            style: const TextStyle(fontSize: 11, color: Colors.grey));
      case > 1 && < 2:
        return const Text('어제',
            style: TextStyle(fontSize: 11, color: Colors.grey));
      default:
        return Text(DateFormat('H:m').format(lastUpdate).toString(),
            style: const TextStyle(fontSize: 11, color: Colors.grey));
    }
  }
}
