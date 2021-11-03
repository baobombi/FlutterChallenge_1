import 'package:flutter/material.dart';
import 'package:lab_challenge/config/app_sceen_config.dart';

class HomePage extends StatelessWidget {
  late AppConfig _appConfig;
  @override
  Widget build(BuildContext context) {
    _appConfig = AppConfig(context);
    return Scaffold(
        body: Stack(
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.orange),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.black),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(children: [
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.red),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.black),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.black),
                            ),
                          ])),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.pink),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.blueAccent),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(color: Colors.yellow),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.black),
                ),
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.yellow),
                ),
                Expanded(
                  flex: 1,
                  child: Container(color: Colors.white),
                )
              ]),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.pink,
              ),
            ),
            Container(
              width: _appConfig.rW(2),
              color: Colors.white,
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.pink,
              ),
            )
          ],
        ),
        Positioned(
          top: _appConfig.rH(54),
          left: _appConfig.rW(10),
          child: SizedBox(
            width: _appConfig.rW(30),
            height: _appConfig.rH(20),
            child: Container(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
      ],
    ));
  }
}
