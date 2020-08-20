import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../shared/app_color.dart';

class PageContainer extends StatelessWidget {
  final String title;
  final Widget child;

  final List<SingleChildCloneableWidget> bloc;
  final List<SingleChildCloneableWidget> di;

  PageContainer({this.title, this.bloc, this.di, this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(color: AppColor.blue),
        ),
      ),
      body: MultiProvider(
        providers: [
          ...di,
          ...bloc,
        ],
        child: child,
      ),
    );
  }
}
