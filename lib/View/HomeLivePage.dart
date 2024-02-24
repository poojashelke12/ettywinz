import 'package:ettywinz/Common/MyAppBar.dart';
import 'package:flutter/material.dart';

class HomeLivePage extends StatefulWidget {
  HomeLivePage({Key? key}) : super(key: key);

  @override
  _HomeLivePageState createState() => _HomeLivePageState();
}

class _HomeLivePageState extends State<HomeLivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: '',
      ),
    );
  }
}
