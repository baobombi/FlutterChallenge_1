import 'package:flutter/material.dart';
import 'package:lab_challenge/pages/challenge_day1_practice_2_2.dart';
import 'package:lab_challenge/pages/challenge_day1_practice_2_3.dart';
import 'package:lab_challenge/pages/challenge_day1_practice_2_4.dart';
import 'package:lab_challenge/pages/challenge_day1_practice_2.dart';
import 'package:lab_challenge/pages/challenge_day1_pratice_1.dart';
import 'package:lab_challenge/pages/challenge_day2_pratice.dart';
import 'package:lab_challenge/pages/challenge_day4_pratice.dart';
import 'package:lab_challenge/pages/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;
    switch (settings.name) {
      case Home.routeName:
        return MaterialPageRoute(
          builder: (_) => const Home(),
        );

      case PracticeScreenOne.routeName:
        return MaterialPageRoute(
          builder: (_) => const PracticeScreenOne(),
        );

      case PracticeScreenOneNode1.routeName:
        return MaterialPageRoute(
          builder: (_) => const PracticeScreenOneNode1(),
        );

      case PracticeScreenOneNode2.routeName:
        return MaterialPageRoute(
          builder: (_) => const PracticeScreenOneNode2(),
        );

      case PracticeScreenOneNode3.routeName:
        return MaterialPageRoute(
          builder: (_) => const PracticeScreenOneNode3(),
        );

      case PracticeScreenOneNode4.routeName:
        return MaterialPageRoute(
          builder: (_) => const PracticeScreenOneNode4(),
        );

      case ChatView.routeName:
        return MaterialPageRoute(
          builder: (_) => const ChatView(),
        );

      case DownloadImage.routeName:
        return MaterialPageRoute(
          builder: (_) => const DownloadImage(),
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('ERROR'),
          ),
        );
      },
    );
  }
}
