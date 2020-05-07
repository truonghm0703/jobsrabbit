
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YourPost extends StatefulWidget {
  @override
  _YourPostState createState() => _YourPostState();
}

class _YourPostState extends State<YourPost> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (BuildContext context, int index) {
          return _itemJobBuilder();
        },
        itemCount: 20,
      ),
    );
  }

  Widget _itemJobBuilder() {
    return Container(
      color: Colors.white,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  right: 54.0, left: 54.0, top: 12.0, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          "Nails Job",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "SE 97220",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Color(0x00ff34a3af)),
                        maxLines: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "2 days ago",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Color(0x00ff9d9d9d),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/dashboard/home/ic_candidate.png',
                            width: 14,
                            height: 14,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0x00ff494949),
                            ),
                            maxLines: 1,
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'assets/images/dashboard/home/ic_usd.png',
                            width: 8,
                            height: 11,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            "DEAL",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color(0x00ff455962)),
                            maxLines: 1,
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          print("tap");
                        },
                        child: Container(
                          height: 21,
                          width: 54,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.5)),
                              border: Border.all(color: Color(0x00ff34a3af))),
                          child: Text(
                            "Save",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 11,
                              color: Color(0x00ff34a3af),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Container(
              height: 8,
              color: Color(0xff60a0a7).withOpacity(0.12),
            ),
          ],
        ),
      ),
    );
  }
}
