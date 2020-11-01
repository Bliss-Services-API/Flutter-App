import 'package:flutter/material.dart';
import '../Style/textStyle.dart';
import '../widgets/BottomBar.dart';
import '../widgets/MessageTile.dart';

class DarkMessagesPageBlack extends StatelessWidget {
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
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Messages', style: kLeadTitle),
                    ),
                    IconButton(
                      icon: Icon(Icons.tune),
                      onPressed: () {},
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                Text("Today", style: kSearchBar),
                SizedBox(height: 16),
                ListTileWidget(
                    imageData: 'assets/images/KSHMR.jpg',
                    titleData:
                        "KSHMR has accepted date for video session on 17th September, 2020, 14:00.",
                    subTitleData: "10:32 AM"),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 1.00,
                      width: 100.00,
                      color: Color(0xff616161),
                    ),
                    Text("Old Thread", style: kSearchBar),
                    Container(
                      height: 1.00,
                      width: 100.00,
                      color: Color(0xff616161),
                    ),
                  ],
                ),
                SizedBox(height: 24),
                ListTileWidget(
                  imageData: 'assets/images/KSHMR.jpg',
                  titleData:
                      "KSHMR has accepted date for video session on 17th September, 2020, 14:00.",
                  subTitleData: "10:32 AM",
                ),
                SizedBox(height: 24),
                Text("This Weekend", style: kSearchBar),
                SizedBox(height: 16),
                ListTileWidget(
                  imageData: 'assets/images/KSHMR.jpg',
                  titleData:
                      "KSHMR has accepted date for video session on 17th September, 2020, 14:00.",
                  subTitleData: "10:32 AM",
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(selectedIndex: 3),
    );
  }
}
