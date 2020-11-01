import '../Style/textStyle.dart';
import 'package:flutter/material.dart';

class FavoriteContainer extends StatelessWidget {
  final String image, cardTitle, cardSubtitle;

  const FavoriteContainer({this.image, this.cardTitle, this.cardSubtitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/booking');
      },
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        margin: EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage(image),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              cardTitle,
              style: kCardTitle,
            ),
            Text(
              cardSubtitle,
              style: kCardSubTitle,
            ),
          ],
        ),
      ),
    );
  }
}
