import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/helpers/config/binding_storage_controller.dart';
import 'package:musicapp/helpers/themes/app_theme.dart';
import 'package:musicapp/screens/splash/splashscreen.dart';

import 'screens/home/homescreen.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      initialRoute: '/home',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
        // GetPage(name: '/audio', page: () => MyAudioList()),
        // GetPage(name: '/document', page: () => MyDocumentList()),
        GetPage(
            name: '/home',
            page: () => HomeScreen(),
            binding: BindingStorageController()),
      ],
    );
  }
}
