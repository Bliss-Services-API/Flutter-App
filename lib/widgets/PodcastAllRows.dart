import 'package:flutter/material.dart';

class FeedCardContainer extends StatefulWidget {
  final String image, title, subTitle;

  const FeedCardContainer({Key key, this.image, this.title, this.subTitle})
      : super(key: key);

  @override
  _FeedCardContainerState createState() => _FeedCardContainerState();
}

class _FeedCardContainerState extends State<FeedCardContainer> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/podcast');
      },
      child: Stack(
        children: [
          Container(
            height: 160,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage(widget.image),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 160,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              gradient: LinearGradient(
                begin: Alignment(0.0, 0.61),
                end: Alignment(0.0, -1.0),
                colors: [const Color(0xe8212121), const Color(0x6f7a2a10)],
                stops: [0.0, 1.0],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    top: 0,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                      onPressed: () {
                        setState(() {
                          isPressed = !isPressed;
                        });
                      },
                      icon: (isPressed)
                          ? Icon(Icons.favorite, color: Colors.pink)
                          : Icon(Icons.favorite_outline,
                              color: Color(0xfffafafa)),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 15,
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 10,
                        color: const Color(0xfff5f5f5),
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Text(
                      widget.subTitle,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 10,
                        color: const Color(0xfff5f5f5),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
