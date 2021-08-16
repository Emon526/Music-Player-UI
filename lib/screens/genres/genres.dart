import 'package:flutter/material.dart';
import 'package:musicapp/helpers/color/color.dart';
import 'package:musicapp/helpers/components/gridviewcard.dart';
import 'package:musicapp/helpers/components/playing.dart';
import 'package:musicapp/helpers/config/storage_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Genres extends StatelessWidget {
  StorageController storageController = Get.put(StorageController());
  final List<Map<String, String>> splashData = [
    {
      " title": "Adam Levine",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Alan Walker",
      "cover": 'assets/images/playlist2.png',
    },
    {
      " title": "Beyonce",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Bruno Mars",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Beyonce",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Beyonce",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Bruno Mars",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Beyonce",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Beyonce",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Bruno Mars",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Beyonce",
      "cover": 'assets/images/playlist1.png',
    },
    {
      " title": "Beyonce",
      "cover": 'assets/images/playlist1.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: 15, right: 5, left: 5),
                height: size.height * 0.75,
                width: size.width,
                color: storageController.isDarkTheme.value
                    ? AppColor.lightbackgroundcolor
                    : AppColor.darkbackgroundcolor,
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0),
                  itemCount: splashData.length,
                  itemBuilder: (BuildContext context, int index) =>
                      GridViewCard(
                    title: splashData[index][' title'] ?? '',
                    // cover: splashData[index]['cover'] ?? '',
                  ),
                ),
              ),
            ),
          ),
          PlayingCard(songname: 'Believer', artistname: 'imagine Dragon'),
        ],
      ),
    );
  }
}
