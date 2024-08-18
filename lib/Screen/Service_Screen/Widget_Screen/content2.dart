import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

class Content2T3 extends StatefulWidget {
  Content2T3({Key? key}) : super(key: key);

  @override
  _Content2T3State createState() => _Content2T3State();
}

class _Content2T3State extends State<Content2T3> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopContent2T3();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopContent2T3();
        } else {
          return MobileContent2T3();
        }
      },
    );
  }
}

class DesktopContent2T3 extends StatelessWidget {
  Widget _card(String img, title, desc, BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: 170.0,
        width: _width / 4.38,
        decoration: BoxDecoration(
          color: colors.purpleDark,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                img,
                height: 25.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                title,
                style: TextStyle(
                    fontFamily: "Sofia",
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  desc,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white54,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Image.asset(
                            "assets/image/itemWhite4.png",
                            height: 12,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 34.0,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 30.0, bottom: 40.0),
                          child: Text(
                            "Services",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 42.0),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0, bottom: 70.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          _card(
                              "assets/image/design.png",
                              "Designing Application",
                              "We design your mobile and website",
                              context),
                          _card(
                              "assets/image/coding.png",
                              "Android Development",
                              "We create your android application with android studio",
                              context),
                        ],
                      ),
                      Column(
                        children: [
                          _card(
                              "assets/image/bug.png",
                              "Testing & QA",
                              "We can testing your mobile and website",
                              context),
                          _card(
                              "assets/image/ai.png",
                              "IOS Development",
                              "We create your IOS application with swift",
                              context),
                        ],
                      ),
                      Column(
                        children: [
                          _card("assets/image/design.png", "Web Development",
                              "We can create your website", context),
                          _card(
                              "assets/image/coding.png",
                              "Project Management",
                              "We can manage your mobile and website application",
                              context),
                        ],
                      ),
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

class MobileContent2T3 extends StatelessWidget {
  @override
  Widget _card(String img, title, desc, BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: 230.0,
        width: _width / 3,
        decoration: BoxDecoration(
          color: colors.purpleDark,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                img,
                height: 25.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  title,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  desc,
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.white54,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Image.asset(
                            "assets/image/itemWhite4.png",
                            height: 12,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 34.0,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 30.0, bottom: 40.0),
                          child: Text(
                            "Services",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 42.0),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0, bottom: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          _card(
                              "assets/image/design.png",
                              "Designing Application",
                              "We design your mobile and website",
                              context),
                          _card(
                              "assets/image/coding.png",
                              "Android Development",
                              "We create your android application with android studio",
                              context),
                        ],
                      ),
                      Column(
                        children: [
                          _card(
                              "assets/image/bug.png",
                              "Testing & QA",
                              "We can testing your mobile and website",
                              context),
                          _card(
                              "assets/image/ai.png",
                              "IOS Development",
                              "We create your IOS application with swift",
                              context),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      _card("assets/image/design.png", "Web Development",
                          "We can create your website", context),
                      _card(
                          "assets/image/coding.png",
                          "Project Management",
                          "We can manage your mobile and website application",
                          context),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
