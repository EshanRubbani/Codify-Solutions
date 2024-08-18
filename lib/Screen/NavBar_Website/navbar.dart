import 'package:agency_landing_page/Screen/About_us/AboutUs_Screen.dart';
import 'package:agency_landing_page/Screen/ContactUS_Screen/ContactUs.dart';
import 'package:agency_landing_page/Screen/Home_Screen/Home_Screen.dart';
import 'package:agency_landing_page/Screen/Portofolio_Screen/Portofolio_Screen.dart';
import 'package:agency_landing_page/Screen/Service_Screen/Service_Screen.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

class NavbarT1 extends StatelessWidget {
  double collapsableHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbarT1();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbarT1();
        } else {
          return MobileNavbarT1();
        }
      },
    );
  }
}

class DesktopNavbarT1 extends StatefulWidget {
  DesktopNavbarT1({Key? key}) : super(key: key);

  @override
  _DesktopNavbarT1State createState() => _DesktopNavbarT1State();
}

class _DesktopNavbarT1State extends State<DesktopNavbarT1> {
  Color color = notSelected;
  FontWeight fontWeight = notSelectedFW;
  Color color2 = notSelected2;
  FontWeight fontWeight2 = notSelectedFW2;
  Color color3 = notSelected3;
  FontWeight fontWeight3 = notSelectedFW3;
  Color color4 = notSelected4;
  FontWeight fontWeight4 = notSelectedFW4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                Image.asset(
                  "assets/image/logo.png",
                  height: 25.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Qubicle Agency",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                      fontSize: 18),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new HomeScreenT1()));
                  },
                  child: MouseRegion(
                    onEnter: (value) {
                      setState(() {
                        color = selected;
                        fontWeight = selectedFW;
                      });
                    },
                    onExit: (value) {
                      setState(() {
                        color = notSelected;
                        fontWeight = notSelectedFW;
                      });
                    },
                    child: Text(
                      "Home",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: fontWeight,
                          color: color,
                          fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new AboutusScreenT2()));
                  },
                  child: MouseRegion(
                    onEnter: (value) {
                      setState(() {
                        color2 = selected2;
                        fontWeight2 = selectedFW2;
                      });
                    },
                    onExit: (value) {
                      setState(() {
                        color2 = notSelected2;
                        fontWeight2 = notSelectedFW2;
                      });
                    },
                    child: Text(
                      "About Us",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: fontWeight2,
                          color: color2,
                          fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                MouseRegion(
                  onEnter: (value) {
                    setState(() {
                      color3 = selected3;
                      fontWeight3 = selectedFW3;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      color3 = notSelected3;
                      fontWeight3 = notSelectedFW3;
                    });
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new ServiceScreen()));
                    },
                    child: Text(
                      "Services",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: fontWeight3,
                          color: color3,
                          fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                MouseRegion(
                  onEnter: (value) {
                    setState(() {
                      color4 = selected4;
                      fontWeight4 = selectedFW4;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      color4 = notSelected4;
                      fontWeight4 = notSelectedFW4;
                    });
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(PageRouteBuilder(
                          pageBuilder: (_, __, ___) => new PortofolioScreen()));
                    },
                    child: Text(
                      "Portfolio",
                      style: TextStyle(
                          fontFamily: "Sofia",
                          fontWeight: fontWeight4,
                          color: color4,
                          fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (_, __, ___) => new ContactUs()));
                  },
                  child: Container(
                    height: 35.0,
                    width: 115.0,
                    decoration: BoxDecoration(
                        border: Border.all(color: colors.mainColor, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Center(
                      child: Text(
                        "Contact us",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: FontWeight.w500,
                            color: colors.mainColor,
                            fontSize: 14),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavbarT1 extends StatefulWidget {
  MobileNavbarT1({Key? key}) : super(key: key);

  @override
  _MobileNavbarT1State createState() => _MobileNavbarT1State();
}

class _MobileNavbarT1State extends State<MobileNavbarT1> {
  @override
  Color color = notSelected;
  FontWeight fontWeight = notSelectedFW;
  Color color2 = notSelected2;
  FontWeight fontWeight2 = notSelectedFW2;
  Color color3 = notSelected3;
  FontWeight fontWeight3 = notSelectedFW3;
  Color color4 = notSelected4;
  FontWeight fontWeight4 = notSelectedFW4;
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        AnimatedContainer(
          margin: EdgeInsets.only(top: 79.0),
          duration: Duration(milliseconds: 375),
          curve: Curves.ease,
          height: (width < 800.0) ? collapsableHeight : 0.0,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                MouseRegion(
                  onEnter: (value) {
                    setState(() {
                      color = selected;
                      fontWeight = selectedFW;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      color = notSelected;
                      fontWeight = notSelectedFW;
                    });
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.white60,
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => new HomeScreenT1()));
                      },
                      child: Container(
                        height: 50.0,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 14.0),
                        child: Text(
                          "Home",
                          style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: fontWeight,
                            fontSize: 16.0,
                            color: color,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (value) {
                    setState(() {
                      color2 = selected2;
                      fontWeight2 = selectedFW2;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      color2 = notSelected2;
                      fontWeight2 = notSelectedFW2;
                    });
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.white60,
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (_, __, ___) =>
                                new AboutusScreenT2()));
                      },
                      child: Container(
                        height: 50.0,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 14.0),
                        child: Text(
                          "About Us",
                          style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: fontWeight2,
                            fontSize: 16.0,
                            color: color2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (value) {
                    setState(() {
                      color3 = selected3;
                      fontWeight3 = selectedFW3;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      color3 = notSelected3;
                      fontWeight3 = notSelectedFW3;
                    });
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.white60,
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (_, __, ___) => new ServiceScreen()));
                      },
                      child: Container(
                        height: 50.0,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 14.0),
                        child: Text(
                          "Services",
                          style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: fontWeight3,
                            fontSize: 16.0,
                            color: color3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (value) {
                    setState(() {
                      color4 = selected4;
                      fontWeight4 = selectedFW4;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      color4 = notSelected4;
                      fontWeight4 = notSelectedFW4;
                    });
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.white60,
                      onTap: () {
                        Navigator.of(context).push(PageRouteBuilder(
                            pageBuilder: (_, __, ___) =>
                                new PortofolioScreen()));
                      },
                      child: Container(
                        height: 50.0,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 14.0),
                        child: Text(
                          "Portfolio",
                          style: TextStyle(
                            fontFamily: "Sofia",
                            fontWeight: fontWeight4,
                            fontSize: 16.0,
                            color: color4,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          height: 80.0,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/image/logo.png",
                    height: 25.0,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Qubicle Agency",
                    style: TextStyle(
                        fontFamily: "Sofia",
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                        fontSize: 18),
                  ),
                ],
              ),
              LayoutBuilder(builder: (context, constraints) {
                if (width < 800.0) {
                  return NavBarButton(
                    onPressed: () {
                      if (collapsableHeight == 0.0) {
                        setState(() {
                          collapsableHeight = 240.0;
                        });
                      } else if (collapsableHeight == 240.0) {
                        setState(() {
                          collapsableHeight = 0.0;
                        });
                      }
                    },
                  );
                } else {
                  return Row(
                    children: navBarItems,
                  );
                }
              })
            ],
          ),
        ),
      ],
    );
  }
}

