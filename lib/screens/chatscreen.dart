import 'package:chat_messages_app_ui/constraints.dart';
import 'package:flutter/material.dart';

import 'Chat/animatedimages.dart';
import 'Chat/chatbody.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body: ChatBody(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.person_add_alt_1,
            color: Colors.white,
          ),
          backgroundColor: kPrimaryColor,
        ),
        bottomNavigationBar: buildBottomNavigationBar(_selectedIndex),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar(int _selectedIndex) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value) {
        setState(() {
          _selectedIndex = value;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chats"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "People"),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundImage: AssetImage("assets/images/user_4.png"),
              radius: 14,
            ),
            label: "Profile"),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("Chats"),
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.sentiment_satisfied_alt_outlined),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SliderScreen()));
          },
        )
      ],
    );
  }
}
