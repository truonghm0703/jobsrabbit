import 'package:flutter/material.dart';
import '../app_color.dart';
import '../style/btn_style.dart';

class NormalButton extends StatelessWidget {
  final VoidCallback onPressed;

  NormalButton({@required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 200,
      height: 45,
      child: RaisedButton(
        onPressed: onPressed,
        color: AppColor.yellow,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(4.0)),
        child: Text(
          'Sign In',
          style: BtnStyle.normal(),
        ),
      ),
    );
  }
}
