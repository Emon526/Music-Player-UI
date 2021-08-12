import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:musicapp/helpers/components/appbar.dart';
import 'package:musicapp/helpers/components/drawer_widget.dart';
import 'package:musicapp/helpers/config/storage_controller.dart';
import 'package:musicapp/screens/albums/albums.dart';
import 'package:musicapp/screens/artists/artists.dart';
import 'package:musicapp/screens/genres/genres.dart';

import 'package:musicapp/screens/loading/loading_screen.dart';
import 'package:musicapp/screens/playlists/playlist.dart';

import 'package:musicapp/screens/songs/songs.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Get.find<StorageController>().isPermit.value == true
          ? DefaultTabController(
              length: 5,
              child: Scaffold(
                appBar: HomeAppBar.primaryAppBar("Music Library"),
                body: TabBarView(
                  children: [
                    //calling screens
                    PlayList(),
                    Artists(),
                    Albums(),
                    Songs(),
                    Genres(),
                  ],
                ),
                drawer: DrawerWidget(),
              ),
            )
          : LoadingScreen(),
    );
  }
}
