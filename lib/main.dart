import 'package:ettywinz/Authentication/LoginOrRegister.dart';
import 'package:ettywinz/config/config.dart';
import 'package:ettywinz/View/HomeLivePage.dart';
import 'package:ettywinz/View/InitialScreen.dart';
import 'package:ettywinz/View/SelectLanguage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: (BuildContext context, child) => GetMaterialApp(
              title: 'EttyWinz',
              theme: ThemeData(
                  primarySwatch: Colors.blue,
                  visualDensity: VisualDensity.adaptivePlatformDensity,
                  textTheme: TextTheme(
                      displayLarge: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 21.sp,
                          color: Colors.white),

                      //used in title of section
                      displayMedium: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2C2C2C),
                      ),

                      //for title inside drawer
                      displaySmall: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff868686),
                      ),
                      //for button title light
                      headlineMedium: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Colors.white),

                      //food name text dark
                      headlineSmall: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                          color: Color(0xff484848)),

                      //dark text 2 size bigger than food name text
                      titleLarge: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          color: Color(0xff484848)),

                      //used in textfieldlabel
                      titleMedium: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Color(0xff595959)),

                      //used in details 12 px
                      titleSmall: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: Color(0xff484848)),

                      //used in details small text
                      bodySmall: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 13.sp,
                          color: Color(0xff484848)),

                      //small bold text dark
                      bodyLarge: GoogleFonts.roboto(
                          fontWeight: FontWeight.w600,
                          fontSize: 15.sp,
                          color: Color(0xff2C2C2C)),

                      //small text light weight
                      bodyMedium: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Color(0xff181818)),

                      ////heading on orderlist
                      labelLarge: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp,
                          color: Color(0xff808080)),

                      //used in list card blue color
                      labelSmall: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 14.sp,
                          color: Color(0xff181818)))),
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
              builder: EasyLoading.init(),
            ));
  }
}

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  bool isNotTime = false;
  bool isLangSelected = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      // just delay for showing this slash page clearer because it too fast
      checkExist();
    });
  }

  void checkExist() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isNotTime = prefs.containsKey('isNotTime');
    isLangSelected = prefs.containsKey('isLangSelect');
    var isLogedIn = prefs.containsKey('token');

    isNotTime = prefs.containsKey('isNotTime');
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => isLangSelected
                ? (isNotTime
                    ? (isLogedIn ? HomeLivePage() : LoginOrRegister())
                    : InitialScreen())
                : SelectLanguage()));
  }

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
            ],
          ),
        ),
      ),
    );
  }
}
