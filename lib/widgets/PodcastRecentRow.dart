import '../Style/textStyle.dart';
import 'package:flutter/material.dart';

class PodRecent extends StatelessWidget {
  final String image, name;
  final Function onIconPress;

  const PodRecent({Key key, this.image, this.name, this.onIconPress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/podcast');
      },
      child: Container(
        height: 134,
        width: 129,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                height: 104,
                width: 129,
                image: AssetImage(image),
                fit: BoxFit.fill,
              ),
            ),
            Row(
              children: [
                Expanded(child: Text(name, style: kCardTitle)),
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  icon: Icon(Icons.more_horiz),
                  onPressed: onIconPress,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
