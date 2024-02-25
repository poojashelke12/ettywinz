import 'package:ettywinz/Authentication/LoginOrRegister.dart';
import 'package:ettywinz/Common/MyAppBar.dart';
import 'package:ettywinz/config/config.dart';
import 'package:ettywinz/helper/_comFuncHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectLanguage extends StatefulWidget {
  SelectLanguage({Key? key}) : super(key: key);

  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  // bool isEngSelected = false;
  String isEngSelected = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Welcome to EttyWinz'),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 25),
                  child: Text(
                    "In Which language do you want to play the quizzes in?",
                    style: Theme.of(context).textTheme.titleheadingText,
                    textAlign: TextAlign.center,
                  )),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                child: Text('You can change this later from the settings menu',
                    style: Theme.of(context).textTheme.headingText4),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 8,
                  right: 8,
                  top: 10,
                ),
                padding: EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        isEngSelected = "Yes";
                        setState(() {
                          isEngSelected = "Yes";
                        });
                      },
                      child: Container(
                        width:
                            MediaQuery.of(context).copyWith().size.width / 2.9,
                        height:
                            MediaQuery.of(context).copyWith().size.height / 6.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: Colors.black38)),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                "A",
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Visibility(
                                    visible:
                                        isEngSelected == "Yes" ? true : false,
                                    child: Container(
                                      padding: EdgeInsets.only(right: 5),
                                      child: Icon(Icons.check, size: 30),
                                    ),
                                  ),
                                  Container(
                                    child: Text("English",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        isEngSelected = "No";
                        setState(() {
                          isEngSelected = "No";
                        });
                      },
                      child: Container(
                        width:
                            MediaQuery.of(context).copyWith().size.width / 2.9,
                        height:
                            MediaQuery.of(context).copyWith().size.height / 6.5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(color: Colors.black38)),
                        child: Center(
                            child: Column(
                          children: [
                            Text("अ",
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Visibility(
                                  visible: isEngSelected == "No" ? true : false,
                                  child: Container(
                                    padding: EdgeInsets.only(right: 5),
                                    child: Icon(Icons.check, size: 28),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "हिंदी",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 35),
                child: TextButton(
                    // padding: EdgeInsets.only(right: 5, bottom: 10,left: 5),
                    onPressed: () async {
                      if (isEngSelected != "") {
                        // storeToStorageBoolean('isNotTime', true);
                        storeToStorageBoolean('isLangSelect', true);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginOrRegister()));
                      }
                      //  else {
                      //   Toast.show("Select a language to continue.",
                      //       duration: 2);
                      // }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).copyWith().size.width / 1.8,
                      height:
                          MediaQuery.of(context).copyWith().size.height / 19,
                      child: Text('Confirm Selection',
                          style: Theme.of(context).textTheme.mediumButtonText),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: themeColorDark),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
