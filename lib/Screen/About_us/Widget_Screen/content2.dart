import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

class Content2T2 extends StatelessWidget {
  const Content2T2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent2();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent2();
        } else {
          return MobileHeaderContent2();
        }
      },
    );
  }
}

class DesktopHeaderContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Container(
          color: Color(0xFFF7F8FD),
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
                      "assets/image/itemWhite1.png",
                      height: 275,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Image.asset(
                      "assets/image/circle.png",
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 550),
                    child: Image.asset(
                      "assets/image/itemWhite3.png",
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 120.0),
                          child: Text(
                            "Meet Our Expert",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.black,
                                letterSpacing: 1.4,
                                fontWeight: FontWeight.w900,
                                fontSize: 34.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Center(
                          child: Container(
                            width: _width / 2,
                            child: Text(
                              "We help our clients make realize their most important business goals. We help our clients make realize their most important business goals. business goals. We help our clients make realize their most important business.",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black38,
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/image/item3.png",
                    //height: MediaQuery.of(context).size.height - 175,
                    fit: BoxFit.cover,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: colors.mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(200.0))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(205.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12.0,
                                        spreadRadius: 4.0,
                                        color: Colors.black12,
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/profile1.png"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Jonathan Rauf",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Chief Executive Officer",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: colors.mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(200.0))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(205.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12.0,
                                        spreadRadius: 4.0,
                                        color: Colors.black12,
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/profile3.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Marc Stewart",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Full Stack Developer",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: colors.mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(200.0))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(205.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12.0,
                                        spreadRadius: 4.0,
                                        color: Colors.black12,
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/profile2.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Lissa Lennon",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Product Designer",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 90.0,
              ),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: colors.mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(200.0))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(205.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12.0,
                                        spreadRadius: 4.0,
                                        color: Colors.black12,
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/profile4.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Pedro Stals",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Front-End Developer",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: colors.mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(200.0))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(205.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12.0,
                                        spreadRadius: 4.0,
                                        color: Colors.black12,
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/profile5.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Sofia Smith",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "UX Designer",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  color: colors.mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(200.0))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(205.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12.0,
                                        spreadRadius: 4.0,
                                        color: Colors.black12,
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/profile6.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Mario Cotrane",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Back-End Developer",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 220,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MobileHeaderContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: Container(
          color: Color(0xFFF7F8FD),
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
                      "assets/image/itemWhite1.png",
                      height: 275,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: Image.asset(
                      "assets/image/circle.png",
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25, left: 550),
                    child: Image.asset(
                      "assets/image/itemWhite3.png",
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 120.0),
                          child: Text(
                            "Meet Our Expert",
                            style: TextStyle(
                                fontFamily: "Sofia",
                                color: Colors.black,
                                letterSpacing: 1.4,
                                fontWeight: FontWeight.w900,
                                fontSize: 34.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40.0),
                        child: Center(
                          child: Container(
                            width: _width / 1 - 200,
                            child: Text(
                              "We help our clients make realize their most important business goals. We help our clients make realize their most important business goals. business goals. We help our clients make realize their most important business.",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.black38,
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w500),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/image/item3.png",
                    //height: MediaQuery.of(context).size.height - 175,
                    fit: BoxFit.cover,
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: colors.mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(200.0))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(205.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12.0,
                                        spreadRadius: 4.0,
                                        color: Colors.black12,
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/profile1.png"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Jonathan Rauf",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Chief Executive Officer",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: colors.mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(200.0))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(205.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12.0,
                                        spreadRadius: 4.0,
                                        color: Colors.black12,
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/profile3.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Marc Stewart",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Full Stack Developer",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: colors.mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(200.0))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(205.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12.0,
                                        spreadRadius: 4.0,
                                        color: Colors.black12,
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/profile2.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Lissa Lennon",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Product Designer",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: colors.mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(200.0))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(205.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12.0,
                                        spreadRadius: 4.0,
                                        color: Colors.black12,
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/profile4.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Pedro Stals",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Front-End Developer",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: colors.mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(200.0))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(205.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12.0,
                                        spreadRadius: 4.0,
                                        color: Colors.black12,
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/profile5.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Sofia Smith",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "UX Designer",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, top: 10.0),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: colors.mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(200.0))),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(205.0),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 12.0,
                                        spreadRadius: 4.0,
                                        color: Colors.black12,
                                      )
                                    ],
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/image/profile6.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 25.0,
                              ),
                              Text(
                                "Mario Cotrane",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20.0),
                              ),
                              Text(
                                "Back-End Developer",
                                style: TextStyle(
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 220,
              )
            ],
          ),
        ),
      ),
    );
  }
}
