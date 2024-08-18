import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

import 'package:url_launcher/url_launcher.dart';

class Content3T1 extends StatelessWidget {
  const Content3T1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent1();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent1();
        } else {
          return MobileHeaderContent1();
        }
      },
    );
  }
}

_launchURL() async {
  final url = Uri.encodeFull('https://codecanyon.net/user/qubicletechagency');
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class DesktopHeaderContent1 extends StatelessWidget {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 450.0,
                    width: _width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/design.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 75,
                      width: _width / 2.2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Design solutions to improve products",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
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
                                    gradient: colors.primaryGradient,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 75,
                      width: _width / 2.2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Develop powerful apps for your business",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
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
                                    gradient: colors.primaryGradient,
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
                    height: 450.0,
                    width: _width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/develop.jpeg"),
                            fit: BoxFit.cover)),
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

class MobileHeaderContent1 extends StatelessWidget {
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
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/design.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      width: _width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Design solutions to improve products",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
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
                                    gradient: colors.primaryGradient,
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
                            ),
                            SizedBox(
                              height: 30.0,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                            bottomRight: Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/develop.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      width: _width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Develop powerful apps for your business",
                              style: TextStyle(
                                  fontFamily: "Sofia",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
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
                                    gradient: colors.primaryGradient,
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
                  SizedBox(
                    height: 50.0,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
