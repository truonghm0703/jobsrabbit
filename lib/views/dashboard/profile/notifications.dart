import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x00ff34a3af),
        title: Text(
          "Notifications",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.chevron_left),
              onPressed: () {
                Navigator.of(context).pop();
              },
            );
          },
        ),
      ),
      body: Notification(),
      backgroundColor: Color(0xffecf3f4),
    );
  }
}

class Notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        return _itemNotiBuilder(index);
      },
      itemCount: 20,
    );
  }

  Widget _itemNotiBuilder(int index) {
    return Container(
      height: 102,
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20, left: 32, right: 32),
            child: Text(
              "[Completed] We’ve been uploaded your Job “Shipping Food” succesfully! We’ve been uploaded your Job We’ve been uploaded your Job",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xff535353),
              ),
              maxLines: 3,
            ),
          ),
          Positioned(
            bottom: 12,
            right: 32,
            child: Text(
              "2 hour ago",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: Color(0xff9d9d9d),
              ),
            ),
          ),
          Container(
            height: 8,
            color: Color(0xffecf3f4),
          ),
        ],
      ),
    );
  }
}
