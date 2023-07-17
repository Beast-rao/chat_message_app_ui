
import 'package:flutter/material.dart';

import '../../constraints.dart';
import '../../models/chatmessagesmodel.dart';
import 'chatinput.dart';
import 'message.dart';



class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: dummyChatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: dummyChatMessages[index]),
            ),
          ),
        ),
        const ChatInputField(),
      ],
    );
  }
}