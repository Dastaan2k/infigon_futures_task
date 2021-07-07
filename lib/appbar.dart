import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data.dart';

// ignore: use_key_in_widget_constructors
class CustomAppbar extends StatelessWidget {

  late double width;
  late Radius appbarCurveRadius;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    appbarCurveRadius = const Radius.circular(25);

    return Material(
      child: Container(
        width: width, height: Data.appbarHeight,
        decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.only(bottomLeft: appbarCurveRadius,bottomRight: appbarCurveRadius),
        ),
        child: Stack(
          children: [
            SizedBox(
              width: width,height: Data.appbarHeight,
              child: const Center(child: Text("My Admissions",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.arrow_back_ios,size: 24,color: Colors.white,),
              )
            )
          ],
        ),
      ),
    );
  }
}
