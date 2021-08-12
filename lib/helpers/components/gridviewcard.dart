import 'package:flutter/material.dart';
import 'package:musicapp/helpers/color/color.dart';

class GridViewCard extends StatelessWidget {
  const GridViewCard({
    required this.title,
  });

  final String title;
  // final Image cover;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: AppColor.darkcardbgcolor,
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
                height: 125,
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
                  color: AppColor.darkfontcolor,
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
                color: AppColor.darkiconcolor,
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
