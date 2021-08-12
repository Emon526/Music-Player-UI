import 'package:flutter/material.dart';
import 'package:musicapp/helpers/color/color.dart';

class HomeAppBar {
  static primaryAppBar(
    String title,
  ) {
    return AppBar(
      title: Text(
        title,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: AppColor.darkfontcolor,
        ),
      ),

      backgroundColor: AppColor.darkcardbgcolor,
      // centerTitle: true,
      elevation: 0,
      leading: Builder(builder: (context) {
        return IconButton(
          icon: Icon(
            Icons.menu,
            color: AppColor.darkfontcolor,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        );
      }),
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            color: AppColor.darkfontcolor,
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
          labelColor: AppColor.darkselectedtexcolor,
          unselectedLabelColor: AppColor.darkunselectedtexcolor,
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
