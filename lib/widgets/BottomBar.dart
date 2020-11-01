import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  final int selectedIndex;

  BottomBar({Key key, this.selectedIndex}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0.00, -3.00),
            color: Color(0xff424242).withOpacity(0.48),
            blurRadius: 24,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          onTap: _onTap,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/home.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/feed.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/message.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: ''),
          ],
          currentIndex: widget.selectedIndex,
          //backgroundColor: Color(0xff212121),
          //unselectedItemColor: Color(0xfffafafa),
          selectedItemColor: Color(0xffff5722),
        ),
      ),
    );
  }

  _onTap(int tabIndex) {
    switch (tabIndex) {
      case 0:
        Navigator.pushReplacementNamed(context, '/');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '//');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '///');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '////');
        break;
      case 4:
        Navigator.pushReplacementNamed(context, '/////');
        break;
    }
  }
}
