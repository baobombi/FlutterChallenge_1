import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:lab_challenge/common/download_image/download_image.dart';

class DownloadImage extends StatefulWidget {
  const DownloadImage({Key? key}) : super(key: key);
  static const routeName = '/download';
  @override
  _DownloadImage createState() => _DownloadImage();
}

class _DownloadImage extends State<DownloadImage>
    with DownloadImgMixinStateful {
  var imageUrl =
      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg";

  bool _isDownloading = false;
  bool _isDownloaded = false;
  String filePath = "";
  int downloadProgress = 0;
  final double avatarSize = 250;

  @override
  void initState() {
    super.initState();
  }

  void onReceiveProgress(int rec, int total) {
    setState(() {
      downloadProgress = (rec / total * 100).round();
    });
  }

  void downloadImage() async {
    final directory = await getApplicationDocumentsDirectory();
    filePath = directory.path + 'test.jpg';
    setState(() {
      _isDownloaded = false;
      _isDownloading = true;
    });

    await downloadImg(imageUrl, filePath, onReceiveProgress);
    setState(() {
      _isDownloaded = true;
      _isDownloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text('Download Image'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _isDownloaded
                ? SizedBox(
                    height: avatarSize,
                    width: avatarSize,
                    child: Image.file(
                      File(filePath),
                    ),
                  )
                : const SizedBox(),
            _isDownloading
                ? Padding(
                    padding: const EdgeInsets.all(20),
                    child: FAProgressBar(
                      currentValue: downloadProgress,
                      displayText: '%',
                      progressColor: Colors.pink,
                    ),
                  )
                : const SizedBox(height: 30),
            FloatingActionButton.extended(
              onPressed: downloadImage,
              label: const Text('Download'),
              icon: const Icon(Icons.file_download),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
