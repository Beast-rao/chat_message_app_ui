import 'package:chat_messages_app_ui/routes/routes.dart';
import 'package:chat_messages_app_ui/screens/chatscreen.dart';
import 'package:chat_messages_app_ui/screens/signinorsignup.dart';
import 'package:chat_messages_app_ui/screens/welcome.dart';
import 'package:chat_messages_app_ui/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rao ChatApp',
      theme:lightThemeData(context),
      darkTheme: darkThemeData(context),
      
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      initialRoute:MyRoutees.welcomeroute,
      routes: {
        // "/":(context)=> WelcomeScreen(),
        MyRoutees.welcomeroute:(context)=> WelcomeScreen(),
        MyRoutees.signinroute:(context)=>SigninOrSignupScreen(),
        MyRoutees.chatroute:(context)=>ChatScreen(),


      },
    );
  }
}
