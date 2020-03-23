import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconCustom {
  static Widget icon(String icon, double height, double width) {
    return Container(
      child: Image.asset(icon,
        width: width,
        height: height,
        fit: BoxFit.fill,),
    );
  }
}
