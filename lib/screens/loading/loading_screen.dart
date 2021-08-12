import 'package:flutter/material.dart';
import 'package:musicapp/helpers/color/color.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkbackgroundcolor,
      body: Center(
          child: CircularProgressIndicator(
        color: AppColor.darkprogresscolor,
      )),
    );
  }
}
