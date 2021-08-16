import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/helpers/color/color.dart';
import 'package:musicapp/helpers/config/storage_controller.dart';

// ignore: must_be_immutable
class PlayingCard extends StatelessWidget {
  StorageController storageController = Get.put(StorageController());

  final String songname;
  final String artistname;

  PlayingCard({required this.songname, required this.artistname});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 1),
        padding: EdgeInsets.all(8),
        color: storageController.isDarkTheme.value
            ? AppColor.lightplayingcardcolor
            : AppColor.darkplayingcardcolor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 50,
                    width: 50,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: AppColor.darkprogresscolor,
                        shape: BoxShape.circle),
                    child: CircleAvatar(
                      radius: 35.0,
                      backgroundColor: AppColor.darkbackgroundcolor,
                      backgroundImage: AssetImage(
                        'assets/images/song-avatar.png',
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        songname,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: storageController.isDarkTheme.value
                              ? AppColor.lightfontcolor
                              : AppColor.darkfontcolor,
                        ),
                      ),
                      Text(
                        artistname,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                          color: storageController.isDarkTheme.value
                              ? AppColor.lightfontcolor
                              : AppColor.darkfontcolor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: IconButton(
                alignment: Alignment.centerRight,
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/play.png',
                  height: 24,
                  fit: BoxFit.cover,
                  color: storageController.isDarkTheme.value
                      ? AppColor.lighticonColor
                      : AppColor.darkiconcolor,
                ),
                // color: AppColor.darkfontcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
