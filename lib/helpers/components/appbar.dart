import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/helpers/color/color.dart';
import 'package:musicapp/helpers/config/storage_controller.dart';

class HomeAppBar {
  static primaryAppBar(
    String title,
  ) {
    StorageController storageController = Get.put(StorageController());
    return AppBar(
      title: Text(
        title,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: storageController.isDarkTheme.value
              ? AppColor.lightfontcolor
              : AppColor.darkfontcolor,
        ),
      ),

      backgroundColor: storageController.isDarkTheme.value
          ? AppColor.lightcardbgcolor
          : AppColor.darkcardbgcolor,
      // centerTitle: true,
      elevation: 0,
      leading: Builder(builder: (context) {
        return IconButton(
          icon: Icon(
            Icons.menu,
            color: storageController.isDarkTheme.value
                ? AppColor.lighttabiconcolor
                : AppColor.darktabiconcolor,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        );
      }),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            color: storageController.isDarkTheme.value
                ? AppColor.lighttabiconcolor
                : AppColor.darktabiconcolor,
          ),
          onPressed: () {},
          // onPressed: () => showSearch(
          //   context: context,
          //   delegate: Data_Search(),
          // ),
        ),
      ],
      // TabBar Scection
      bottom: TabBar(
          labelPadding: EdgeInsets.only(right: 5, left: 5),
          labelColor: storageController.isDarkTheme.value
              ? AppColor.lightselectedtexcolor
              : AppColor.darkselectedtexcolor,
          unselectedLabelColor: storageController.isDarkTheme.value
              ? AppColor.lightunselectedtexcolor
              : AppColor.darkunselectedtexcolor,
          // indicator: BoxDecoration(
          //   borderRadius: BorderRadius.circular(20.0),
          //   color: Color(0xFFFB7955),
          // ),
          tabs: [
            Tab(
              text: "Playlists",
            ),
            Tab(
              text: "Artists",
            ),
            Tab(
              text: "Albums",
            ),
            Tab(
              text: "Songs",
            ),
            Tab(
              text: "Genres",
            ),
          ]),
    );
  }
}
