import 'package:flutter/material.dart';
import 'package:musicapp/helpers/color/color.dart';
import 'package:musicapp/helpers/components/PlaylistCard.dart';
import 'package:musicapp/helpers/components/playing.dart';
import 'package:musicapp/helpers/components/songlistcard.dart';
import 'package:musicapp/helpers/components/sufflecard.dart';

class Songs extends StatelessWidget {
  final List<Map<String, String>> splashData = [
    {
      " title": "Now Playing",
      "cover": "Now Playing",
    },
    {
      " title": "Last Added",
      "cover": "Now Playing",
    },
    {
      " title": "Hip Hop",
      "cover": "Now Playing",
    },
    {
      " title": "Now Playing",
      "cover": "Now Playing",
    },
    {
      " title": "Last Added",
      "cover": "Now Playing",
    },
    {
      " title": "Hip Hop",
      "cover": "Now Playing",
    },
    {
      " title": "Now Playing",
      "cover": "Now Playing",
    },
    {
      " title": "Last Added",
      "cover": "Now Playing",
    },
    {
      " title": "Hip Hop",
      "cover": "Now Playing",
    },
    {
      " title": "Hip Hop",
      "cover": "Now Playing",
    },
    {
      " title": "Now Playing",
      "cover": "Now Playing",
    },
    {
      " title": "Last Added",
      "cover": "Now Playing",
    },
    {
      " title": "Hip Hop",
      "cover": "Now Playing",
    },
    {
      " title": "Hip Hop",
      "cover": "Now Playing",
    },
    {
      " title": "Now Playing",
      "cover": "Now Playing",
    },
    {
      " title": "Last Added",
      "cover": "Now Playing",
    },
    {
      " title": "Hip Hop",
      "cover": "Now Playing",
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: AppColor.darkbackgroundcolor,
        child: Column(
          children: [
            ShuffleCard(),
            Expanded(
              child: ListView.builder(
                itemCount: splashData.length,
                itemBuilder: (BuildContext context, int index) => SongListCard(
                  songname: splashData[index][' title'] ?? '',
                  artistname: splashData[index]['cover'] ?? '',
                ),
              ),
            ),
            PlayingCard(songname: 'Believer', artistname: 'imagine Dragon'),
          ],
        ),
      ),
    );
  }
}
