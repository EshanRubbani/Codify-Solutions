import 'dart:html';

import 'package:agency_landing_page/Library/Carousel/CarouselPro.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:agency_landing_page/Style/Style.dart';

class Content5T1 extends StatelessWidget {
  const Content5T1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopHeaderContent5();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopHeaderContent5();
        } else {
          return MobileHeaderContent5();
        }
      },
    );
  }
}

class DesktopHeaderContent5 extends StatelessWidget {
  final List<String> imgList = [
    "assets/image/imageHeader.jpg",
    "assets/image/imageHeader.jpg",
    "assets/image/imageHeader.jpg",
    "assets/image/imageHeader.jpg",
    "assets/image/imageHeader.jpg",
  ];

  Widget _testimoni(String image, desc, title, company) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 110.0,
          width: 110.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(150.0)),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 25.0,
        ),
        Container(
          width: 500.0,
          child: Text(
            desc,
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w400,
                color: Colors.black54,
                fontSize: 19.0),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 19.0),
        ),
        SizedBox(
          height: 9.0,
        ),
        Text(
          company,
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              color: Colors.black87,
              fontSize: 16.0),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 178.0, left: _width / 2 - 150),
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
              Padding(
                padding: EdgeInsets.only(top: 40.0, left: 550),
                child: Image.asset(
                  "assets/image/item4.png",
                  height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75.0),
                child: Container(
                  width: _width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "What do our client say \nabout us?",
                          style: TextStyle(
                              fontFamily: "Sofia",
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 39.0),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 80.0,
                        ),

                        Container(
                            height: 320.0,
                            width: double.infinity,
                            child: Carousel(
                              images: [
                                _testimoni(
                                    "assets/image/profile1.jpeg",
                                    "We help our clients make realize their most important business goals. We help our clients make realize their most important.",
                                    "JOHN DOE",
                                    "CEO, Clare Tech"),
                                _testimoni(
                                    "assets/image/profile2.jpeg",
                                    "Very great agency I highly recommend them because the work is beyond expectations and the application is very powerful.",
                                    "RICARD KYLE",
                                    "CEO, Malku Tech"),
                                _testimoni(
                                    "assets/image/profile3.jpg",
                                    "Excellent application workmanship, experience, design quality and excellent coding I really like this agency very great agency.",
                                    "ALEX RIN",
                                    "CEO, Wixa Company"),
                              ],
                              dotSize: 4.0,
                              dotIncreasedColor: colors.mainColor,
                              dotIncreaseSize: 2.0,
                              dotSpacing: 15.0,
                              dotColor: Colors.black38,
                              indicatorBgPadding: 5.0,
                              dotHorizontalPadding: 340.0,
                              dotBgColor: Colors.transparent,
                              borderRadius: true, radius: Radius.circular(0.0), 
                              overlayShadowColors: Colors.transparent, 
                              onImageTap: (int ) {  },
                               onImageChange: (int , ints ) {  },
                            )),

                        // CarouselSlider(
                        //   options: CarouselOptions(
                        //     height: 190,
                        //     pauseAutoPlayOnManualNavigate: true,
                        //     pauseAutoPlayInFiniteScroll: true,
                        //     aspectRatio: 24 / 18,
                        //     viewportFraction: 0.9,
                        //     initialPage: 0,
                        //     enableInfiniteScroll: true,
                        //     reverse: false,
                        //     pageSnapping: true,
                        //     autoPlay: true,
                        //     autoPlayInterval: Duration(seconds: 3),
                        //     autoPlayAnimationDuration:
                        //         Duration(milliseconds: 800),
                        //     autoPlayCurve: Curves.fastOutSlowIn,
                        //     enlargeCenterPage: true,
                        //     scrollDirection: Axis.horizontal,
                        //   ),
                        //   items: imgList.map((item) {
                        //     return Container(
                        //       width: MediaQuery.of(context).size.width,
                        //       margin: EdgeInsets.symmetric(
                        //           horizontal: 5.0, vertical: 4.0),
                        //       decoration: BoxDecoration(
                        //           boxShadow: [
                        //             BoxShadow(
                        //                 blurRadius: 9.0,
                        //                 spreadRadius: 7.0,
                        //                 color: Colors.black12.withOpacity(0.03))
                        //           ],
                        //           image: DecorationImage(
                        //               image: AssetImage(item),
                        //               fit: BoxFit.cover),
                        //           color: Color(0xFF23252E)),
                        //     );
                        //   }).toList(),
                        // ),
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

class MobileHeaderContent5 extends StatelessWidget {
  Widget _testimoni(String image, desc, title, company) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 90.0,
          width: 90.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(150.0)),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 25.0,
        ),
        Container(
          width: 500.0,
          child: Text(
            desc,
            style: TextStyle(
                fontFamily: "Sofia",
                fontWeight: FontWeight.w400,
                color: Colors.black54,
                fontSize: 17.0),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 17.0),
        ),
        SizedBox(
          height: 9.0,
        ),
        Text(
          company,
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              color: Colors.black87,
              fontSize: 14.0),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 178.0, left: _width / 2 - 150),
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
              Padding(
                padding: EdgeInsets.only(top: 40.0, left: 550),
                child: Image.asset(
                  "assets/image/item4.png",
                  height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(top: 90.0, left: 400),
              //   child: Image.asset(
              //     "assets/image/item4.png",
              //     height: MediaQuery.of(context).size.height - 175,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.only(top: 100.0, left: 600),
              //   child: Image.asset(
              //     "assets/image/item4.png",
              //     height: MediaQuery.of(context).size.height - 175,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 75.0),
                child: Container(
                  width: _width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "What do our client say \nabout us?",
                        style: TextStyle(
                            fontFamily: "Sofia",
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 28.0),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 80.0,
                      ),
                      Container(
                          height: 300.0,
                          width: double.infinity,
                          child: Carousel(
                            images: [
                              _testimoni(
                                  "assets/image/profile1.jpeg",
                                  "We help our clients make realize their most important business goals. We help our clients make realize their most important.",
                                  "JOHN DOE",
                                  "CEO, Clare Tech"),
                              _testimoni(
                                  "assets/image/profile2.jpeg",
                                  "Very great agency I highly recommend them because the work is beyond expectations and the application is very powerful.",
                                  "RICARD KYLE",
                                  "CEO, Malku Tech"),
                              _testimoni(
                                  "assets/image/profile3.jpeg",
                                  "Excellent application workmanship, experience, design quality and excellent coding I really like this agency very great agency.",
                                  "ALEX RIN",
                                  "CEO, Wixa Company"),
                            ],
                            dotSize: 4.0,
                            dotIncreasedColor: colors.mainColor,
                            dotIncreaseSize: 2.0,
                            dotSpacing: 15.0,
                            dotColor: Colors.black38,
                            indicatorBgPadding: 5.0,
                            dotHorizontalPadding: 340.0,
                            dotBgColor: Colors.transparent,
                            borderRadius: true,
                             radius: Radius.circular(0.0), 
                              overlayShadowColors: Colors.transparent, 
                              onImageTap: (int ) {  },
                               onImageChange: (int , ints ) {  },
                          )),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
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
