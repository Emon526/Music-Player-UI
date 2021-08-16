import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/helpers/color/color.dart';
import 'package:musicapp/helpers/config/storage_controller.dart';

// ignore: must_be_immutable
class PlayListCard extends StatelessWidget {
  StorageController storageController = Get.put(StorageController());

  PlayListCard({
    required this.title,
  });

  final String title;
  // final Image cover;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: storageController.isDarkTheme.value
          ? AppColor.lightcardbgcolor
          : AppColor.darkcardbgcolor,
      margin: EdgeInsets.all(10),
      elevation: 5,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/playlist1.png'),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: storageController.isDarkTheme.value
                          ? AppColor.lightfontcolor
                          : AppColor.darkfontcolor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      alignment: Alignment.centerRight,
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/icons/play.png',
                        height: 24,
                        fit: BoxFit.cover,
                      ),
                      color: storageController.isDarkTheme.value
                          ? AppColor.lighticonColor
                          : AppColor.darkiconcolor,
                    ),
                    IconButton(
                      alignment: Alignment.centerRight,
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert,
                        size: 30,
                        color: storageController.isDarkTheme.value
                            ? AppColor.lighticonColor
                            : AppColor.darkiconcolor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
