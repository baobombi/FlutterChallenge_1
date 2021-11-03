import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

mixin DownloadImgMixinStateful<T extends StatefulWidget> on State<T> {
  Future<void> downloadImg(String imageUrl, String savePath,
      Function(int rec, int total) onReceiveProgress) async {
    //process
    try {
      Dio dio = Dio();
      await dio.download(imageUrl, savePath,
          onReceiveProgress: onReceiveProgress);
    } catch (e) {
      return;
    }
  }
}
