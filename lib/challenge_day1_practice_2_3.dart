import 'package:flutter/material.dart';
import 'responsive_screen/app_config.dart';

class ScreenThree extends StatelessWidget {
  late AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);

    _createWidget() {
      return Expanded(
        flex: 10,
        child: Container(
          color: Colors.pink,
        ),
      );
    }

    _createSpacing() {
      return const Expanded(
        flex: 1,
        child: SizedBox(),
      );
    }

    Widget _createRow(nunberRow) {
      List<Widget> results = [];
      for (int i = 0; i < nunberRow; i++) {
        results.add(_createWidget());
        if (i < nunberRow - 1) {
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

    List<Widget> _renderScreen(numberRow, numberColum) {
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
