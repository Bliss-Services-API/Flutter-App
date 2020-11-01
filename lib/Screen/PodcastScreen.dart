import '../Style/textStyle.dart';
import 'package:flutter/material.dart';
import '../widgets/BottomBar.dart';
import '../widgets/PodcastRecentRow.dart';
import '../widgets/PodcastAllRows.dart';

class Podcast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(32, 40, 32, 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Podcast', style: kLeadTitle),
                    IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        icon: Icon(Icons.settings_outlined),
                        onPressed: () {})
                  ],
                ),
                SizedBox(height: 32),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/search');
                  },
                  child: Container(
                    height: 40,
                    child: Card(
                      margin: EdgeInsets.zero,
                      elevation: 0,
                      child: Row(
                        children: [
                          SizedBox(width: 16),
                          Icon(
                            Icons.search,
                            color: Color(0xff9e9e9e),
                          ),
                          SizedBox(width: 10),
                          Text("Search your favorite celebs here",
                              style:
                                  kSearchBar.apply(color: Color(0xff9e9e9e))),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Recently Listed', style: kPodcastTitle),
                    IconButton(
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                      onPressed: () {},
                      icon: Icon(
                        Icons.clear_all,
                        color: Color(0xffff7043),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PodRecent(
                        image: 'assets/images/pod_recent_1.jpg',
                        name: 'Jab, Jab Jab the right hook',
                        onIconPress: () {},
                      ),
                      SizedBox(width: 16),
                      PodRecent(
                        image: 'assets/images/pod_recent_2.png',
                        name: 'UKF Podcast',
                        onIconPress: () {},
                      ),
                      SizedBox(width: 16),
                      PodRecent(
                        image: 'assets/images/pod_recent_3.jpg',
                        name: 'Vox Media Podcast',
                        onIconPress: () {},
                      ),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Trending Talks', style: kPodcastTitle),
                    FlatButton(
                      height: 23,
                      minWidth: 62,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.00),
                        side: BorderSide(
                            color: Color(0xffff5722),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      child: Text("More",
                          style: kSearchBar.apply(color: Color(0xffff5722))),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FeedCardContainer(
                        image: 'assets/images/GaryVee.jpg',
                        title: 'Jab, Jab Jab \nthe right hook',
                        subTitle: 'by GaryVee',
                      ),
                      SizedBox(width: 16),
                      FeedCardContainer(
                        image: 'assets/images/Armin_song.jpg',
                        title: 'ASOT Podcast',
                        subTitle: 'by Armin Van Buuren',
                      ),
                      SizedBox(width: 16),
                      FeedCardContainer(
                        image: 'assets/images/DeadMau5_song.jpg',
                        title: 'Signal to Noise',
                        subTitle: 'by Deadmau5',
                      ),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Musicians on Air', style: kPodcastTitle),
                    FlatButton(
                      height: 23,
                      minWidth: 62,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.00),
                        side: BorderSide(
                            color: Color(0xffff5722),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      child: Text("More",
                          style: kSearchBar.apply(color: Color(0xffff5722))),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      FeedCardContainer(
                        image: 'assets/images/DeadMau5_song.jpg',
                        title: 'Signal to Noise',
                        subTitle: 'by Deadmau5',
                      ),
                      SizedBox(width: 16),
                      FeedCardContainer(
                        image: 'assets/images/GaryVee.jpg',
                        title: 'Jab, Jab Jab \nthe right hook',
                        subTitle: 'by GaryVee',
                      ),
                      SizedBox(width: 16),
                      FeedCardContainer(
                        image: 'assets/images/Armin_song.jpg',
                        title: 'ASOT Podcast',
                        subTitle: 'by Armin Van Buuren',
                      ),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(selectedIndex: 2),
    );
  }
}
