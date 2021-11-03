import 'package:flutter/material.dart';
import 'package:lab_challenge/config/app_sceen_config.dart';

class PracticeScreenOneNode4 extends StatefulWidget {
  const PracticeScreenOneNode4({Key? key}) : super(key: key);
  static const routeName = '/bai-tap-1-2-4';

  @override
  _PracticeScreenOneNode4 createState() => _PracticeScreenOneNode4();
}

class _PracticeScreenOneNode4 extends State<PracticeScreenOneNode4> {
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
