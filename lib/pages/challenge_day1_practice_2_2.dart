import 'package:flutter/material.dart';
import 'package:lab_challenge/config/app_sceen_config.dart';

class PracticeScreenOneNode2 extends StatefulWidget {
  const PracticeScreenOneNode2({Key? key}) : super(key: key);
  static const routeName = '/bai-tap-1-2-2';
  @override
  _PracticeScreenOneNode2 createState() => _PracticeScreenOneNode2();
}

class _PracticeScreenOneNode2 extends State<PracticeScreenOneNode2> {
  late AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);

    Widget _buildRow(int numberColumn) {
      return Container(
          height:
              (_appConfig.rH(100) / numberColumn.toDouble()) - _appConfig.rH(1),
          color: Colors.pink);
    }

    List<Widget> _buildRowList(int numberColumn) {
      List<Widget> results = [];
      for (int i = 0; i < numberColumn; i++) {
        results.add(_buildRow(numberColumn));
      }
      return results;
    }

    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _buildRowList(5)),
    );
  }
}
