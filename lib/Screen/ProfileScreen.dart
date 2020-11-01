import '../Style/textStyle.dart';
import 'package:flutter/material.dart';
import '../widgets/BottomBar.dart';
import '../widgets/ProfileList.dart';

class DarkAccountSettingsPageBlack extends StatelessWidget {
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
                Text('Profile\nManagement', style: kLeadTitle),
                SizedBox(height: 24),
                ListTile(
                  visualDensity: VisualDensity(vertical: 2),
                  contentPadding: EdgeInsets.zero,
                  leading: Stack(
                    children: [
                      CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/profile_pic.png"),
                          radius: 32),
                      Positioned(
                        left: 40,
                        top: 40,
                        child: CircleAvatar(
                          radius: 12.00,
                          backgroundColor: Color(0xffff5722),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit_outlined,
                              size: 16,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  title: Text(
                    "King",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      //color: Color(0xfff5f5f5),
                    ),
                  ),
                  subtitle: Text(
                    "abc@xx.com",
                    style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w300,
                      fontSize: 10,
                      //color: Color(0xffe0e0e0),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                ProfileList(
                  leadIcon: Icon(Icons.history),
                  function: () {},
                  stringData: 'Booking History',
                  trailingIcon: Icon(Icons.chevron_right),
                ),
                Divider(),
                ProfileList(
                  leadIcon: Icon(Icons.payment),
                  function: () {},
                  stringData: 'Saved Payment Methods',
                  trailingIcon: Icon(Icons.chevron_right),
                ),
                Divider(),
                ProfileList(
                  leadIcon: Icon(Icons.code),
                  function: () {},
                  stringData: 'Invite Code',
                  trailingIcon: Icon(Icons.chevron_right),
                ),
                Divider(),
                ProfileList(
                  leadIcon: Icon(Icons.settings_outlined),
                  function: () {},
                  stringData: 'Profile Settings',
                  trailingIcon: Icon(Icons.chevron_right),
                ),
                Divider(),
                ProfileList(
                  leadIcon: Icon(Icons.notifications_none),
                  function: () {},
                  stringData: 'Notification Settings',
                  trailingIcon: Icon(Icons.chevron_right),
                ),
                Divider(),
                ProfileList(
                  leadIcon: Icon(Icons.help_outline),
                  function: () {},
                  stringData: 'Help and FAQs',
                  trailingIcon: Icon(Icons.chevron_right),
                ),
                Divider(),
                SizedBox(height: 48),
                Align(
                  alignment: Alignment.center,
                  child: FlatButton(
                    onPressed: () {},
                    child: Container(
                      height: 39,
                      width: 191,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color(0xffff5722),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x52ff5722),
                            offset: Offset(0, 6),
                            blurRadius: 12,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text('Log out',
                            style: kSearchBar.apply(color: Color(0xfffafafa))),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      style: kSearchBar,
                      children: [
                        TextSpan(text: 'Read '),
                        TextSpan(
                            text: 'Terms and Conditions ',
                            style: TextStyle(color: Color(0xffff5722))),
                        TextSpan(text: 'and '),
                        TextSpan(
                            text: 'Privacy Policies',
                            style: TextStyle(color: Color(0xffff5722))),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 138),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(selectedIndex: 4),
    );
  }
}
