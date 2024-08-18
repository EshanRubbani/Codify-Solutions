import 'package:agency_landing_page/Screen/NavBar_Website/navbar.dart';
import 'package:flutter/material.dart';

import 'Widget_Screen/Header_content1.dart';
import 'Widget_Screen/content2.dart';
import 'Widget_Screen/content3.dart';
import 'Widget_Screen/content4.dart';
import 'Widget_Screen/content5.dart';

class ServiceScreen extends StatefulWidget {
  ServiceScreen({Key? key}) : super(key: key);

  @override
  _ServiceScreenState createState() => _ServiceScreenState();
}

class _ServiceScreenState extends State<ServiceScreen> {
  ScrollController? _controller;
  double pixels = 0.0;
  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
    _controller!.addListener(() {
      setState(() {
        pixels = _controller!.position.pixels;
        print(pixels);
      });
    });
  }

  void scrollCallBack(DragUpdateDetails dragUpdate) {
    setState(() {
      // Note: 3.5 represents the theoretical height of all my scrollable content. This number will vary for you.
      _controller!.position.moveTo(dragUpdate.globalPosition.dy * 3.5);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: SingleChildScrollView(
              //Assign the controller to my scrollable widget
              controller: _controller,
              child: Column(
                children: <Widget>[
                  NavbarT1(),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: pixels >= 0 ? 1.0 : 0.0,
                    child: AnimatedPadding(
                      duration: Duration(milliseconds: 1000),
                      padding: EdgeInsets.only(left: pixels >= 0 ? 0.0 : 200),
                      child: HeaderContent1T3(),
                    ),
                  ),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: pixels >= 377 ? 1.0 : 0.0,
                    child: AnimatedPadding(
                      duration: Duration(milliseconds: 1000),
                      padding: EdgeInsets.only(left: pixels >= 377 ? 0.0 : 200),
                      child: Content2T3(),
                    ),
                  ),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: pixels >= 1000 ? 1.0 : 0.0,
                    child: AnimatedPadding(
                      duration: Duration(milliseconds: 1000),
                      padding:
                          EdgeInsets.only(left: pixels >= 1000 ? 0.0 : 200),
                      child: Content3T3(),
                    ),
                  ),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: pixels >= 2000 ? 1.0 : 0.0,
                    child: AnimatedPadding(
                      duration: Duration(milliseconds: 1000),
                      padding:
                          EdgeInsets.only(left: pixels >= 2000 ? 0.0 : 200),
                      child: Content4T3(),
                    ),
                  ),
                  Content5T3()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
