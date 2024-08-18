import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

List<double> factors = [0.25, 0.25, 0.25, 0.25];
double activeFactor = 0.28;
double inActiveFactor = 0.24;
bool pressed = false;

class Content4T1 extends StatelessWidget {
  const Content4T1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopContent4();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopContent4();
        } else {
          return MobileContent4();
        }
      },
    );
  }
}

class DesktopContent4 extends StatefulWidget {
  DesktopContent4({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _DesktopContent4State createState() => _DesktopContent4State();
}

class _DesktopContent4State extends State<DesktopContent4> {
  // _onClosedPressed() {
  //   setState(() {
  //     factors[0] = inActiveFactor;
  //     factors[1] = inActiveFactor;
  //     factors[2] = inActiveFactor;
  //     factors[3] = inActiveFactor;
  //     pressed = false;
  //   });
  //}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.0, left: 250.0),
            child: Image.asset("assets/image/item1.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Image.asset(
              "assets/image/item2.png",
              height: MediaQuery.of(context).size.height - 175,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100.0),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 0.0, left: 61.0, bottom: 20.0),
                child: Text(
                  "Project We Love",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 31.0),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCard(
                      'assets/image/foodie.jpg',
                      align: Alignment(0.2, 0.0),
                      number: '01',
                      heightCard: 700.0,
                      name: 'Foodie',
                      factor: factors[0],
                      subTitle:
                          'Foodie application is an application for users to order a restaurant and find out which restaurant is located. This application greatly facilitates mobility.',
                      onEnter: () {
                        setState(() {
                          if (pressed) {
                            factors[0] = 0.7;
                            factors[1] = 0.1;
                            factors[2] = 0.1;
                            factors[3] = 0.1;
                          } else {
                            factors[0] = activeFactor;
                            factors[1] = inActiveFactor;
                            factors[2] = inActiveFactor;
                            factors[3] = inActiveFactor;
                          }
                        });
                      },
                      onExit: () {
                        setState(() {
                          factors[0] = 0.25;
                          factors[1] = 0.25;
                          factors[2] = 0.25;
                          factors[3] = 0.25;
                        });
                      },
                      onPressed: () {
                        setState(() {
                          factors[0] = 0.7;
                          factors[1] = 0.1;
                          factors[2] = 0.1;
                          factors[3] = 0.1;
                          pressed = true;
                        });
                      },
                      onClosePressed: () {
                        setState(() {
                          factors[0] = inActiveFactor;
                          factors[1] = inActiveFactor;
                          factors[2] = inActiveFactor;
                          factors[3] = inActiveFactor;
                          pressed = false;
                        });
                      },
                    ),
                    CustomCard(
                      'assets/image/grocery.jpg',
                      align: Alignment(-0.1, 0.0),
                      number: '02',
                      name: 'Grocery',
                      heightCard: 700.0,
                      factor: factors[1],
                      subTitle:
                          'Grocery application is an application that makes it easy for users to buy basic necessities such as vegetables anywhere, anytime.',
                      onEnter: () {
                        setState(() {
                          if (pressed) {
                            factors[0] = 0.1;
                            factors[1] = 0.7;
                            factors[2] = 0.1;
                            factors[3] = 0.1;
                          } else {
                            factors[0] = inActiveFactor;
                            factors[1] = activeFactor;
                            factors[2] = inActiveFactor;
                            factors[3] = inActiveFactor;
                          }
                        });
                      },
                      onExit: () {
                        setState(() {
                          factors[0] = 0.25;
                          factors[1] = 0.25;
                          factors[2] = 0.25;
                          factors[3] = 0.25;
                        });
                      },
                      onPressed: () {
                        setState(() {
                          factors[0] = 0.1;
                          factors[1] = 0.7;
                          factors[2] = 0.1;
                          factors[3] = 0.1;
                          pressed = true;
                        });
                      },
                      onClosePressed: () {
                        setState(() {
                          factors[0] = inActiveFactor;
                          factors[1] = inActiveFactor;
                          factors[2] = inActiveFactor;
                          factors[3] = inActiveFactor;
                          pressed = false;
                        });
                      },
                    ),
                    CustomCard(
                      'assets/image/crypto.jpg',
                      align: Alignment(-0.1, 0.0),
                      number: '03',
                      name: 'Crypto',
                      heightCard: 700.0,
                      factor: factors[2],
                      subTitle:
                          'Crypto application is a blockchain application where users can easily view their invested portfolios in cryptocurency and buy bitcoin and sell bitcoin easily.',
                      onEnter: () {
                        setState(() {
                          if (pressed) {
                            factors[0] = 0.1;
                            factors[1] = 0.1;
                            factors[2] = 0.7;
                            factors[3] = 0.1;
                          } else {
                            factors[0] = inActiveFactor;
                            factors[1] = inActiveFactor;
                            factors[2] = activeFactor;
                            factors[3] = inActiveFactor;
                          }
                        });
                      },
                      onExit: () {
                        setState(() {
                          factors[0] = 0.25;
                          factors[1] = 0.25;
                          factors[2] = 0.25;
                          factors[3] = 0.25;
                        });
                      },
                      onPressed: () {
                        setState(() {
                          factors[0] = 0.1;
                          factors[1] = 0.1;
                          factors[2] = 0.7;
                          factors[3] = 0.1;
                          pressed = true;
                        });
                      },
                      onClosePressed: () {
                        setState(() {
                          factors[0] = inActiveFactor;
                          factors[1] = inActiveFactor;
                          factors[2] = inActiveFactor;
                          factors[3] = inActiveFactor;
                          pressed = false;
                        });
                      },
                    ),
                    CustomCard(
                      'assets/image/recipes.jpg',
                      align: Alignment(0.0, 0.0),
                      number: '04',
                      name: 'Recipes',
                      heightCard: 700.0,
                      factor: factors[3],
                      subTitle:
                          'Recipe application is a food recipe application where users can easily view the recipes provided easily and view video recipe videos easily and precisely.',
                      onEnter: () {
                        setState(() {
                          if (pressed) {
                            factors[0] = 0.1;
                            factors[1] = 0.1;
                            factors[2] = 0.1;
                            factors[3] = 0.7;
                          } else {
                            factors[0] = inActiveFactor;
                            factors[1] = inActiveFactor;
                            factors[2] = inActiveFactor;
                            factors[3] = activeFactor;
                          }
                        });
                      },
                      onExit: () {
                        setState(() {
                          factors[0] = 0.25;
                          factors[1] = 0.25;
                          factors[2] = 0.25;
                          factors[3] = 0.25;
                        });
                      },
                      onPressed: () {
                        setState(() {
                          factors[0] = 0.1;
                          factors[1] = 0.1;
                          factors[2] = 0.1;
                          factors[3] = 0.7;
                          pressed = true;
                        });
                      },
                      onClosePressed: () {
                        setState(() {
                          factors[0] = inActiveFactor;
                          factors[1] = inActiveFactor;
                          factors[2] = inActiveFactor;
                          factors[3] = inActiveFactor;
                          pressed = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileContent4 extends StatefulWidget {
  MobileContent4({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MobileContent4State createState() => _MobileContent4State();
}

class _MobileContent4State extends State<MobileContent4> {
  // _onClosedPressed() {
  //   setState(() {
  //     factors[0] = inActiveFactor;
  //     factors[1] = inActiveFactor;
  //     factors[2] = inActiveFactor;
  //     factors[3] = inActiveFactor;
  //     pressed = false;
  //   });
  //}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 0.0, left: 250.0),
            child: Image.asset("assets/image/item1.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0.0),
            child: Image.asset(
              "assets/image/item2.png",
              height: MediaQuery.of(context).size.height - 175,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 100.0),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 0.0, left: 61.0, bottom: 20.0),
                child: Text(
                  "Project We Love",
                  style: TextStyle(
                      fontFamily: "Sofia",
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 31.0),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCard(
                      'assets/image/foodie.jpg',
                      align: Alignment(0.2, 0.0),
                      number: '01',
                      name: 'Foodie',
                      heightCard: 450.0,
                      factor: factors[0],
                      subTitle:
                          'Foodie application is an application for users to order a restaurant and find out which restaurant is located. This application greatly facilitates mobility.',
                      onEnter: () {
                        setState(() {
                          if (pressed) {
                            factors[0] = 0.7;
                            factors[1] = 0.1;
                            factors[2] = 0.1;
                            factors[3] = 0.1;
                          } else {
                            factors[0] = activeFactor;
                            factors[1] = inActiveFactor;
                            factors[2] = inActiveFactor;
                            factors[3] = inActiveFactor;
                          }
                        });
                      },
                      onExit: () {
                        setState(() {
                          factors[0] = 0.25;
                          factors[1] = 0.25;
                          factors[2] = 0.25;
                          factors[3] = 0.25;
                        });
                      },
                      onPressed: () {
                        setState(() {
                          factors[0] = 0.7;
                          factors[1] = 0.1;
                          factors[2] = 0.1;
                          factors[3] = 0.1;
                          pressed = true;
                        });
                      },
                      onClosePressed: () {
                        setState(() {
                          factors[0] = inActiveFactor;
                          factors[1] = inActiveFactor;
                          factors[2] = inActiveFactor;
                          factors[3] = inActiveFactor;
                          pressed = false;
                        });
                      },
                    ),
                    CustomCard(
                      'assets/image/grocery.jpg',
                      align: Alignment(-0.1, 0.0),
                      number: '02',
                      name: 'Grocery',
                      heightCard: 450.0,
                      factor: factors[1],
                      subTitle:
                          'Grocery application is an application that makes it easy for users to buy basic necessities such as vegetables anywhere, anytime.',
                      onEnter: () {
                        setState(() {
                          if (pressed) {
                            factors[0] = 0.1;
                            factors[1] = 0.7;
                            factors[2] = 0.1;
                            factors[3] = 0.1;
                          } else {
                            factors[0] = inActiveFactor;
                            factors[1] = activeFactor;
                            factors[2] = inActiveFactor;
                            factors[3] = inActiveFactor;
                          }
                        });
                      },
                      onExit: () {
                        setState(() {
                          factors[0] = 0.25;
                          factors[1] = 0.25;
                          factors[2] = 0.25;
                          factors[3] = 0.25;
                        });
                      },
                      onPressed: () {
                        setState(() {
                          factors[0] = 0.1;
                          factors[1] = 0.7;
                          factors[2] = 0.1;
                          factors[3] = 0.1;
                          pressed = true;
                        });
                      },
                      onClosePressed: () {
                        setState(() {
                          factors[0] = inActiveFactor;
                          factors[1] = inActiveFactor;
                          factors[2] = inActiveFactor;
                          factors[3] = inActiveFactor;
                          pressed = false;
                        });
                      },
                    ),
                    CustomCard(
                      'assets/image/crypto.jpg',
                      align: Alignment(-0.1, 0.0),
                      number: '03',
                      heightCard: 450.0,
                      name: 'Crypto',
                      factor: factors[2],
                      subTitle:
                          'Crypto application is a blockchain application where users can easily view their invested portfolios in cryptocurency and buy bitcoin and sell bitcoin easily.',
                      onEnter: () {
                        setState(() {
                          if (pressed) {
                            factors[0] = 0.1;
                            factors[1] = 0.1;
                            factors[2] = 0.7;
                            factors[3] = 0.1;
                          } else {
                            factors[0] = inActiveFactor;
                            factors[1] = inActiveFactor;
                            factors[2] = activeFactor;
                            factors[3] = inActiveFactor;
                          }
                        });
                      },
                      onExit: () {
                        setState(() {
                          factors[0] = 0.25;
                          factors[1] = 0.25;
                          factors[2] = 0.25;
                          factors[3] = 0.25;
                        });
                      },
                      onPressed: () {
                        setState(() {
                          factors[0] = 0.1;
                          factors[1] = 0.1;
                          factors[2] = 0.7;
                          factors[3] = 0.1;
                          pressed = true;
                        });
                      },
                      onClosePressed: () {
                        setState(() {
                          factors[0] = inActiveFactor;
                          factors[1] = inActiveFactor;
                          factors[2] = inActiveFactor;
                          factors[3] = inActiveFactor;
                          pressed = false;
                        });
                      },
                    ),
                    CustomCard(
                      'assets/image/recipes.jpg',
                      align: Alignment(0.0, 0.0),
                      number: '04',
                      heightCard: 450.0,
                      name: 'Recipes',
                      factor: factors[3],
                      subTitle:
                          'Recipe application is a food recipe application where users can easily view the recipes provided easily and view video recipe videos easily and precisely.',
                      onEnter: () {
                        setState(() {
                          if (pressed) {
                            factors[0] = 0.1;
                            factors[1] = 0.1;
                            factors[2] = 0.1;
                            factors[3] = 0.7;
                          } else {
                            factors[0] = inActiveFactor;
                            factors[1] = inActiveFactor;
                            factors[2] = inActiveFactor;
                            factors[3] = activeFactor;
                          }
                        });
                      },
                      onExit: () {
                        setState(() {
                          factors[0] = 0.25;
                          factors[1] = 0.25;
                          factors[2] = 0.25;
                          factors[3] = 0.25;
                        });
                      },
                      onPressed: () {
                        setState(() {
                          factors[0] = 0.1;
                          factors[1] = 0.1;
                          factors[2] = 0.1;
                          factors[3] = 0.7;
                          pressed = true;
                        });
                      },
                      onClosePressed: () {
                        setState(() {
                          factors[0] = inActiveFactor;
                          factors[1] = inActiveFactor;
                          factors[2] = inActiveFactor;
                          factors[3] = inActiveFactor;
                          pressed = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatefulWidget {
  final String image;
  final Alignment? align;
  final String? number;
  final String? name;
  final double? factor;
  final Function? onEnter;
  final Function? onExit;
  final Function? onPressed;
  final Function? onClosePressed;
  final String? subTitle;
  final double? heightCard;
  CustomCard(
    this.image, {
    this.align,
    this.heightCard,
    this.number,
    this.name,
    this.factor,
    this.onEnter,
    this.onExit,
    this.onPressed,
    this.onClosePressed,
    this.subTitle,
  });

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  Color color = Colors.black12;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      onEnter: (value) {
        widget.onEnter!();
      },
      onExit: (value) {
        widget.onExit!();
      },
      child: GestureDetector(
        onTap: () {
          widget.onPressed!();
        },
        child: Stack(
          children: [
            AnimatedContainer(
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.white,
                  width: 0.2,
                ),
              ),
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    widget.factor == 0.25 || widget.factor == 0.24
                        ? color
                        : Colors.transparent,
                    widget.factor == 0.25 || widget.factor == 0.24
                        ? color
                        : Colors.transparent,
                    Colors.black,
                  ],
                ),
              ),
              curve: Curves.ease,
              duration: Duration(milliseconds: 275),
              height: widget.heightCard,
              width: (MediaQuery.of(context).size.width * widget.factor!),
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
                alignment: widget.align!,
              ),
            ),
            Positioned(
              left: 10.0,
              bottom: 10.0,
              child: AnimatedOpacity(
                opacity:
                    (widget.factor == 0.7 || widget.factor == 0.1) ? 0.0 : 1.0,
                duration: Duration(milliseconds: 200),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  height: (widget.factor == 0.7 || widget.factor == 0.1)
                      ? 0.0
                      : 40.0,
                  width: 80.0,
                  child: Text(
                    widget.number!,
                    style: TextStyle(
                      fontSize: 35.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: -40.0,
              bottom: 60.0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: 130.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height -
                          widget.name!.length * 5.0,
                      width: 1.5,
                      alignment: Alignment(0.0, -1.0),
                      child: AnimatedContainer(
                        curve: Curves.easeOut,
                        duration: Duration(milliseconds: 375),
                        height: (widget.factor == 0.28 ||
                                widget.factor == 0.1 ||
                                widget.factor == 0.7)
                            ? MediaQuery.of(context).size.height
                            : 0.0,
                        width: 3.5,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),

                    AnimatedOpacity(
                      duration: Duration(milliseconds: 450),
                      opacity: (widget.factor == 0.28 ||
                              widget.factor == 0.1 ||
                              widget.factor == 0.7)
                          ? 1.0
                          : 0.0,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 450),
                        height: (widget.factor == 0.28 ||
                                widget.factor == 0.1 ||
                                widget.factor == 0.7)
                            ? 30.0
                            : 0.0,
                        width: 120.0,
                        child: Transform.rotate(
                          angle: -pi / 2,
                          child: Text(
                            widget.name!,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Sofia",
                              fontSize: 16.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ), //SizedBox(height: 60.0),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              curve: Curves.easeOut,
              duration: Duration(milliseconds: 375),
              top: (widget.factor == 0.7)
                  ? MediaQuery.of(context).size.height * 0.35
                  : MediaQuery.of(context).size.height -
                      widget.name!.length * 7.0,
              right: 5.0,
              child: AnimatedOpacity(
                opacity: (widget.factor == 0.7) ? 1.0 : 0.0,
                duration: Duration(milliseconds: 200),
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: IconButton(
                      icon: Icon(Icons.play_arrow), onPressed: () {}),
                ),
              ),
            ),
            AnimatedPositioned(
              left: (widget.factor == 0.7) ? 0.0 : -300.0,
              duration: Duration(milliseconds: 475),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: 300.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black54,
                    Colors.transparent,
                  ]),
                ),
              ),
            ),
            AnimatedPositioned(
              left: (widget.factor == 0.7) ? 10.0 : -300.0,
              duration: Duration(milliseconds: 475),
              child: AnimatedOpacity(
                opacity: (widget.factor == 0.7) ? 1.0 : 0.0,
                duration: Duration(milliseconds: 475),
                child: Container(
                  height: 350.0,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50.0,
                        ),
                        Text(
                          widget.name!,
                          style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 40.0,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          widget.subTitle!,
                          style: TextStyle(
                            backgroundColor: Colors.black12,
                            fontFamily: "Sofia",
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 35.0,
              top: 0.0,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),
                height: widget.factor == 0.7 ? 30.0 : 0.0,
                width: widget.factor == 0.7 ? 50.0 : 0.0,
                child: IconButton(
                  icon: Icon(
                    Icons.close,
                    size: 40.0,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    widget.onClosePressed!();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
