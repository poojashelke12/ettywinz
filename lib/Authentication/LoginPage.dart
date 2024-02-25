import 'package:ettywinz/Authentication/ForgotPasswordPage.dart';
import 'package:ettywinz/Common/MyAppBar.dart';
import 'package:ettywinz/View/HomeLivePage.dart';
import 'package:ettywinz/config/config.dart';
import 'package:ettywinz/helper/_comFuncHelper.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: MyAppBar(title: 'Welcome to EttyWinz'),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.only(right: 15, left: 15),
              margin: EdgeInsets.only(top: 20, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text('Already registered?',
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  SizedBox(
                    child: Text('Login to your Ettywinz account!',
                        style: Theme.of(context).textTheme.titleheadingText),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: TextFormField(
                      controller: phoneController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your mobile number';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Mobile Number',
                          labelStyle: Theme.of(context).textTheme.titleMedium),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: TextFormField(
                      obscureText: _isObscure,
                      controller: passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your password';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        labelStyle: Theme.of(context).textTheme.titleMedium,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color(0xffB4B4B4),
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              if ((phoneController.text == "1111111111") &&
                                  (passwordController.text == "admin123")) {
                                storeToStorageString(
                                    'phonenumber', "1111111111");
                                storeToStorageString('password', "admin123");
                                storeToStorageString('token', "valid");
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeLivePage()));
                              } else {
                                showReToast("Invalid Credentials");
                              }
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).copyWith().size.width /
                                    2.5,
                            height:
                                MediaQuery.of(context).copyWith().size.height /
                                    19,
                            child: Text('Login',
                                style: Theme.of(context)
                                    .textTheme
                                    .mediumButtonText),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: themeColorDark),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 12),
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(bottom: 20),
                    child: InkWell(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: themeColorDark,
                          fontSize: 18,
                          //decoration: TextDecoration.underline
                        ),
                      ),
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPasswordPage()))
                        // launch(
                        //     'https://app.kafecloud.com/#/Auth/Forgot-Password')
                      },
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
