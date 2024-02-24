import 'package:ettywinz/Authentication/LoginPage.dart';
import 'package:ettywinz/Authentication/RegisterPage.dart';
import 'package:ettywinz/Common/MyAppBar.dart';
import 'package:ettywinz/config/config.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  LoginOrRegister({Key? key}) : super(key: key);

  @override
  _LoginOrRegisterState createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/logo/bg_waves.jpg'))),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/logo/splash.png",
                width: 100,
                height: 100,
              ),
              SizedBox(height: 20),
              // Container(
              //   width: 20,
              //   height: 20,
              //   child: CircularProgressIndicator(color: themeColorDark),
              // ),
              Container(
                child: TextButton(
                    // padding: EdgeInsets.only(right: 5, bottom: 10,left: 5),
                    onPressed: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).copyWith().size.width / 1.8,
                      height:
                          MediaQuery.of(context).copyWith().size.height / 19,
                      child: Text('Register',
                          style: Theme.of(context).textTheme.mediumButtonText),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: themeColorDark),
                    )),
              ),
              SizedBox(height: 12),
              Container(
                child: TextButton(
                    // padding: EdgeInsets.only(right: 5, bottom: 10,left: 5),
                    onPressed: () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).copyWith().size.width / 1.8,
                      height:
                          MediaQuery.of(context).copyWith().size.height / 19,
                      child: Text('Login',
                          style: Theme.of(context)
                              .textTheme
                              .mediumButtonTextblack),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
