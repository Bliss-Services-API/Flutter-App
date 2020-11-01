import '../Style/textStyle.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final String imageData, titleData, subTitleData;

  const ListTileWidget(
      {Key key, this.imageData, this.titleData, this.subTitleData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageData),
      ),
      title: Text(titleData, style: kCelebSub),
      subtitle: Text(subTitleData, style: kCardSubTitle),
    );
  }
}
