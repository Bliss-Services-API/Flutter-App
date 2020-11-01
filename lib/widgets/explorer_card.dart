import '../Style/textStyle.dart';
import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {
  final String image, cardTitle, cardSubtitle;
  CardContainer({this.image, this.cardTitle, this.cardSubtitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/booking');
      },
      child: Container(
        height: 236,
        width: 140,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 184,
              width: 140,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  child: Image(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(cardTitle, style: kCardTitle),
            Text(cardSubtitle, style: kCardSubTitle),
          ],
        ),
      ),
    );
  }
}
