import '../Style/textStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CelebProfilePage extends StatefulWidget {
  @override
  _CelebProfilePageState createState() => _CelebProfilePageState();
}

class _CelebProfilePageState extends State<CelebProfilePage> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.only(bottom: 124.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Card(
                margin: EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(32)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 32,
                    top: 40,
                    right: 32,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                IconButton(
                                  iconSize: 24,
                                  icon: Icon(Icons.arrow_back),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
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
                          IconButton(
                            iconSize: 24,
                            icon: Icon(Icons.more_vert_outlined),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      CircleAvatar(
                        radius: 48,
                        backgroundImage:
                            AssetImage('assets/images/Deadmau5.jpg'),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Deadmau5',
                        style: kCelebTitle,
                      ),
                      Text(
                        'EDM/DJ Producer',
                        style: kBook1,
                      ),
                      SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 48),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas nec orci vel nisi cursus lacinia. Fusce aliquet pulvinar turpis, vitae rhoncus eros ultricies nec.',
                          style: kProfileText,
                        ),
                      ),
                      SizedBox(height: 24),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Response Time',
                            style: kBookingText,
                          ),
                          SizedBox(
                            width: 32,
                          ),
                          Text(
                            'Response Rate',
                            style: kBookingText,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('2 Days', style: kBook2),
                          SizedBox(
                            width: 76,
                          ),
                          Text('100%', style: kBook2),
                        ],
                      ),
                      SizedBox(height: 32),
                      FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
                            child: Text(
                              'Book A Session',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 12,
                                color: Color(0xfffafafa),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 16, right: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/video');
                        },
                        child:
                            Container(height: 144, width: 170, child: Card())),
                    Container(height: 144, width: 170, child: Card()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 16, right: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(height: 144, width: 170, child: Card()),
                    Container(height: 144, width: 170, child: Card()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 16, right: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(height: 144, width: 170, child: Card()),
                    Container(height: 144, width: 170, child: Card()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 16, right: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(height: 144, width: 170, child: Card()),
                    Container(height: 144, width: 170, child: Card()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
