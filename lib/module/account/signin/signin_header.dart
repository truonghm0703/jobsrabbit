import 'package:fast_jobs/module/account/signin/signin_bloc.dart';
import 'package:fast_jobs/shared/size_config.dart';
import 'package:fast_jobs/shared/style/txt_style.dart';
import 'package:fast_jobs/shared/widgets/signin_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class HeaderView extends StatelessWidget {
  final SignInBloc bloc;
  const HeaderView({Key key, this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamProvider<int>.value(
        initialData: 0,
        value: bloc.selectedIndexStream,
        child: Consumer<int>(
          builder: (context, selectedIndex, child) => SafeArea(
            child: Container(
              height: 300,
              width: SizeConfig.screenWidth,
              padding: EdgeInsets.symmetric(vertical: 32, horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset('assets/images/login/logo_white.png',
                          width: 32, height: 39),
                      Spacer(),
                      buttonSelected("SignIn", selectedIndex == 0 ? true : false, (){
                        bloc.selectIndexSink.add(0);
                      }),
                      buttonSelected("SignUp", selectedIndex == 1 ? true : false, (){
                        bloc.selectIndexSink.add(1);
                      })
                    ],
                  ),
                  SizedBox(height: 78,),
                  Text(selectedIndex == 0 ?  "Welcome back to" : "Sign up to join", style: TxtStyle.signInHeader(),),
                  SizedBox(height: 12,),
                  Image.asset("assets/images/login/ic_JobsRabbit.png", width: 145, height: 22,),
                ],
              ),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Color(0xff267b3d),
//        image:  DecorationImage(
//          image: AssetImage('assets/images/login/logo_white.png'),
//          fit: BoxFit.cover,
//        ),
      ),
    );
  }
}