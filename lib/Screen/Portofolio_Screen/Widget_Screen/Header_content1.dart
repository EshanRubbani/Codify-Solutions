import 'dart:html';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

class HeaderContent1T4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent1T4();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent1T4();
        } else {
          return MobileHeaderContent1T4();
        }
      },
    );
  }
}

class DesktopHeaderContent1T4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: _width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/headerPortofolio.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 3.9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 800.0,
                      child: Text(
                        "Vision, discovery, creation, development. We bring great ideas to life.",
                        style: TextStyle(
                            wordSpacing: 0.0,
                            letterSpacing: 0.0,
                            fontFamily: "Sofia",
                            color: Colors.black87,
                            fontWeight: FontWeight.w900,
                            fontSize: 63.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Text(
                    "Here's a showcase of our recent projects.",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        color: Colors.black45,
                        fontWeight: FontWeight.w700,
                        fontSize: 27.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileHeaderContent1T4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: _width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/image/headerPortofolio.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 3.9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: _width / 1.2,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Text(
                          "Vision, discovery, creation, development. We bring great ideas to life.",
                          style: TextStyle(
                              wordSpacing: 0.0,
                              letterSpacing: 0.0,
                              fontFamily: "Sofia",
                              color: Colors.black87,
                              fontWeight: FontWeight.w900,
                              fontSize: 30.0),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Center(
                    child: Text(
                      "Here's a showcase of our recent projects.",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.black45,
                          fontWeight: FontWeight.w700,
                          fontSize: 22.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
