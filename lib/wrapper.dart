import 'package:flutter/material.dart';
import 'package:infigon_futures_task/appbar.dart';
import 'package:infigon_futures_task/bottom_navbar.dart';
import 'package:infigon_futures_task/content.dart';

import 'data.dart';

class Wrapper extends StatelessWidget {

  late double height, width;

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Material(
          child: Stack(
            children: [
              Container(
                height: height,width: width,color: Colors.grey[400],
                padding: EdgeInsets.only(top: Data.appbarHeight,bottom: Data.navbarHeight),
                child: Content(),

              ),
              Align(
                alignment: Alignment.topCenter,
                  child: CustomAppbar()
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: BottomNavbar(),
              )
            ],
          )
      ),
    );
  }
}
