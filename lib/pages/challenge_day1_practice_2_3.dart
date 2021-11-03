import 'package:flutter/material.dart';
import 'package:lab_challenge/config/app_sceen_config.dart';

class PracticeScreenOneNode3 extends StatefulWidget {
  const PracticeScreenOneNode3({Key? key}) : super(key: key);
  static const routeName = '/bai-tap-1-2-3';

  @override
  _PracticeScreenOneNode3 createState() => _PracticeScreenOneNode3();
}

class _PracticeScreenOneNode3 extends State<PracticeScreenOneNode3> {
  late AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);

    Widget _createWidget() {
      return Expanded(
        flex: 10,
        child: Container(
          color: Colors.pink,
        ),
      );
    }

    Widget _createSpacing() {
      return const Expanded(
        flex: 1,
        child: SizedBox(),
      );
    }

    Widget _createRow(int numberRow) {
      List<Widget> results = [];
      for (int i = 0; i < numberRow; i++) {
        results.add(_createWidget());
        if (i < numberRow - 1) {
          results.add(
            _createSpacing(),
          );
        }
      }
      return Expanded(
        flex: 10,
        child: Row(children: results),
      );
    }

    List<Widget> _renderScreen(int numberRow, int numberColum) {
      List<Widget> results = [];
      for (int i = 0; i < numberColum; i++) {
        results.add(_createRow(numberRow));
        if (i < numberColum - 1) {
          results.add(_createSpacing());
        }
      }
      return results;
    }

    return Scaffold(
      body: Column(children: _renderScreen(4, 8)),
    );
  }
}
