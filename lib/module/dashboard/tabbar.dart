import 'package:fast_jobs/shared/utils/bottom_navy_bar.dart';
import 'package:fast_jobs/shared/widgets/icon.dart';
import 'package:fast_jobs/views/dashboard/history/histories.dart';
import 'package:fast_jobs/views/dashboard/home/home.dart';
import 'package:fast_jobs/views/dashboard/post/posts.dart';
import 'package:fast_jobs/views/dashboard/profile/profile.dart';
import 'package:flutter/material.dart';

/// This Widget is the main application widget.
class TabBarController extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final _widgetOptions = [Home(), Histories(), Posts(), Profile()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          onItemSelected: _onItemTapped,
          items: [
            BottomNavyBarItem(
              icon: IconCustom.icon(
                  'assets/images/dashboard/menu/home_unselect.png', 18, 18),
              activeIcon: IconCustom.icon(
                  'assets/images/dashboard/menu/home_selected.png', 18, 18),
              title: Text('Home'),
              activeColor: Colors.white,
              containerColor: Color(0xff34a3af),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: IconCustom.icon(
                  'assets/images/dashboard/menu/history_unselect.png', 18, 20),
              activeIcon: IconCustom.icon(
                  'assets/images/dashboard/menu/history_selected.png', 18, 20),
              title: Text('History'),
              activeColor: Colors.white,
              containerColor: Color(0xff34a3af),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: IconCustom.icon(
                  'assets/images/dashboard/menu/post_unselect.png', 19, 18),
              activeIcon: IconCustom.icon(
                  'assets/images/dashboard/menu/post_selected.png', 19, 18),
              title: Text('Post'),
              activeColor: Colors.white,
              containerColor: Color(0xff34a3af),
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: IconCustom.icon(
                  'assets/images/dashboard/menu/account_unselect.png', 17, 18),
              activeIcon: IconCustom.icon(
                  'assets/images/dashboard/menu/account_selected.png', 17, 18),
              title: Text('Account'),
              activeColor: Colors.white,
              containerColor: Color(0xff34a3af),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
