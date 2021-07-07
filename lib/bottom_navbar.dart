import 'package:flutter/material.dart';

import 'data.dart';

// ignore: use_key_in_widget_constructors
class BottomNavbar extends StatelessWidget {

  late double width;
  late Radius navbarCurveRadius;

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    navbarCurveRadius = const Radius.circular(25);

    return Material(
      child: Container(
        width: width, height: Data.navbarHeight,
        decoration: BoxDecoration(
          color: Colors.white,borderRadius: BorderRadius.only(topLeft: navbarCurveRadius,topRight: navbarCurveRadius),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.4),blurRadius: 7,spreadRadius: 1)],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
              NavbarElement("Home", Icons.home_outlined),
              NavbarElement("Explore", Icons.explore_outlined),
              NavbarElement("Admissions", Icons.event),
              NavbarElement("FAQ", Icons.announcement_outlined)
          ],
        ),
      ),
    );
  }
}


class NavbarElement extends StatelessWidget {

  final String title;
  final IconData icon;

  // ignore: use_key_in_widget_constructors
  const NavbarElement(this.title,this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon,size: title == "Home" ? 28 : 26,color: Colors.blue),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(title,style: const TextStyle(fontSize: 12,color: Colors.blue),),
        )
      ],
    );
  }
}





