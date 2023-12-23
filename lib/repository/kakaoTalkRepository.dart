import 'package:clone_coding_kakaotalk/chatModel/chats.dart';

class ChattingRepository {
  final List<ChatDetail> chats = [
    ChatDetail(
        roomId: 1,
        names: ['Emma'],
        talkerImage: ['assets/profile/Emma.png'],
        updateDate: '2023-12-22 17:45',
        updateChat: '''Hello! How can I assist you today?'''),
    ChatDetail(
        roomId: 2,
        names: ['Alex', 'Mia'],
        talkerImage: ['assets/profile/Alex.png', 'assets/profile/Mia.png'],
        updateDate: '2023-12-18 08:12',
        updateChat: '''Let me check. One moment, please...'''),
    ChatDetail(
        roomId: 3,
        names: ['Noah'],
        talkerImage: ['assets/profile/Noah.png'],
        updateDate: '2023-12-22 13:37',
        updateChat:
            '''Sure, here's one: Why don't scientists trust atoms? Because they make up everything!'''),
    ChatDetail(
        roomId: 4,
        names: ['Olivia'],
        talkerImage: ['assets/profile/Olivia.png'],
        updateDate: '2023-12-22 11:05',
        updateChat:
            '''Photosynthesis is the process by which plants convert light energy into chemical energy to fuel their growth.'''),
    ChatDetail(
        roomId: 5,
        names: ['Ethan', 'Ava', 'Liam', 'Sophia'],
        talkerImage: [
          'assets/profile/Ethan.png',
          'assets/profile/Ava.png',
          'assets/profile/Liam.png',
          'assets/profile/Sophia.png'
        ],
        updateDate: '2023-12-07 17:19',
        updateChat: '''The capital of France is Paris.'''),
    ChatDetail(
        roomId: 6,
        names: ['Jackson'],
        talkerImage: ['assets/profile/Jackson.png'],
        updateDate: '2023-12-14 09:48',
        updateChat:
            '''If you enjoy science fiction, I recommend "Dune" by Frank Herbert.'''),
    ChatDetail(
        roomId: 7,
        names: ['Isabella'],
        talkerImage: ['assets/profile/Isabella.png'],
        updateDate: '2023-12-02 12:30',
        updateChat:
            '''To reset your password, go to the login page and click on the "Forgot Password" link.'''),
    ChatDetail(
        roomId: 8,
        names: ['Aiden', 'Harper'],
        talkerImage: ['assets/profile/Aiden.png', 'assets/profile/Harper.png'],
        updateDate: '2023-11-19 06:55',
        updateChat:
            '''The meaning of life is a subjective question. Different people find meaning in different things.'''),
    ChatDetail(
        roomId: 9,
        names: ['Lucas'],
        talkerImage: ['assets/profile/Lucas.png'],
        updateDate: '2023-12-10 16:14',
        updateChat: '''The square root of 144 is 12.'''),
    ChatDetail(
        roomId: 10,
        names: ['Amelia', 'Benjamin'],
        talkerImage: [
          'assets/profile/Amelia.png',
          'assets/profile/Benjamin.png'
        ],
        updateDate: '2023-02-15 10:23',
        updateChat:
            '''I don't have a favorite color. I'm here to help you with information!'''),
  ];

  List<ChatDetail> getChatDetail() {
    return chats;
  }
}
