import 'dart:html';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

class Content2T4 extends StatelessWidget {
  Content2T4({this.pixel});
  double? pixel;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent2(pixel: pixel);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent2(pixel: pixel);
        } else {
          return MobileHeaderContent2();
        }
      },
    );
  }
}

_launchURL() async {
  final url =
      Uri.encodeFull('https://codecanyon.net/user/qubicletechagency/portfolio');
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class DesktopHeaderContent2 extends StatelessWidget {
  DesktopHeaderContent2({this.pixel});
  double? pixel;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 178.0, left: 250.0),
                child: Image.asset("assets/image/item1.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset(
                  "assets/image/item2.png",
                  height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height - 175, left: 450),
                child: Image.asset(
                  "assets/image/item3.png",
                  //height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 550),
                child: Image.asset(
                  "assets/image/item4.png",
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 150.0),
                  child: Text(
                    "Here's a show case of our recent projects",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w900,
                        fontSize: 50.0),
                  ),
                ),
              ),
              AnimatedOpacity(
                duration: Duration(milliseconds: 1000),
                opacity: pixel! >= 810 ? 1.0 : 0.0,
                child: AnimatedPadding(
                  duration: Duration(milliseconds: 1000),
                  padding: EdgeInsets.only(left: pixel! >= 810 ? 0.0 : 100),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 240.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 580.0,
                          width: _width / 2.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0)),
                              image: DecorationImage(
                                  image: AssetImage("assets/image/porto1.png"),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: Container(
                            width: _width / 2.2,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 35.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "FlyHigh Booking",
                                    style: TextStyle(
                                        fontFamily: "Sofia",
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 42.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20.0),
                                    child: Text(
                                      "We help our clients make realize their most important business goals. We help our clients make realize their most important business goals. business goals. We help our clients make realize their most important business.",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black38,
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      _launchURL();
                                    },
                                    child: Container(
                                      height: 40.0,
                                      width: 155.0,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color(0xFFD7B57C),
                                            Color(0xFFB3794C),
                                          ]),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0))),
                                      child: Center(
                                        child: Text(
                                          "KNOW MORE",
                                          style: TextStyle(
                                              color: colors.white,
                                              fontFamily: "Sofia",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          AnimatedOpacity(
              duration: Duration(milliseconds: 1000),
              opacity: pixel! >= 1500 ? 1.0 : 0.0,
              child: AnimatedPadding(
                  duration: Duration(milliseconds: 1000),
                  padding: EdgeInsets.only(left: pixel! >= 1500 ? 0.0 : 100),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Image.asset(
                          "assets/image/item2.png",
                          height: MediaQuery.of(context).size.height - 175,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height - 175,
                            left: 450),
                        child: Image.asset(
                          "assets/image/item3.png",
                          //height: MediaQuery.of(context).size.height - 175,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25, left: 550),
                        child: Image.asset(
                          "assets/image/item4.png",
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 55.0, top: 60.0),
                              child: Container(
                                width: _width / 2.2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5.0, right: 35.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "Trevatel Hotel",
                                        style: TextStyle(
                                            fontFamily: "Sofia",
                                            color: Colors.black,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 42.0),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20.0),
                                        child: Text(
                                          "We help our clients make realize their most important business goals. We help our clients make realize their most important business goals. business goals. We help our clients make realize their most important business.",
                                          style: TextStyle(
                                              fontSize: 18.0,
                                              color: Colors.black38,
                                              fontFamily: "Sofia",
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 30.0,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          _launchURL();
                                        },
                                        child: Container(
                                          height: 40.0,
                                          width: 155.0,
                                          decoration: BoxDecoration(
                                              gradient: LinearGradient(colors: [
                                                Color(0xFF9DBBC8),
                                                Color(0xFFE5EAED),
                                              ]),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.0))),
                                          child: Center(
                                            child: Text(
                                              "KNOW MORE",
                                              style: TextStyle(
                                                  color: colors.white,
                                                  fontFamily: "Sofia",
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 580.0,
                              width: _width / 2.2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0)),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/image/porto2.png"),
                                      fit: BoxFit.fill)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))),
          AnimatedOpacity(
              duration: Duration(milliseconds: 1000),
              opacity: pixel! >= 2200 ? 1.0 : 0.0,
              child: AnimatedPadding(
                duration: Duration(milliseconds: 1000),
                padding: EdgeInsets.only(left: pixel! >= 2200 ? 0.0 : 100),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 178.0, left: 250.0),
                      child: Image.asset("assets/image/item1.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Image.asset(
                        "assets/image/item2.png",
                        height: MediaQuery.of(context).size.height - 175,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height - 175,
                          left: 450),
                      child: Image.asset(
                        "assets/image/item3.png",
                        //height: MediaQuery.of(context).size.height - 175,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25, left: 550),
                      child: Image.asset(
                        "assets/image/item4.png",
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 580.0,
                          width: _width / 2.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0)),
                              image: DecorationImage(
                                  image: AssetImage("assets/image/porto3.png"),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: Container(
                            width: _width / 2.2,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 35.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "Treva Shop",
                                    style: TextStyle(
                                        fontFamily: "Sofia",
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 42.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20.0),
                                    child: Text(
                                      "We help our clients make realize their most important business goals. We help our clients make realize their most important business goals. business goals. We help our clients make realize their most important business.",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black38,
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      _launchURL();
                                    },
                                    child: Container(
                                      height: 40.0,
                                      width: 155.0,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Colors.brown,
                                            Color(0xFFF5EFE9),
                                          ]),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0))),
                                      child: Center(
                                        child: Text(
                                          "KNOW MORE",
                                          style: TextStyle(
                                              color: colors.white,
                                              fontFamily: "Sofia",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          AnimatedOpacity(
              duration: Duration(milliseconds: 1000),
              opacity: pixel! >= 3100 ? 1.0 : 0.0,
              child: AnimatedPadding(
                  duration: Duration(milliseconds: 1000),
                  padding: EdgeInsets.only(left: pixel! >= 3100 ? 0.0 : 100),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 0.0),
                        child: Image.asset(
                          "assets/image/item2.png",
                          height: MediaQuery.of(context).size.height - 175,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height - 175,
                            left: 450),
                        child: Image.asset(
                          "assets/image/item3.png",
                          //height: MediaQuery.of(context).size.height - 175,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25, left: 550),
                        child: Image.asset(
                          "assets/image/item4.png",
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 55.0),
                            child: Container(
                              width: _width / 2.2,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 5.0, right: 35.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      "Podcorn Loxibel",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          color: Colors.black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 42.0),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20.0),
                                      child: Text(
                                        "We help our clients make realize their most important business goals. We help our clients make realize their most important business goals. business goals. We help our clients make realize their most important business.",
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            color: Colors.black38,
                                            fontFamily: "Sofia",
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.0,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        _launchURL();
                                      },
                                      child: Container(
                                        height: 40.0,
                                        width: 155.0,
                                        decoration: BoxDecoration(
                                            gradient: LinearGradient(colors: [
                                              Color(0xFF1F2C63),
                                              Color(0xFF6FB1E3),
                                            ]),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(20.0))),
                                        child: Center(
                                          child: Text(
                                            "KNOW MORE",
                                            style: TextStyle(
                                                color: colors.white,
                                                fontFamily: "Sofia",
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 580.0,
                            width: _width / 2.2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20.0),
                                    bottomRight: Radius.circular(20.0)),
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/image/porto4.png"),
                                    fit: BoxFit.fill)),
                          ),
                        ],
                      ),
                    ],
                  ))),
          AnimatedOpacity(
              duration: Duration(milliseconds: 1000),
              opacity: pixel! >= 4100 ? 1.0 : 0.0,
              child: AnimatedPadding(
                duration: Duration(milliseconds: 1000),
                padding: EdgeInsets.only(left: pixel! >= 4100 ? 0.0 : 100),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 178.0, left: 250.0),
                      child: Image.asset("assets/image/item1.png"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: Image.asset(
                        "assets/image/item2.png",
                        height: MediaQuery.of(context).size.height - 175,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height - 175,
                          left: 450),
                      child: Image.asset(
                        "assets/image/item3.png",
                        //height: MediaQuery.of(context).size.height - 175,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25, left: 550),
                      child: Image.asset(
                        "assets/image/item4.png",
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 580.0,
                          width: _width / 2.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0)),
                              image: DecorationImage(
                                  image: AssetImage("assets/image/porto5.png"),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55.0),
                          child: Container(
                            height: MediaQuery.of(context).size.height - 75,
                            width: _width / 2.2,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 5.0, right: 35.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "GreenDot Wokse",
                                    style: TextStyle(
                                        fontFamily: "Sofia",
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 42.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20.0),
                                    child: Text(
                                      "We help our clients make realize their most important business goals. We help our clients make realize their most important business goals. business goals. We help our clients make realize their most important business.",
                                      style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.black38,
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      _launchURL();
                                    },
                                    child: Container(
                                      height: 40.0,
                                      width: 155.0,
                                      decoration: BoxDecoration(
                                          gradient: LinearGradient(colors: [
                                            Color(0xFF7AB77E),
                                            Color(0xFFBEEBC6),
                                          ]),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20.0))),
                                      child: Center(
                                        child: Text(
                                          "KNOW MORE",
                                          style: TextStyle(
                                              color: colors.white,
                                              fontFamily: "Sofia",
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class MobileHeaderContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 178.0, left: 250.0),
                child: Image.asset("assets/image/item1.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset(
                  "assets/image/item2.png",
                  height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height - 175, left: 450),
                child: Image.asset(
                  "assets/image/item3.png",
                  //height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 550),
                child: Image.asset(
                  "assets/image/item4.png",
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Container(
                    width: _width / 1.3,
                    child: Text(
                      "Here's a show case of our recent projects",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: FontWeight.w900,
                          fontSize: 40.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 290.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        height: 450.0,
                        width: _width / 1.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0)),
                            image: DecorationImage(
                                image: AssetImage("assets/image/porto1.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55.0),
                      child: Center(
                        child: Container(
                          width: _width / 1.2,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 35.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "FlyHigh Booking",
                                  style: TextStyle(
                                      fontFamily: "Sofia",
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 32.0),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: Text(
                                    "We help our clients make realize their most important business goals. We help our clients make realize their most important business goals. business goals. We help our clients make realize their most important business.",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.black38,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                InkWell(
                                  onTap: () {
                                    _launchURL();
                                  },
                                  child: Container(
                                    height: 40.0,
                                    width: 155.0,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: [
                                          Color(0xFFD7B57C),
                                          Color(0xFFB3794C),
                                        ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0))),
                                    child: Center(
                                      child: Text(
                                        "KNOW MORE",
                                        style: TextStyle(
                                            color: colors.white,
                                            fontFamily: "Sofia",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Image.asset(
                  "assets/image/item2.png",
                  height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height - 175, left: 450),
                child: Image.asset(
                  "assets/image/item3.png",
                  //height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 550),
                child: Image.asset(
                  "assets/image/item4.png",
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0, top: 60.0),
                    child: Center(
                      child: Container(
                        width: _width / 1.2,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 5.0, right: 35.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 450.0,
                                width: _width / 1.2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/porto2.png"),
                                        fit: BoxFit.fill)),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Trevatel Hotel",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 32.0),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: Text(
                                  "We help our clients make realize their most important business goals. We help our clients make realize their most important business goals. business goals. We help our clients make realize their most important business.",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black38,
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              InkWell(
                                onTap: () {
                                  _launchURL();
                                },
                                child: Container(
                                  height: 40.0,
                                  width: 155.0,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color(0xFF9DBBC8),
                                        Color(0xFFE5EAED),
                                      ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  child: Center(
                                    child: Text(
                                      "KNOW MORE",
                                      style: TextStyle(
                                          color: colors.white,
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 178.0, left: 250.0),
                child: Image.asset("assets/image/item1.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset(
                  "assets/image/item2.png",
                  height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height - 175, left: 450),
                child: Image.asset(
                  "assets/image/item3.png",
                  //height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 550),
                child: Image.asset(
                  "assets/image/item4.png",
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150.0,
                  ),
                  Container(
                    height: 450.0,
                    width: _width / 1.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage("assets/image/porto3.png"),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0, top: 40.0),
                    child: Center(
                      child: Container(
                        width: _width / 1.2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Treva Shop",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 32.0),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: Text(
                                  "We help our clients make realize their most important business goals. We help our clients make realize their most important business goals. business goals. We help our clients make realize their most important business.",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black38,
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              InkWell(
                                onTap: () {
                                  _launchURL();
                                },
                                child: Container(
                                  height: 40.0,
                                  width: 155.0,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Colors.brown,
                                        Color(0xFFF5EFE9),
                                      ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  child: Center(
                                    child: Text(
                                      "KNOW MORE",
                                      style: TextStyle(
                                          color: colors.white,
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Image.asset(
                  "assets/image/item2.png",
                  height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height - 175, left: 450),
                child: Image.asset(
                  "assets/image/item3.png",
                  //height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 550),
                child: Image.asset(
                  "assets/image/item4.png",
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0, top: 60.0),
                    child: Center(
                      child: Container(
                        width: _width / 1.3,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: 450.0,
                                width: _width / 1.2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0)),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/porto4.png"),
                                        fit: BoxFit.fill)),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Podcorn Loxibel",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 32.0),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: Text(
                                  "We help our clients make realize their most important business goals. We help our clients make realize their most important business goals. business goals. We help our clients make realize their most important business.",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black38,
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              InkWell(
                                onTap: () {
                                  _launchURL();
                                },
                                child: Container(
                                  height: 40.0,
                                  width: 155.0,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color(0xFF1F2C63),
                                        Color(0xFF6FB1E3),
                                      ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  child: Center(
                                    child: Text(
                                      "KNOW MORE",
                                      style: TextStyle(
                                          color: colors.white,
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 178.0, left: 250.0),
                child: Image.asset("assets/image/item1.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset(
                  "assets/image/item2.png",
                  height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height - 175, left: 450),
                child: Image.asset(
                  "assets/image/item3.png",
                  //height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 550),
                child: Image.asset(
                  "assets/image/item4.png",
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 80.0,
                  ),
                  Container(
                    height: 450.0,
                    width: _width / 1.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                        image: DecorationImage(
                            image: AssetImage("assets/image/porto5.png"),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0),
                    child: Center(
                      child: Container(
                        width: _width / 1.2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "GreenDot Wokse",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 32.0),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: Text(
                                  "We help our clients make realize their most important business goals. We help our clients make realize their most important business goals. business goals. We help our clients make realize their most important business.",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black38,
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              InkWell(
                                onTap: () {
                                  _launchURL();
                                },
                                child: Container(
                                  height: 40.0,
                                  width: 155.0,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Color(0xFF7AB77E),
                                        Color(0xFFBEEBC6),
                                      ]),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0))),
                                  child: Center(
                                    child: Text(
                                      "KNOW MORE",
                                      style: TextStyle(
                                          color: colors.white,
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 200.0,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
