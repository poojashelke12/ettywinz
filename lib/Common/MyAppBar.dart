import 'package:ettywinz/config/config.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  MyAppBar({Key? key, required this.title}) : super(key: key);

  @override
  _MyAppBarState createState() => _MyAppBarState(title);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MyAppBarState extends State<MyAppBar> {
  String title = 'EttyWinz';
  _MyAppBarState(String title) {
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
            backgroundColor: themeColorDark,
            // leading: Image.asset(
            //   "assets/logo/splash.png",
            //   width: 50,
            //   height: 50,
            // ),
            title: Container(
              child: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
            iconTheme: IconThemeData(color: Colors.white)
            // actions: [
            //   Container(
            //     margin: EdgeInsets.all(5),
            //     child: IconButton(
            //         icon: Icon(
            //           Icons.notifications,
            //           color: themeColorDark,
            //         ),
            //         onPressed: null),
            //     decoration: BoxDecoration(
            //         shape: BoxShape.circle, color: Color(0xFFF5F6F8)),
            //   ),
            // ],
            ),
      ),
    );
  }
}
