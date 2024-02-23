import 'package:ettywinz/Common/MyAppBar.dart';
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
      appBar: MyAppBar(),
    );
  }
}
