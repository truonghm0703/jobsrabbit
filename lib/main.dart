import 'package:flutter/material.dart';
import 'module/account/signin/signin_page.dart';
import 'shared/app_color.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Store',
      theme: ThemeData(
        primarySwatch: AppColor.yellow,
      ),
      home: SignInPage(),
    );
  }
}
