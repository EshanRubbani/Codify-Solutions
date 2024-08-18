import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

class Content4T3 extends StatelessWidget {
  const Content4T3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent4();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent4();
        } else {
          return MobileHeaderContent4();
        }
      },
    );
  }
}

class DesktopHeaderContent4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFF31295D),
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 75.0, right: 20),
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
                                        "Thousands of successful projects over our 12+ year history",
                                        style: TextStyle(
                                            fontFamily: "Sofia",
                                            color: Colors.white,
                                            letterSpacing: 1.2,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 54.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 50.0, top: 10.0),
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 1.4,
                                  width: _width / 3,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/image/blob.png",
                                          ),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 120.0, right: 0.0),
                                child: Center(
                                  child: Image.asset(
                                    "assets/image/porto.png",
                                    height: 420.0,
                                  ),
                                ),
                              ),
                            ],
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
      ),
    );
  }
}

class MobileHeaderContent4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFF31295D),
        child: Stack(
          children: [
            Column(
              children: [
                Stack(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 50.0, top: 90.0),
                          child: Stack(
                            children: [
                              Center(
                                child: Container(
                                  width: _width / 3,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            "assets/image/blob.png",
                                          ),
                                          fit: BoxFit.fill)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, right: 0.0),
                                child: Center(
                                  child: Image.asset(
                                    "assets/image/porto.png",
                                    height: 420.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 20, top: 10.0),
                          child: Container(
                            width: _width / 1.2,
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
                                      width: _width / 1.2,
                                      child: Text(
                                        "Thousands of successful projects over our 12+ year history",
                                        style: TextStyle(
                                            fontFamily: "Sofia",
                                            color: Colors.white,
                                            letterSpacing: 1.2,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 35.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 100.0,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
