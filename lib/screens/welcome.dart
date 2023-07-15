import 'package:chat_messages_app_ui/screens/signinorsignup.dart';
import 'package:flutter/material.dart';

import '../constraints.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Spacer(
            flex: 2,
          ),
          Image.asset("assets/images/welcome_image.png"),
          Spacer(
            flex: 3,
          ),
          Text(
            "Welcome to our Freedom \nmessaging app",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            "Freedom talk  any person of you mother language ",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.color
                  ?.withOpacity(0.64),
            ),
          ),
          Spacer(
            flex: 2,
          ),
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SigninOrSignupScreen()));
                  },
                  child: Row(
                    children: [
                      Text(
                        "Skip",
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .color!
                                  .withOpacity(0.8),
                            ),
                      ),
                      const SizedBox(width: kDefaultPadding / 4),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .color!
                            .withOpacity(0.8),
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    ));
  }
}
