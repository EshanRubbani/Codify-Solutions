import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

class SwitcherSide extends StatefulWidget {
  const SwitcherSide({
    Key? key,
    Animation<double>? animation,
    this.containerWidth,
    this.welcomeText,
    AnimationController? controller,
    this.width,
    this.alignText,
  })  : _animation = animation,
        _controller = controller,
        super(key: key);

  final Animation<double>? _animation;
  final double? containerWidth;
  final double? welcomeText;
  final AnimationController? _controller;
  final double? width;
  final double? alignText;

  @override
  _SwitcherSideState createState() => _SwitcherSideState();
}

class _SwitcherSideState extends State<SwitcherSide> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(widget._animation!.value, 0.0),
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.42 + widget.containerWidth!,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/contactus.png'),
            fit: BoxFit.cover,
            alignment: Alignment(widget._animation!.value, 0.0),
          ),
        ),
        clipBehavior: Clip.hardEdge,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment(widget.welcomeText!, -0.35),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 50.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 70.0),
                              child: Text(
                                widget._animation!.value > 0.0
                                    ? 'Contact Information Website'
                                    : 'Contact Information Mobile',
                                style: TextStyle(
                                  fontSize: 38.0,
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 40.0,
                            ),
                            Text(
                              widget._animation!.value > 0.0
                                  ? 'Fill up the form and our Team will get back to you within 24 hours.'
                                  : 'Fill up the form and our Team will get back to you within 24 hours.',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  fontSize: 19.0,
                                  color: Colors.white60,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Sofia"),
                            ),
                            SizedBox(
                              height: 80.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.phone,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  widget._animation!.value > 0.0
                                      ? "+1 421 452 533"
                                      : "+1 543 654 564",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Sofia"),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 35.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  widget._animation!.value > 0.0
                                      ? "hello@qubicletechagency.com"
                                      : "hello@qubicletechagency.com",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Sofia"),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 35.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.pin_drop,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  widget._animation!.value > 0.0
                                      ? "102 Street 2714 Don "
                                      : "102 Street 2714 Don ",
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Sofia"),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.only(left: 45.0, top: 170.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (widget._controller!.isCompleted) {
                        widget._controller!.reverse();
                      } else {
                        widget._controller!.forward();
                      }
                    });
                  },
                  child: Container(
                    height: 40.0,
                    width: 205.0,
                    decoration: BoxDecoration(
                        gradient: colors.primaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Center(
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment(widget.alignText!, 0.0),
                            child: Opacity(
                              opacity: (widget._animation!.value < 0.0)
                                  ? widget._animation!.value.abs()
                                  : 0.0,
                              child: Text(
                                ' Go to Mobile Project',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: "Sofia",
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(widget.alignText!, 0.0),
                            child: Opacity(
                              opacity: (widget._animation!.value > 0.0)
                                  ? widget._animation!.value.abs()
                                  : 0.0,
                              child: Text(
                                'Go to Website Project',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: "Sofia",
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              // FlatButton(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(30.0),
              //   ),
              //   padding: EdgeInsets.all(0.0),
              //   onPressed: () {
              //     setState(() {
              //       if (widget._controller.isCompleted) {
              //         widget._controller.reverse();
              //       } else {
              //         widget._controller.forward();
              //       }
              //     });
              //   },
              //   child: Container(
              //     height: 60.0,
              //     width: widget.width,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(30.0),
              //       border: Border.all(color: Colors.white, width: 2.0),
              //     ),
              //     child: Center(
              //       child: Stack(
              //         children: [
              //           Align(
              //             alignment: Alignment(widget.alignText, 0.0),
              //             child: Opacity(
              //               opacity: (widget._animation.value < 0.0)
              //                   ? widget._animation.value.abs()
              //                   : 0.0,
              //               child: Text(
              //                 'Qubicle Tech Agency',
              //                 style: TextStyle(
              //                   fontSize: 17.0,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ),
              //           ),
              //           Align(
              //             alignment: Alignment(widget.alignText, 0.0),
              //             child: Opacity(
              //               opacity: (widget._animation.value > 0.0)
              //                   ? widget._animation.value.abs()
              //                   : 0.0,
              //               child: Text(
              //                 'Qubicle Tech Agency',
              //                 style: TextStyle(
              //                   fontSize: 15.0,
              //                   color: Colors.white,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
