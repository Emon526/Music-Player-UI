import 'package:flutter/material.dart';
import 'package:musicapp/helpers/color/color.dart';

class ShuffleCard extends StatelessWidget {
  const ShuffleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 1),
      padding: EdgeInsets.all(8),
      color: AppColor.darksufflecardcolor,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shuffle,
              size: 30,
              color: AppColor.darkprogresscolor,
            ),
            color: AppColor.darkiconcolor,
          ),
          Text(
            "Shuffle All",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
