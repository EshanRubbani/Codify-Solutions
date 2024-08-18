import 'package:agency_landing_page/Screen/NavBar_Website/navbar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Widget_Screen/content3.dart';
import 'Widget_Screen/content4.dart';
import 'Widget_Screen/content5.dart';
import 'Widget_Screen/content6.dart';
import 'Widget_Screen/content7.dart';
import 'Widget_Screen/header_content1.dart';
import 'Widget_Screen/header_content2.dart';

class HomeScreenT1 extends StatefulWidget {
  HomeScreenT1({Key? key}) : super(key: key);

  @override
  _HomeScreenT1State createState() => _HomeScreenT1State();
}

class _HomeScreenT1State extends State<HomeScreenT1> {
  ScrollController? _controller;
  double pixels = 0.0;

  @override
  void initState() {
    // Initialize the scrollController
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

  _launchURL() async {
    final url = Uri.encodeFull(
        'mailto:jipaudeveloper@gmail.com?subject=News&body=New plugin');
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
            controller: _controller,
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return NavbarT1();
              } else if (index == 1) {
                return AnimatedOpacity(
                  duration: Duration(milliseconds: 1000),
                  opacity: pixels >= 0 ? 1.0 : 0.0,
                  child: AnimatedPadding(
                    duration: Duration(milliseconds: 1000),
                    padding: EdgeInsets.only(left: pixels >= 0 ? 0.0 : 100),
                    child: HeaderContent1(),
                  ),
                );
              } else if (index == 2) {
                return AnimatedOpacity(
                  opacity: pixels >= 400 ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 1000),
                  child: AnimatedPadding(
                    duration: Duration(milliseconds: 1000),
                    padding: EdgeInsets.only(left: pixels >= 400 ? 0.0 : 200),
                    child: HeaderContent2(),
                  ),
                );
              } else if (index == 3) {
                return AnimatedOpacity(
                  opacity: pixels >= 1400 ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 1200),
                  child: AnimatedPadding(
                    duration: Duration(milliseconds: 1000),
                    padding: EdgeInsets.only(top: pixels >= 1400 ? 0.0 : 200),
                    child: Content3T1(),
                  ),
                );
              } else if (index == 4) {
                return AnimatedAlign(
                  duration: Duration(milliseconds: 1000),
                  alignment: pixels >= 2600
                      ? Alignment(0.0, 1.0)
                      : Alignment(-0.2, 1.0),
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: pixels >= 2600 ? 1.0 : 0.0,
                    child: Content4T1(),
                  ),
                );
              } else if (index == 5) {
                return AnimatedPadding(
                  duration: Duration(milliseconds: 1000),
                  padding: EdgeInsets.only(left: pixels >= 3726 ? 0 : 2000),
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: pixels >= 3726 ? 1.0 : 0.0,
                    child: Content5T1(),
                  ),
                );
              } else if (index == 6) {
                return AnimatedAlign(
                  duration: Duration(milliseconds: 1000),
                  alignment: pixels >= 3726
                      ? Alignment(0.0, 1.0)
                      : Alignment(-0.2, 1.0),
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 1000),
                    opacity: pixels >= 3726 ? 1.0 : 0.0,
                    child: Content6T1(),
                  ),
                );
              } else if (index == 7) {
                return Content7T1();
              } else {
                return Container();
              }
            },
          ),
         
        ],
      ),
    );
  }
}
