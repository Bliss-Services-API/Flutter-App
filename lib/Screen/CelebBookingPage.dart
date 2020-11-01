import '../Style/textStyle.dart';
import 'package:flutter/material.dart';

class CelebBookingPage extends StatefulWidget {
  @override
  _CelebBookingPageState createState() => _CelebBookingPageState();
}

class _CelebBookingPageState extends State<CelebBookingPage> {
  bool isPressed = false;
  bool buttonPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              bottom: 160,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Deadmau5.jpg'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 32,
              top: 44,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                color: Color(0xfffafafa),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Positioned(
              right: 32,
              top: 44,
              child: IconButton(
                icon: Icon(Icons.explore_outlined),
                color: Color(0xfffafafa),
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 32, right: 32, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: <Widget>[
                            Text('Last Active',
                                style: kBookingText.apply(
                                  color: Color(0xfffafafa),
                                )),
                            Text('12 hrs ago',
                                style:
                                    kCardTitle.apply(color: Color(0xfffafafa))),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              'Response Time',
                              style: kBookingText.apply(
                                color: Color(0xfffafafa),
                              ),
                            ),
                            Text('1 day',
                                style:
                                    kCardTitle.apply(color: Color(0xfffafafa))),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.all(0.0),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 32.0, right: 32, top: 32),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Deadmau5', style: kCelebTitle),
                              IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {},
                                icon: Icon(Icons.share_outlined),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('DJ/EDM Producer', style: kCelebSubTitle),
                              IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {
                                  setState(() {
                                    isPressed = !isPressed;
                                  });
                                },
                                icon: (isPressed)
                                    ? Icon(Icons.favorite, color: Colors.pink)
                                    : Icon(Icons.favorite_outline),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text('Select Service', style: kCelebSub),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    buttonPressed = !buttonPressed;
                                  });
                                },
                                child: Container(
                                  height: 39,
                                  width: 116,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      width: 1.0,
                                      color: Color(0xffeeeeee),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Video Session',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    buttonPressed = !buttonPressed;
                                  });
                                },
                                child: Container(
                                  height: 39,
                                  width: 53,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      width: 1.0,
                                      color: Color(0xffeeeeee),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'DM',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    buttonPressed = !buttonPressed;
                                  });
                                },
                                child: Container(
                                  height: 39,
                                  width: 99,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      width: 1.0,
                                      color: Color(0xffeeeeee),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Video Chat',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ),
                  (buttonPressed)
                      ? ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            topRight: Radius.circular(30.0),
                          ),
                          child: Container(
                            height: 56,
                            color: Color(0xffFF5722),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(width: 48),
                                Text(
                                  '\$30/Video',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 24,
                                    color: Color(0xfffafafa),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  'Book Now',
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 14,
                                    color: const Color(0xfffafafa),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(width: 48)
                              ],
                            ),
                          ),
                        )
                      : Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
