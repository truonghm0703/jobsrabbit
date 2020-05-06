import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ProfileHeader(),
          ProfileContent(),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class ProfileHeader extends StatefulWidget {
  @override
  _ProfileHeaderState createState() => _ProfileHeaderState();
}

// ignore: camel_case_types
class _ProfileHeaderState extends State<ProfileHeader> {
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
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: 86,
                      height: 86,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(43.0)),
                          border: Border.all(color: Colors.white, width: 3)),
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
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.5)),
                              color: Colors.white),
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
          SizedBox(
            height: 17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Hoang Minh Truong",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 15,
              ),
              InkWell(
                onTap: () {
                  print("tap");
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    'assets/images/dashboard/profile/ic_edit.png',
                    width: 19,
                    height: 19,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/dashboard/profile/ic_phone.png',
                width: 14,
                height: 22,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "84946718782",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/dashboard/profile/ic_email.png',
                width: 18,
                height: 14,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "jane2203GmailCom",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProfileContent extends StatefulWidget {
  @override
  _ProfileContentState createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            _itemBuilder("Username", "janerowling09"),
            _itemBuilder("Fullname", "Hoang Minh Truong"),
            _itemBuilder("Email", "jane2203@gmail.com"),
            _itemBuilder("Phone ", "0946718782"),
            _itemPasswordBuilder("Password ", "Change password"),
          ],
        ),
      ),
    );
  }

  Widget _itemBuilder(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: 61,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16,
            ),
            Container(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Color(0xff898989),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    value,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xffd2d1d3),
            )
          ],
        ),
      ),
    );
  }

  Widget _itemPasswordBuilder(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        height: 61,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 16,
            ),
            Container(
              height: 44,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                        color: Color(0xff898989),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  InkWell(
                    onTap: () {
                      print("change password");
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        value,
                        style: TextStyle(
                            color: Color(0xfff94f28),
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xffd2d1d3),
            )
          ],
        ),
      ),
    );
  }
}
