import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[_headerView()],
      ),
    );
  }
}

// ignore: camel_case_types
class _headerView extends StatefulWidget {
  @override
  __headerViewState createState() => __headerViewState();
}

// ignore: camel_case_types
class __headerViewState extends State<_headerView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 282,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0x00ff87d4dc),
              Color(0x00ff34a3af),
              Color(0x00ff34a3af)
            ]),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 62,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    print("tap");
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      'assets/images/dashboard/profile/ic_setting.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    SizedBox(height: 8,),
                    Container(
                      width: 86,
                      height: 86,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(43.0)),
                        border: Border.all(
                          color: Colors.white,
                          width: 3
                        )
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        child: Image.network(
                          "https://static.vinepair.com/wp-content/uploads/2017/03/darts-int.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: () {
                          print("tap");
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(12.5)),
                            color: Colors.white
                          ),
                          child: Image.asset(
                            'assets/images/dashboard/profile/ic_edit_avatar.png',
                            width: 14,
                            height: 11,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    print("tap");
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      'assets/images/dashboard/profile/ic_noti.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
