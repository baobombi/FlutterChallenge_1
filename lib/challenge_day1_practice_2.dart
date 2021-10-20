import 'package:flutter/material.dart';
import 'responsive_screen/app_config.dart';

class ScreenOne extends StatelessWidget {
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
