import 'dart:html';
import 'package:url_launcher/url_launcher.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

class HeaderContent1T2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1600) {
          return DesktopHeaderContent1T2();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1600) {
          return DesktopHeaderContent1T2();
        } else {
          return MobileHeaderContent1T2();
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

class DesktopHeaderContent1T2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 178.0, left: 20.0),
            child: Image.asset("assets/image/item1.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                "assets/image/circle.png",
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height - 175, left: 40),
            child: Image.asset(
              "assets/image/item3.png",
              //height: MediaQuery.of(context).size.height - 175,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 50),
            child: Image.asset(
              "assets/image/item4.png",
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 75,
                      width: _width / 2.2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              width: _width / 2,
                              child: Text(
                                "The Strategies of Our Business",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    color: Colors.black,
                                    letterSpacing: 1.2,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 44.0),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Container(
                                width: _width / 2,
                                child: Text(
                                  "Qubicle Tech Agency is an industry-leading mobile and software development agency.  Since 2016, our team of award-winning mobile strategists, UX/UI designers, and software engineers have delivered many mobile and digital solutions to the world’s leading enterprise and consumer-facing companies.",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.black38,
                                      fontFamily: "Sofia",
                                      fontWeight: FontWeight.w400),
                                ),
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
                                    color: colors.mainColor,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Center(
                                  child: Text(
                                    "GET IN TOUCH",
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
                  Padding(
                    padding: const EdgeInsets.only(left: 0.0, top: 0.0),
                    child: Container(
                      child: Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 78.0, left: 50.0),
                            child: Image.asset("assets/image/item1.png"),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height - 175,
                                left: 20),
                            child: Image.asset(
                              "assets/image/item3.png",
                              //height: MediaQuery.of(context).size.height - 175,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, top: 58.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height / 1.4,
                              width: _width / 3,
                              decoration: BoxDecoration(
                                  color: colors.mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0))),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 1.4,
                            width: _width / 3,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 12.0,
                                    spreadRadius: 4.0,
                                    color: Colors.black12,
                                  )
                                ],
                                image: DecorationImage(
                                    image: AssetImage("assets/image/team.jpeg"),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      height: 300.0,
                      width: _width - 300,
                      decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 1.8,
                          width: _width / 4,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 12.0,
                                  spreadRadius: 4.0,
                                  color: Colors.black12,
                                )
                              ],
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/image/strategy.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height - 75,
                          width: _width / 2.2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 5.0,
                                ),
                                Container(
                                  width: _width / 2,
                                  child: Text(
                                    "Who is part of Master Flow Our team of expert",
                                    style: TextStyle(
                                        fontFamily: "Sofia",
                                        color: Colors.black,
                                        letterSpacing: 1.2,
                                        fontWeight: FontWeight.w900,
                                        fontSize: 44.0),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: Container(
                                    width: 500.0,
                                    child: Text(
                                      "Design is not just what it looks like and feels like. Design is how it works. We always try to make a great output by this culture Steve Jobs.",
                                      style: TextStyle(
                                          fontSize: 19.0,
                                          color: Colors.black38,
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0),
                                  child: Container(
                                    width: 500.0,
                                    child: Text(
                                      "See below our three main plans for your business, for your startup and agency. It starts from here! You can teach yourself what you really like.",
                                      style: TextStyle(
                                          fontSize: 19.0,
                                          color: Colors.black38,
                                          fontFamily: "Sofia",
                                          fontWeight: FontWeight.w400),
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
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileHeaderContent1T2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28.0, left: 20.0),
            child: Image.asset("assets/image/item1.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                "assets/image/circle.png",
                height: 140,
                fit: BoxFit.cover,
              ),
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
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, top: 0.0),
                child: Container(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 78.0, left: 50.0),
                        child: Image.asset("assets/image/item1.png"),
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
                        padding: const EdgeInsets.only(left: 58.0, top: 58.0),
                        child: Center(
                          child: Container(
                            height: MediaQuery.of(context).size.height / 2,
                            width: _width / 1 - 200,
                            decoration: BoxDecoration(
                                color: colors.mainColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2,
                          width: _width / 1 - 200,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 12.0,
                                  spreadRadius: 4.0,
                                  color: Colors.black12,
                                )
                              ],
                              image: DecorationImage(
                                  image: AssetImage("assets/image/team.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: _width - 100,
                        child: Text(
                          "The Strategies of Our Business",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black,
                              letterSpacing: 1.2,
                              fontWeight: FontWeight.w900,
                              fontSize: 44.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          "Qubicle Tech Agency is an industry-leading mobile and software development agency.  Since 2016, our team of award-winning mobile strategists, UX/UI designers, and software engineers have delivered many mobile and digital solutions to the world’s leading enterprise and consumer-facing companies.",
                          style: TextStyle(
                              fontSize: 17.0,
                              color: Colors.black38,
                              fontFamily: "Sofia",
                              fontWeight: FontWeight.w400),
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
                              color: colors.mainColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          child: Center(
                            child: Text(
                              "GET IN TOUCH",
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
              SizedBox(
                height: 30.0,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      height: 300.0,
                      width: _width - 300,
                      decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 1.8,
                          width: _width - 200,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 12.0,
                                  spreadRadius: 4.0,
                                  color: Colors.black12,
                                )
                              ],
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/image/strategy.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 25.0,
                              ),
                              Container(
                                width: _width - 100,
                                child: Text(
                                  "Who is part of Master Flow Our team of expert",
                                  style: TextStyle(
                                      fontFamily: "Sofia",
                                      color: Colors.black,
                                      letterSpacing: 1.2,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 44.0),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: Container(
                                  width: _width - 100,
                                  child: Text(
                                    "Design is not just what it looks like and feels like. Design is how it works. We always try to make a great output by this culture Steve Jobs.",
                                    style: TextStyle(
                                        fontSize: 19.0,
                                        color: Colors.black38,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                child: Container(
                                  width: _width - 100,
                                  child: Text(
                                    "See below our three main plans for your business, for your startup and agency. It starts from here! You can teach yourself what you really like.",
                                    style: TextStyle(
                                        fontSize: 19.0,
                                        color: Colors.black38,
                                        fontFamily: "Sofia",
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
