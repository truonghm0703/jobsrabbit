import 'package:dio/dio.dart';
import 'package:fast_jobs/shared/widgets/icon.dart';
import 'package:fast_jobs/views/dashboard/tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: SizedBox(),
                          ),
                          _headerView(),
                          SizedBox(
                            height: 50,
                          ),
                          _emailPasswordWidget(),
                          Container(
                            padding: EdgeInsets.only(top: 17, bottom: 24),
                            alignment: Alignment.centerLeft,
                            child: Text('Forgot your password? Reset here',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13)),
                          ),
                          _submitButton(context),
                          _divider(),
                          _fbggbtn(),
                          Expanded(
                            flex: 2,
                            child: SizedBox(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  _createAccountLabel(),
                  SafeArea(
                    child: SizedBox(
                      height: 27,
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff87d4dc), Color(0xff34a3af)])),
            )));
  }

  Widget _entryField(String title, String icon,
      {double heightIcon,
      double widthIcon,
      bool isPassword = false,
      TextEditingController controller}) {
    return Container(
      height: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              IconCustom.icon(icon, heightIcon, widthIcon),
              SizedBox(
                width: 14.0 - widthIcon,
              ),
              Expanded(
                child: TextField(
                    controller: controller,
                    obscureText: isPassword,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Color(0x00f3f3f4),
                        filled: true,
                        hintText: title,
                        hintStyle: TextStyle(color: Colors.white))),
              ),
            ],
          ),
          Container(
            height: 1,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _submitButton(BuildContext context) {
    return InkWell(
      onTap: () {
        var email = emailController.value.text.trim().toString();
        var password = passwordController.value.text.trim().toString();
        _doLogin(email, password, context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 40,
        alignment: Alignment.center,
        decoration: new BoxDecoration(
            color: Color(0xffffffff).withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            border: Border.all(
                color: Colors.white, width: 1, style: BorderStyle.solid)),
        child: Text(
          'Sign in',
          style: TextStyle(
              fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            'Or login via',
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                thickness: 1,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }

  Widget _fbggbtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: () {
            print('tap fb');
          },
          child: Image.asset(
            'assets/images/login/ic_fb.png',
            width: 40,
            height: 40,
          ),
        ),
        SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () {
            print('tap google');
          },
          child: Image.asset(
            'assets/images/login/ic_google.png',
            width: 40,
            height: 40,
          ),
        ),
      ],
    );
  }

  Widget _createAccountLabel() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 198,
        height: 48,
        alignment: Alignment.center,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        child: Text(
          'Register',
          style: TextStyle(
              fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _headerView() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Image.asset('assets/images/login/logo_white.png',
                width: 41, height: 51),
            SizedBox(
              width: 9,
            ),
            Text("JobsRabbit",
                style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 0.1))
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Register or login',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        )
      ],
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Username", 'assets/images/login/ic_username.png',
            heightIcon: 14.0, widthIcon: 14.0, controller: emailController),
        _entryField("Password", 'assets/images/login/ic_password.png',
            heightIcon: 16.0,
            widthIcon: 11.0,
            isPassword: true,
            controller: passwordController),
      ],
    );
  }

  void _doLogin(String email, String password, BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return TabBarController();
    }));
    return;
    Dio _dio = new Dio();

    var data = {
      "email": "$email",
      "password": "$password",
    };
    _dio.post('https://v2.cashless.vn/api/login', data: data).then((result) {
      if (result.statusCode == 200) {
//        Navigator.push(context,
//            MaterialPageRoute(builder: (BuildContext context) {
//              var user = User.fromMap(result.data);
//              return HomeScreen(user.toString());
//      }));
      } else {
        _showDialog(context, "Login error cmnr");
      }
    }).catchError((error) {
      _showDialog(context, (error as DioError).response.data['message']);
    });
  }

  void _showDialog(BuildContext context, String message, {String title}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(title == null ? "" : title),
          content: new Text(message),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
