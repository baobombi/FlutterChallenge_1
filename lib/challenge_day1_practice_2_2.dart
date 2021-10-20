import 'package:flutter/material.dart';
import 'responsive_screen/app_config.dart';

class ScreenTwo extends StatelessWidget {
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
