import 'package:chat_messages_app_ui/button%20components/primarybutton.dart';
import 'package:chat_messages_app_ui/constraints.dart';
import 'package:flutter/material.dart';
class SigninOrSignupScreen extends StatelessWidget {
  const SigninOrSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
        child: Column(
          children: [
            Spacer(flex: 2,),
            Image.asset("assets/images/Logo_light.png", height: 146,),
            Spacer(),
            PrimaryButton(text: "Sign In", press: (){}),
            SizedBox(height: 30,),
            PrimaryButton(text: "Sign up", press: (){},
            color: Theme.of(context).colorScheme.secondary),
            Spacer(flex: 2,)

          ],

        ),
      ),
    );
  }
}
