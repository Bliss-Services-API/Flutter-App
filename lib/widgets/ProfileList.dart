import '../Style/textStyle.dart';
import 'package:flutter/material.dart';

class ProfileList extends StatelessWidget {
  final Icon leadIcon, trailingIcon;
  final Function function;
  final String stringData;

  const ProfileList(
      {Key key,
      this.leadIcon,
      this.trailingIcon,
      this.function,
      this.stringData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: VisualDensity(horizontal: 0, vertical: -2),
      contentPadding: EdgeInsets.zero,
      leading: leadIcon,
      title: Text(
        stringData,
        style: kSearchBar,
      ),
      trailing: IconButton(
        padding: EdgeInsets.zero,
        constraints: BoxConstraints(),
        icon: trailingIcon,
        onPressed: function,
      ),
    );
  }
}
