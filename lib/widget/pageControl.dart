import 'package:clone_coding_kakaotalk/screen/chattingScreen.dart';
import 'package:clone_coding_kakaotalk/screen/friendsScreen.dart';
import 'package:clone_coding_kakaotalk/screen/moreScreen.dart';
import 'package:clone_coding_kakaotalk/screen/openChattingScreen.dart';
import 'package:clone_coding_kakaotalk/screen/shoppingScreen.dart';
import 'package:flutter/material.dart';

class PageControl extends StatefulWidget {
  const PageControl({super.key});

  @override
  State<PageControl> createState() => _PageControlState();
}

class _PageControlState extends State<PageControl> {
  var _index = 1;
  final _pages = [
    const FriendsScreen(),
    const ChattingScreen(),
    const OpenChattingScreen(),
    const ShoppingScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.white,
                  BlendMode.dstATop,
                ),
                image: AssetImage(
                  'assets/kakaotalkBackground.jpg',
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white.withOpacity(0.8),
          ),
          _pages[_index],
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _index = index;
            });
          },
          currentIndex: _index,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: '친구',
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: '채팅',
              icon: Icon(Icons.chat_bubble_outline_sharp),
            ),
            BottomNavigationBarItem(
              label: '오픈채팅',
              icon: Icon(Icons.bubble_chart_sharp),
            ),
            BottomNavigationBarItem(
              label: '쇼핑',
              icon: Icon(Icons.shopping_bag_rounded),
            ),
            BottomNavigationBarItem(
              label: '보관함',
              icon: Icon(Icons.more_horiz_sharp),
            ),
          ],
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
        ),
      ),
    );
  }
}
