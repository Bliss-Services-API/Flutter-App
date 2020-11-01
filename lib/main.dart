import 'Screen/CelebProfilePage.dart';
import 'Screen/PodcastScreen2.dart';
import 'Screen/SearchPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Screen/HomeScreen.dart';
import 'Screen/SearchScreen.dart';
import 'Screen/MessagesScreen.dart';
import 'Screen/PodcastScreen.dart';
import 'Screen/ProfileScreen.dart';
import 'Screen/CelebBookingPage.dart';
import 'Style/ThemeState.dart';
import 'Screen/videoScreen.dart';

void main() => runApp(
      ChangeNotifierProvider<ThemeState>(
        create: (context) => ThemeState(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<ThemeState>(context).theme == ThemeType.DARK
          ? ThemeData.dark()
          : ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/video': (context) => VideoPlayerScreen(),
        '/podcast': (context) => PodcastEpisodesPage1(),
        '/booking': (context) => CelebBookingPage(),
        '/profile': (context) => CelebProfilePage(),
        '/search': (context) => SearchPage(),
        '/': (context) => DarkHomeScreenBlack(),
        '//': (context) => DarkSearchPageBlack(),
        '///': (context) => Podcast(),
        '////': (context) => DarkMessagesPageBlack(),
        '/////': (context) => DarkAccountSettingsPageBlack(),
      },
    );
  }
}
