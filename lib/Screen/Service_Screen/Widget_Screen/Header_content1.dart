import 'dart:html';

import 'package:url_launcher/url_launcher.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

class HeaderContent1T3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent1T3();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent1T3();
        } else {
          return MobileHeaderContent1T3();
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

class DesktopHeaderContent1T3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 178.0, left: 50.0),
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
              Padding(
                padding: const EdgeInsets.only(left: 55.0),
                child: Container(
                  height: MediaQuery.of(context).size.height - 75,
                  width: _width / 2.2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Our Service",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black26,
                              fontWeight: FontWeight.w500,
                              fontSize: 19.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "All Kinds of Service Technology Software",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 42.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            "We have taken each and every project handed over to us as a challenge, which has helped us achieve a high project success rate.",
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            child: Center(
                              child: Text(
                                "GET STARTED",
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
                height: MediaQuery.of(context).size.height - 75,
                width: _width / 2.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/image/serviceImage.jpg"),
                        fit: BoxFit.cover)),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MobileHeaderContent1T3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 178.0, left: 50.0),
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
              Padding(
                padding: const EdgeInsets.only(left: 55.0),
                child: Container(
                  width: _width / 1.3,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 600,
                          width: _width / 1.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/image/serviceImage.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        Text(
                          "Our Service",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black26,
                              fontWeight: FontWeight.w500,
                              fontSize: 19.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "All Kinds of Service Technology Software",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 42.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Text(
                            "We have taken each and every project handed over to us as a challenge, which has helped us achieve a high project success rate.",
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            child: Center(
                              child: Text(
                                "GET STARTED",
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
                          height: 80.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
