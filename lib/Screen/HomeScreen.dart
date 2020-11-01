import '../Style/ThemeState.dart';
import 'package:provider/provider.dart';
import '../widgets/BottomBar.dart';
import 'package:flutter/material.dart';
import '../Style/textStyle.dart';
import '../widgets/explore_favourite.dart';
import '../widgets/explorer_card.dart';

class DarkHomeScreenBlack extends StatefulWidget {
  @override
  _DarkHomeScreenBlackState createState() => _DarkHomeScreenBlackState();
}

class _DarkHomeScreenBlackState extends State<DarkHomeScreenBlack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(32, 40, 16, 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //EXPLORE LABEL
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Explore', style: kLeadTitle),
                    Switch(
                        value: Provider.of<ThemeState>(context).theme ==
                            ThemeType.DARK,
                        onChanged: (value) {
                          Provider.of<ThemeState>(context, listen: false)
                              .theme = value ? ThemeType.DARK : ThemeType.LIGHT;
                          setState(() {});
                        }),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),

                //Your Favourite LABEL
                Text('Your Favourite', style: kTitle),
                SizedBox(
                  height: 16,
                ),
                //Favorite Row
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      FavoriteContainer(
                        image: 'assets/images/Illenium.jpg',
                        cardTitle: 'Illenium',
                        cardSubtitle: 'DJ/EDM Producer',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      FavoriteContainer(
                        image: 'assets/images/Seven Lions.jpg',
                        cardTitle: 'Seven Lions',
                        cardSubtitle: 'DJ/EDM Producer',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      FavoriteContainer(
                        image: 'assets/images/Tokyo Machine.jpg',
                        cardTitle: 'Tokyo Machine',
                        cardSubtitle: 'DJ/EDM Producer',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),

                //Trending Label
                Text('Trending Now', style: kTitle),
                SizedBox(
                  height: 20,
                ),
                //Trending Row
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      CardContainer(
                        image: 'assets/images/Armin.jpg',
                        cardTitle: 'Armin',
                        cardSubtitle: 'DJ/EDM Producer',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      CardContainer(
                        image: 'assets/images/Deadmau5.jpg',
                        cardTitle: 'Deadmau5',
                        cardSubtitle: 'DJ/EDM Producer',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      CardContainer(
                        image: 'assets/images/KSHMR.jpg',
                        cardTitle: 'KSHMR',
                        cardSubtitle: 'DJ/EDM Producer',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),

                //Recent Label
                Text('Recent', style: kTitle),
                SizedBox(
                  height: 20,
                ),
                //Recent Row
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      CardContainer(
                        image: 'assets/images/David Guetta.jpg',
                        cardTitle: 'David Guetta',
                        cardSubtitle: 'DJ/EDM Producer',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      CardContainer(
                        image: 'assets/images/Nicky Romero.jpg',
                        cardTitle: 'Nicky Romero',
                        cardSubtitle: 'DJ/EDM Producer',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      CardContainer(
                        image: 'assets/images/Tokyo Machine.jpg',
                        cardTitle: 'Tokyo Machine',
                        cardSubtitle: 'DJ/EDM Producer',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),

                //Online Label
                Text('Online', style: kTitle),
                SizedBox(
                  height: 20,
                ),
                //Online Row
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      CardContainer(
                        image: 'assets/images/KSHMR.jpg',
                        cardTitle: 'KSHMR',
                        cardSubtitle: 'DJ/EDM Producer',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      CardContainer(
                        image: 'assets/images/Tokyo Machine.jpg',
                        cardTitle: 'Tokyo Machine',
                        cardSubtitle: 'DJ/EDM Producer',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      CardContainer(
                        image: 'assets/images/Nicky Romero.jpg',
                        cardTitle: 'Nicky Romero',
                        cardSubtitle: 'DJ/EDM Producer',
                      ),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: 0,
      ),
    );
  }
}