double collapsableHeight = 0.0;
Color selected = colors.mainColor;
Color selected2 = colors.mainColor;
Color selected3 = colors.mainColor;
Color selected4 = colors.mainColor;
Color notSelected = Colors.black45;
Color notSelected2 = Colors.black45;
Color notSelected3 = Colors.black45;
Color notSelected4 = Colors.black45;
FontWeight selectedFW = FontWeight.w800;
FontWeight selectedFW2 = FontWeight.w800;
FontWeight selectedFW3 = FontWeight.w800;
FontWeight selectedFW4 = FontWeight.w800;
FontWeight notSelectedFW = FontWeight.w600;
FontWeight notSelectedFW2 = FontWeight.w600;
FontWeight notSelectedFW3 = FontWeight.w600;
FontWeight notSelectedFW4 = FontWeight.w600;

List<Widget> navBarItems = [
  NavBarItem(
    text: 'Home',
  ),
  NavBarItem(
    text: 'About Us',
  ),
  NavBarItem(
    text: 'Services',
  ),
  NavBarItem(
    text: 'Portofolio',
  ),
  NavBarItem(
    text: 'Contact Us',
  ),
];

class NavBarItem extends StatefulWidget {
  final String? text;

  NavBarItem({
    this.text,
  });

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = notSelected;
  FontWeight fontWeight = notSelectedFW;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          color = selected;
          fontWeight = selectedFW;
        });
      },
      onExit: (value) {
        setState(() {
          color = notSelected;
          fontWeight = notSelectedFW;
        });
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {},
          child: Container(
            height: 50.0,
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: 14.0),
            child: Text(
              widget.text!,
              style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: fontWeight,
                fontSize: 16.0,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NavBarButton extends StatefulWidget {
  final Function? onPressed;

  NavBarButton({
    this.onPressed,
  });

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      width: 60.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xcfffffff),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Material(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {
            setState(() {
              widget.onPressed!();
            });
          },
          child: Icon(
            EvaIcons.moreVerticalOutline,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
