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
        backgroundColor: AppColors.primary,
        title: const Center(
          child: Text('Messages'),
        ),
        actions: [
          IconButton(
            iconSize: 30,
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
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
