import 'package:ettywinz/Authentication/LoginOrRegister.dart';
import 'package:ettywinz/Common/MyAppBar.dart';
import 'package:ettywinz/config/config.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final phoneController = TextEditingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: MyAppBar(title: 'Forgot password'),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.only(right: 15, left: 15),
              margin: EdgeInsets.only(top: 20, bottom: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Text(
                        'If you have forgotten your password, please enter your mobile number you use to login below and click Request New Password.',
                        style: Theme.of(context).textTheme.headingText4),
                  ),
                  SizedBox(
                    height: 26,
                  ),
                  SizedBox(
                    child: Text(
                        'You will then receive an OTP, enter that OTP on the next screen to change your password.',
                        style: Theme.of(context).textTheme.headingText4),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10, left: 10),
                    child: TextFormField(
                      obscureText: _isObscure,
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
                        labelText: 'Enter Mobile Number',
                        labelStyle: Theme.of(context).textTheme.titleMedium,
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
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
                    height: 22,
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: TextButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginOrRegister()));
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).copyWith().size.width /
                                    1.2,
                            height:
                                MediaQuery.of(context).copyWith().size.height /
                                    20,
                            child: Text('Request New Pasword',
                                style: Theme.of(context)
                                    .textTheme
                                    .mediumButtonText),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: themeColorDark),
                          )),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
