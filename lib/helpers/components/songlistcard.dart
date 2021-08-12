import 'package:flutter/material.dart';
import 'package:musicapp/helpers/color/color.dart';

class SongListCard extends StatelessWidget {
  final String songname;
  final String artistname;

  const SongListCard({required this.songname, required this.artistname});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 1),
      padding: EdgeInsets.all(8),
      color: AppColor.darkdrawercolor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 50,
                  width: 50,
                  child: Image.asset('assets/images/song-avatar.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      songname,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      artistname,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    size: 30,
                    color: AppColor.darkprogresscolor,
                  ),
                  color: AppColor.darkiconcolor,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    size: 30,
                    color: AppColor.darkiconcolor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
