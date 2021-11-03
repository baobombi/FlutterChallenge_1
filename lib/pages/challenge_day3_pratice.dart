import 'package:flutter/material.dart';
import 'package:lab_challenge/values/app_colors.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);
  static const routeName = '/chat-view';
  @override
  _ChatViewState createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  //late AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    //_appConfig = AppConfig(context);

    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(0.0),
          width: 30.0, // you can adjust the width as you need
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
