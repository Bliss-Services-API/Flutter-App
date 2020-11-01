import '../Style/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/PodcastScreen2_ListItem.dart';

class PodcastEpisodesPage1 extends StatefulWidget {
  @override
  _PodcastEpisodesPage1State createState() => _PodcastEpisodesPage1State();
}

class _PodcastEpisodesPage1State extends State<PodcastEpisodesPage1> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: [
                Container(
                  height: 376,
                  width: double.maxFinite,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/DeadMau5_song.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  height: 376,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(40.0),
                      bottomLeft: Radius.circular(40.0),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment(0.0, -1.0),
                      end: Alignment(0.0, 1.0),
                      colors: [
                        const Color(0x88ff6f00),
                        const Color(0xff212121)
                      ],
                      stops: [0.0, 1.0],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 3),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.arrow_back_ios),
                                  color: Color(0xfffafafa),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {
                              setState(() {
                                isPressed = !isPressed;
                              });
                            },
                            icon: (isPressed)
                                ? Icon(Icons.favorite, color: Colors.pink)
                                : Icon(Icons.favorite_outline,
                                    color: Color(0xfffafafa)),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.share_outlined),
                            color: Color(0xfffafafa),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),
            Text('Signal To Noise',
                style: kPodcastTitle, textAlign: TextAlign.center),
            Text('ProSoundWeb', style: kCelebSub, textAlign: TextAlign.center),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nec orci vel nisi cursus lacinia. Fusce aliquet pulvinar turpis, vitae... \nRead More',
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32, top: 32, bottom: 16),
              child: Text('Episodes', style: kPodcastTitle),
            ),
            ListTile_Pod(title: 'Dave Rat', subtitle: 'E67'),
            ListTile_Pod(title: 'Dave Rat', subtitle: 'E67'),
            ListTile_Pod(title: 'Dave Rat', subtitle: 'E67'),
          ],
        ),
      ),
    );
  }
}
