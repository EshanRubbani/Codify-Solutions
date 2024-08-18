import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

class Content3T3 extends StatelessWidget {
  const Content3T3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent3();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent3();
        } else {
          return MobileHeaderContent3();
        }
      },
    );
  }
}

class DesktopHeaderContent3 extends StatelessWidget {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 1.4,
                          width: _width / 2.5,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/image/services.jpg"),
                                  fit: BoxFit.fill)),
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
                                Padding(
                                  padding: const EdgeInsets.only(right: 60.0),
                                  child: Container(
                                    width: _width / 2,
                                    child: Text(
                                      "Our Developer Team",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          color: Colors.black,
                                          letterSpacing: 1.2,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 44.0),
                                    ),
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

class MobileHeaderContent3 extends StatelessWidget {
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height / 1.4,
                          width: _width / 1.2,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/image/services.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Container(
                          width: _width / 1.2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 35.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 60.0),
                                  child: Container(
                                    width: _width / 1.3,
                                    child: Text(
                                      "Our Developer Team",
                                      style: TextStyle(
                                          fontFamily: "Sofia",
                                          color: Colors.black,
                                          letterSpacing: 1.2,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 44.0),
                                    ),
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
                                SizedBox(
                                  height: 35.0,
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
