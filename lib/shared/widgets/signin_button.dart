import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buttonSelected(String title,bool isSelect, Function press) {
  return InkWell(
    onTap: press,
    child: Container(
      height: 32,
      padding: EdgeInsets.only(left: 30),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: isSelect ? FontWeight.w600 : FontWeight.w400),
            ),
          ),
          Container(
            width: 52,
            height: 2,
            color: isSelect ? Colors.white : null,
          ),
        ],
      ),
    ),
  );
}