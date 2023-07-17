import 'package:chat_messages_app_ui/screens/messagescreen.dart';
import 'package:flutter/material.dart';

import '../../button components/secondaryoutlinebutton.dart';
import '../../constraints.dart';
import '../../models/chatmodel.dart';
import 'chatcard.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: kPrimaryColor,
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          child: Row(
            children: [
              FillOutlineButton(
                press: () {},
                text: "Recent Chats",
              ),
              SizedBox(
                width: 20,
              ),
              FillOutlineButton(
                press: () {},
                text: "Active",
                isFilled: false,
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessageScreen())),
            ),
          ),
        ),
      ],
    );
  }
}
