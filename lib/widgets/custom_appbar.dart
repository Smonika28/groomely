import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey;
  CustomAppBar({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      centerTitle: true,
      title:
          Text("Groomely", style: TextStyle(fontSize: 20, color: Colors.black)),
    );
  }
}
