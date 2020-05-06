import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            PostHeader(
              widthButton: width / 2,
            ),
            //_contentView(),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types, must_be_immutable
class PostHeader extends StatefulWidget {
  final double widthButton;
  int indexSelect = 0;

  PostHeader({this.widthButton});

  @override
  _PostHeaderState createState() => _PostHeaderState();
}

// ignore: camel_case_types
class _PostHeaderState extends State<PostHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 157,
      child: Column(
        children: <Widget>[
          Container(
            height: 110,
            color: Color(0x00ff34a3af),
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 20,
                  left: 16,
                  child: Text(
                    "JobsRabbit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    widget.indexSelect = 0;
                  });
                },
                child: Container(
                  height: 47,
                  width: widget.widthButton,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Posting",
                          style: TextStyle(
                            color: widget.indexSelect == 0
                                ? Color(0xff4a4a4a)
                                : Color(0xffa2a2a2),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          color: widget.indexSelect == 0
                              ? Color(0x00ff34a3af)
                              : Color(0x00fff2f2f2),
                          height: 3,
                          width: widget.widthButton,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    widget.indexSelect = 1;
                  });
                },
                child: Container(
                  height: 47,
                  width: widget.widthButton,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Text(
                          "Your Post",
                          style: TextStyle(
                            color: widget.indexSelect == 1
                                ? Color(0xff4a4a4a)
                                : Color(0xffa2a2a2),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          color: widget.indexSelect == 1
                              ? Color(0x00ff34a3af)
                              : Color(0x00fff2f2f2),
                          height: 3,
                          width: widget.widthButton,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
