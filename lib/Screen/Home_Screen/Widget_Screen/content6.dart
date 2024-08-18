import 'dart:html';
import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

class Content6T1 extends StatefulWidget {
  Content6T1({Key? key}) : super(key: key);

  @override
  _Content6T1State createState() => _Content6T1State();
}

class _Content6T1State extends State<Content6T1> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopContent6();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopContent6();
        } else {
          return MobileContent6();
        }
      },
    );
  }
}

_launchURL() async {
  final url = Uri.encodeFull(
      'mailto:jipaudeveloper@gmail.com?subject=News&body=New plugin');
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

class DesktopContent6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        height: 400.0,
        color: Color(0xFF31295D),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 50.0),
              child: Image.asset("assets/image/itemWhite1.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 190.0, left: 550.0),
              child: Image.asset(
                "assets/image/itemWhite2.png",
                height: 65,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 525, left: 10),
              child: Image.asset(
                "assets/image/itemWhite3.png",
                //height: MediaQuery.of(context).size.height - 175,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "NEWSLETTER",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.white60,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset(
                        "assets/image/itemWhite4.png",
                        height: 12,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "Subscribe Company Newsletter",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 42.0),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Theme(
                          data: new ThemeData(
                            primaryColor: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: _width / 4,
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.white, width: 0.4),
                                  ),
                                  labelText: 'Your name',
                                  labelStyle: TextStyle(
                                      fontFamily: "Sofia",
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: Theme(
                          data: new ThemeData(
                            primaryColor: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              width: _width / 4,
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: new UnderlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.white, width: 0.4),
                                  ),
                                  labelText: 'Email',
                                  labelStyle: TextStyle(
                                      fontFamily: "Sofia",
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: InkWell(
                          onTap: () {
                            _launchURL();
                          },
                          child: Container(
                            height: 40.0,
                            width: 115.0,
                            decoration: BoxDecoration(
                                gradient: colors.primaryGradient,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            child: Center(
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    color: colors.white,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileContent6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        height: 500.0,
        color: Color(0xFF31295D),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 50.0),
              child: Image.asset("assets/image/itemWhite1.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 190.0, left: 550.0),
              child: Image.asset(
                "assets/image/itemWhite2.png",
                height: 65,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 525, left: 10),
              child: Image.asset(
                "assets/image/itemWhite3.png",
                //height: MediaQuery.of(context).size.height - 175,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "NEWSLETTER",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          color: Colors.white60,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.asset(
                        "assets/image/itemWhite4.png",
                        height: 12,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Center(
                      child: Text(
                        "Subscribe Company Newsletter",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 28.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Theme(
                        data: new ThemeData(
                          primaryColor: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: Container(
                            width: _width / 2,
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                      color: Colors.white, width: 0.4),
                                ),
                                labelText: 'Your name',
                                labelStyle: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Theme(
                        data: new ThemeData(
                          primaryColor: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 0.0),
                          child: Container(
                            width: _width / 2,
                            child: TextField(
                              decoration: InputDecoration(
                                enabledBorder: new UnderlineInputBorder(
                                  borderSide: new BorderSide(
                                      color: Colors.white, width: 0.4),
                                ),
                                labelText: 'Email',
                                labelStyle: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: InkWell(
                          onTap: () {
                            _launchURL();
                          },
                          child: Container(
                            height: 40.0,
                            width: 115.0,
                            decoration: BoxDecoration(
                                gradient: colors.primaryGradient,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            child: Center(
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    color: colors.white,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w600,
                                    fontSize: 13),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
