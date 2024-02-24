import 'package:ettywinz/Authentication/LoginPage.dart';
import 'package:ettywinz/Common/MyAppBar.dart';
import 'package:ettywinz/config/config.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpassController = TextEditingController();
  final referralCodeController = TextEditingController();
  bool _isObscure = true;
  bool _isObscure1 = true;
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
                    child: Text('New User?',
                        style: Theme.of(context).textTheme.titleLarge),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    child: Text('Create your Ettywinz account!',
                        style: Theme.of(context).textTheme.titleheadingText),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5, left: 5),
                    child: TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter your name';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                          labelStyle: Theme.of(context).textTheme.titleMedium),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5, left: 5),
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
                    padding: EdgeInsets.only(right: 5, left: 5),
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
                    height: 22,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5, left: 5),
                    child: TextFormField(
                      obscureText: _isObscure1,
                      controller: confirmpassController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Retyped your pasword';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm Password',
                          labelStyle: Theme.of(context).textTheme.titleMedium,
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isObscure1
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Color(0xffB4B4B4),
                            ),
                            onPressed: () {
                              setState(() {
                                _isObscure1 = !_isObscure1;
                              });
                            },
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 5, left: 5),
                    // height: MediaQuery.of(context).copyWith().size.height / 15,
                    child: TextFormField(
                      controller: referralCodeController,
                      // validator: (value) {
                      //   if (value!.isEmpty) {
                      //     return 'Enter your name';
                      //   } else {
                      //     return null;
                      //   }
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Refferal Code (Optional)',
                          labelStyle: Theme.of(context).textTheme.titleMedium),
                    ),
                  ),
                  SizedBox(
                    height: 30,
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
                                      builder: (context) => LoginPage()));
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).copyWith().size.width /
                                    1.2,
                            height:
                                MediaQuery.of(context).copyWith().size.height /
                                    19,
                            child: Text('Register',
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
