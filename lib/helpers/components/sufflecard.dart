import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/helpers/color/color.dart';
import 'package:musicapp/helpers/config/storage_controller.dart';

// ignore: must_be_immutable
class ShuffleCard extends StatelessWidget {
  StorageController storageController = Get.put(StorageController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 1),
      padding: EdgeInsets.all(8),
      color: storageController.isDarkTheme.value
          ? AppColor.lightsufflecardcolor
          : AppColor.darksufflecardcolor,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shuffle,
              size: 30,
              color: storageController.isDarkTheme.value
                  ? AppColor.lightselectediconColor
                  : AppColor.darkselectediconColor,
            ),
            color: AppColor.darkiconcolor,
          ),
          Text(
            "Shuffle All",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
              color: storageController.isDarkTheme.value
                  ? AppColor.lightfontcolor
                  : AppColor.darkfontcolor,
            ),
          ),
        ],
      ),
    );
  }
}
