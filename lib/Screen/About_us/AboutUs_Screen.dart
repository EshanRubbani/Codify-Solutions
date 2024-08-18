import 'package:agency_landing_page/Screen/NavBar_Website/navbar.dart';
import 'package:flutter/material.dart';

import 'Widget_Screen/content2.dart';
import 'Widget_Screen/content3.dart';
import 'Widget_Screen/content4.dart';
import 'Widget_Screen/header_content1.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutusScreenT2 extends StatefulWidget {
  AboutusScreenT2({Key? key}) : super(key: key);

  @override
  _AboutusScreenT2State createState() => _AboutusScreenT2State();
}

class _AboutusScreenT2State extends State<AboutusScreenT2> {
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
                      child: HeaderContent1T2(),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: pixels >= 1400 ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 1000),
                    child: AnimatedPadding(
                      duration: Duration(milliseconds: 1000),
                      padding:
                          EdgeInsets.only(left: pixels >= 1400 ? 0.0 : 200),
                      child: Content2T2(),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: pixels >= 2300 ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 1200),
                    child: AnimatedPadding(
                      duration: Duration(milliseconds: 1000),
                      padding: EdgeInsets.only(top: pixels >= 2300 ? 0.0 : 200),
                      child: Content3T2(),
                    ),
                  ),
                  Content4T2()
                ],
              ),
            ),
          ), ],
      ),
    );
  }
}
