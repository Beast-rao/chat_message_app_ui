import 'package:animated_text_kit/animated_text_kit.dart';
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
            scaleAnimation(),
            Spacer(),
            typeAnimation(),
            Spacer(
            ),
            colorizeAnimation(),
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
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
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
      ),
    );
  }
}

Widget colorizeAnimation() {
  const colorizeColors = [
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];

  const colorizeTextStyle = TextStyle(
    fontSize: 16.0,
  );
  return Container(
    color: Colors.transparent,
    height: 30,
    width: double.infinity,
    child: Center(
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            'Faheem Rao',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'Look Here',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'Bad One',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'Happy to see you :)',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
        ],
        repeatForever: true,
      ),
    ),
  );
}

Widget scaleAnimation() {
  return Container(
    height: 100,
    color: Colors.transparent,
    child: Center(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 40.0,
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            ScaleAnimatedText(
              "Welcome to our Freedom messaging app",
              textAlign: TextAlign.center,
              textStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,)
            )
          ],
          repeatForever: true,

        ),
      ),
    ),
  );
}

Widget typeAnimation() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    color: Colors.transparent,
    height: 50.0,
    child: Center(
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
        ),
        child: AnimatedTextKit(
          animatedTexts: [
            TyperAnimatedText('HEY YOU!'),
            TyperAnimatedText('Nally berozgar bhek mangya '),
            TyperAnimatedText('You must know what to do,'),
            TyperAnimatedText('and then do your best'),
          ],
          repeatForever: true,
        ),
      ),
    ),
  );
}
