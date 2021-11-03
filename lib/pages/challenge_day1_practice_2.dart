import 'package:flutter/material.dart';
import 'package:lab_challenge/config/app_sceen_config.dart';

class PracticeScreenOneNode1 extends StatefulWidget {
  const PracticeScreenOneNode1({Key? key}) : super(key: key);
  static const routeName = '/bai-tap-1-2-1';

  @override
  _PracticeScreenOneNode1 createState() => _PracticeScreenOneNode1();
}

class _PracticeScreenOneNode1 extends State<PracticeScreenOneNode1> {
  late AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);

    Widget _buildColumn(int numberColumn) {
      return Container(
          width:
              (_appConfig.rW(100) / numberColumn.toDouble() - _appConfig.rW(1)),
          color: Colors.pink);
    }

    List<Widget> _buildColumnList(int numberColumn) {
      List<Widget> results = [];
      for (int i = 0; i < numberColumn; i++) {
        results.add(_buildColumn(numberColumn));
      }
      return results;
    }

    return Scaffold(
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: _buildColumnList(5)),
    );
  }
}
