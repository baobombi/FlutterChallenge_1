import 'package:flutter/material.dart';
import 'package:lab_challenge/pages/challenge_day1_practice_2_2.dart';
import 'package:lab_challenge/pages/challenge_day1_practice_2_3.dart';
import 'package:lab_challenge/pages/challenge_day1_practice_2_4.dart';
import 'package:lab_challenge/pages/challenge_day1_practice_2.dart';
import 'package:lab_challenge/pages/challenge_day1_pratice_1.dart';
import 'package:lab_challenge/pages/challenge_day2_pratice.dart';
import 'package:lab_challenge/pages/challenge_day4_pratice.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('200 Lab Flutter Challenge')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: ListView(
          shrinkWrap: true,
          children: [
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(PracticeScreenOne.routeName),
              child: const Text('Bài tập 1'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context)
                  .pushNamed(PracticeScreenOneNode1.routeName),
              child: const Text('Bài tập 1-1 ( Bổ sung) '),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context)
                  .pushNamed(PracticeScreenOneNode2.routeName),
              child: const Text('Bài tập 1-2 ( Bổ sung)'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context)
                  .pushNamed(PracticeScreenOneNode3.routeName),
              child: const Text('Bài tập 1-3 ( Bổ sung)'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context)
                  .pushNamed(PracticeScreenOneNode4.routeName),
              child: const Text('Bài tập 1-4 ( Bổ sung)'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(ChatView.routeName),
              child: const Text('Bài tập 2'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(DownloadImage.routeName),
              child: const Text('Bài tập 4'),
            ),
          ],
        ),
      ),
    );
  }
}
