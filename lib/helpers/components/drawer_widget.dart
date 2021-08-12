import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musicapp/helpers/color/color.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Drawer(
        child: Container(
          color: AppColor.darkdrawercolor,
          child: Column(
            children: [
              Container(
                height: size.height * 0.25,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.darkbackgroundcolor,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/drawerbg.png'),
                    fit: BoxFit.cover,
                  ), //DecorationImage
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 10,
                      ),
                      child: Container(
                        height: 80,
                        width: 80,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: AppColor.darkprogresscolor,
                            shape: BoxShape.circle),
                        child: CircleAvatar(
                          radius: 35.0,
                          backgroundColor: AppColor.darkbackgroundcolor,
                          backgroundImage: AssetImage(
                            'assets/logo/logo.png',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 10,
                      ),
                      child: Text(
                        "Music Library",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: AppColor.darkfontcolor),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                color: AppColor.darkdrawercolor,
                alignment: Alignment.topLeft,
                child: Column(
                  textDirection: TextDirection.ltr,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        "Theme mode",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColor.darkunselectedtexcolor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      trailing: Icon(Icons.bedtime),
                      onTap: () {
                        Get.isDarkMode
                            ? Get.changeTheme(ThemeData.light())
                            : Get.changeTheme(ThemeData.dark());
                        print("theme mode");
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Listen Now",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColor.darkunselectedtexcolor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onTap: () {
                        print("Listen now");
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Recents",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColor.darkunselectedtexcolor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onTap: () {
                        print("Recents");
                      },
                    ),
                    ListTile(
                      title: Text(
                        "Music Library",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColor.darkunselectedtexcolor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onTap: () {
                        print("Music Library");
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
