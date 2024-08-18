import 'package:agency_landing_page/Screen/NavBar_Website/navbar.dart';
import 'package:flutter/material.dart';

import "Widget_Screen/content2.dart";
import 'Widget_Screen/Header_content1.dart';
import 'Widget_Screen/content3.dart';
import 'Widget_Screen/content4.dart';

class PortofolioScreen extends StatefulWidget {
  PortofolioScreen({Key? key}) : super(key: key);

  @override
  _PortofolioScreenState createState() => _PortofolioScreenState();
}

class _PortofolioScreenState extends State<PortofolioScreen> {
  ScrollController? _controller;
  double pixels = 0.0;
  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    _controller!.addListener(() {
      setState(() {
        pixels = _controller!.position.pixels;
        print(pixels);
      });
    });
    super.initState();
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
                  HeaderContent1T4(),
                  Content2T4(pixel: pixels),
                  AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: pixels >= 4700 ? 1.0 : 0.0,
                    child: AnimatedPadding(
                      duration: Duration(milliseconds: 1000),
                      padding:
                          EdgeInsets.only(left: pixels >= 4700 ? 0.0 : 100),
                      child: Content3T4(),
                    ),
                  ),
                  Content4T4(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
