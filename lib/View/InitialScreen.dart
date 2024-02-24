import 'package:ettywinz/Authentication/LoginOrRegister.dart';
import 'package:ettywinz/config/config.dart';
import 'package:ettywinz/helper/_comFuncHelper.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  InitialScreen({Key? key}) : super(key: key);

  @override
  _InitialScreenState createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text("Initial screen"),
          ),
          Container(
            child: TextButton(
                // padding: EdgeInsets.only(right: 5, bottom: 10,left: 5),
                onPressed: () async {
                  storeToStorageBoolean('isNotTime', true);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LoginOrRegister()));
                },
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).copyWith().size.width / 1.8,
                  height: MediaQuery.of(context).copyWith().size.height / 29,
                  child: Text('Go',
                      style: Theme.of(context).textTheme.mediumButtonText),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: themeColorDark),
                )),
          )
        ],
      ),
    );
  }
}
