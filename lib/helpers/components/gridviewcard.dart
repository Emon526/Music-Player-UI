import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/helpers/color/color.dart';
import 'package:musicapp/helpers/config/storage_controller.dart';

// ignore: must_be_immutable
class GridViewCard extends StatelessWidget {
  StorageController storageController = Get.put(StorageController());
  GridViewCard({
    required this.title,
  });

  final String title;
  // final Image cover;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: storageController.isDarkTheme.value
          ? AppColor.lightcardbgcolor
          : AppColor.darkcardbgcolor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Ink.image(
                image: AssetImage('assets/images/artist1.png'),
                height: 108,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: storageController.isDarkTheme.value
                      ? AppColor.lightfontcolor
                      : AppColor.darkfontcolor,
                  fontSize: 17,
                  fontWeight: FontWeight.normal,
                ),
              ),
              IconButton(
                alignment: Alignment.centerRight,
                onPressed: () {},
                icon: Image.asset(
                  'assets/icons/play.png',
                  height: 20,
                  fit: BoxFit.cover,
                ),
                color: storageController.isDarkTheme.value
                    ? AppColor.lighticonColor
                    : AppColor.darkiconcolor,
              ),
            ],
          ),
        ],
      ),
    );
  }
  //   return Card(
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(15.0),
  //     ),
  //     color: AppColor.darkcardbgcolor,
  //     elevation: 5,
  //     child: Container(
  //         child: Expanded(
  //       flex: 1,
  //       child: Container(),
  //     )),
  //   );
  // }
}
