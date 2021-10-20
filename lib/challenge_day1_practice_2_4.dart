import 'package:flutter/material.dart';
import 'responsive_screen/app_config.dart';

class ScreenFour extends StatelessWidget {
  late AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.red,
            ),
          ),
          Container(
            height: _appConfig.rH(1),
            color: Colors.white,
          ),
          Expanded(
            flex: 1,
            child: Container(
                color: Colors.red,
                child: Row(
                  children: [
                    Expanded(flex: 1, child: Container()),
                    Container(
                      width: _appConfig.rW(2),
                      color: Colors.white,
                    ),
                    Expanded(flex: 1, child: Container()),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
