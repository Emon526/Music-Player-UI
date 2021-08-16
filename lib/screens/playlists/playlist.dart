import 'package:flutter/material.dart';
import 'package:musicapp/helpers/color/color.dart';
import 'package:musicapp/helpers/components/playing.dart';
import 'package:musicapp/helpers/components/playlistcard.dart';
import 'package:musicapp/helpers/config/storage_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class PlayList extends StatelessWidget {
  StorageController storageController = Get.put(StorageController());

  final List<Map<String, String>> splashData = [
    {
      " title": "Now Playing",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Last Added",
      "cover": 'assets/images/playlist2.png',
    },
    {
      " title": "Hip Hop",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Now Playing",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Last Added",
      "cover": 'assets/images/playlist2.png',
    },
    {
      " title": "Hip Hop",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Now Playing",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Last Added",
      "cover": 'assets/images/playlist2.png',
    },
    {
      " title": "Hip Hop",
      "cover": 'assets/images/playlist1.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: storageController.isDarkTheme.value
            ? AppColor.lightbackgroundcolor
            : AppColor.darkbackgroundcolor,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: splashData.length,
                itemBuilder: (BuildContext context, int index) => PlayListCard(
                  title: splashData[index][' title'] ?? '',
                  // cover: splashData[index]['cover'] ?? '',
                ),
              ),
            ),
            PlayingCard(songname: 'Believer', artistname: 'imagine Dragon'),
          ],
        ),
      ),
    );
  }
}
