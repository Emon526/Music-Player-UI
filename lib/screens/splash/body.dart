import 'package:flutter/material.dart';
import 'package:musicapp/helpers/color/color.dart';
import 'package:get/get.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColor.darkbackgroundcolor,
      width: size.width,
      height: size.height,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            width: size.width * 0.5,
            child: Image.asset(
              'assets/logo/logo.png',
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
          ),
          TextButton(
              onPressed: () => Get.toNamed('/home'), child: Text("Next Page")),
        ],
      ),

      //  ),
    );
  }
}
