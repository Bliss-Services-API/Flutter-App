import '../Style/textStyle.dart';
import 'package:flutter/material.dart';
import '../widgets/BottomBar.dart';

class DarkSearchPageBlack extends StatefulWidget {
  @override
  _DarkSearchPageBlackState createState() => _DarkSearchPageBlackState();
}

class _DarkSearchPageBlackState extends State<DarkSearchPageBlack> {
  bool _isButtonDisabled = false;
  void _counter() {
    setState(() {
      _isButtonDisabled = !_isButtonDisabled;
    });
  }

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
                Text('Search', style: kLeadTitle),
                SizedBox(height: 32),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/search');
                  },
                  child: Container(
                    height: 48,
                    child: Card(
                      child: Row(
                        children: [
                          SizedBox(width: 16),
                          Icon(Icons.search),
                          SizedBox(width: 10),
                          Text("Search your favorite celebs here",
                              style: kSearchBar),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Musicians",
                          style: _isButtonDisabled
                              ? kCelebTitle.apply(color: Color(0xffbdbdbd))
                              : kCelebTitle),
                      (_isButtonDisabled) ? Container() : Icon(Icons.check),
                    ],
                  ),
                  onPressed: _counter,
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                        side: BorderSide(
                            color: Color(0xffff5722),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      color: Color(0xffff5722),
                      onPressed: () {},
                      child: Center(
                        child: Text("Search",
                            style: kBook2.apply(color: Color(0xfffafafa))),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.00),
                        side: BorderSide(
                            color: Color(0xffff5722),
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      child: Center(
                        child: Text(
                          "Clear",
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Color(0xffff5722),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 194),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(selectedIndex: 1),
    );
  }
}
