import 'package:flutter/material.dart';
import 'package:agency_landing_page/Style/Style.dart';

class DetailSide extends StatelessWidget {
  const DetailSide({
    Key? key,
    Animation<double>? animation,
  })  : _animation = animation,
        super(key: key);

  final Animation<double>? _animation;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-_animation!.value, 0.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 80.0, left: 220.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.53,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _animation!.value < 0.0
                    ? 'Website Project Information'
                    : 'Mobile Project Information',
                style: TextStyle(
                  fontSize: 38.0,
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              _animation!.value < 0.0
                  ? Container(
                      height: 53.0,
                      width: 600.0,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: colors.mainColor.withOpacity(0.06),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Icon(
                              Icons.person,
                              size: 20.0,
                            ),
                          ),
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            fontFamily: "Sofia",
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      height: 53.0,
                      width: 500.0,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: colors.mainColor.withOpacity(0.06),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Icon(
                              Icons.person,
                              size: 20.0,
                            ),
                          ),
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            fontFamily: "Sofia",
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
              SizedBox(
                height: 25.0,
              ),
              _animation!.value < 0.0
                  ? Container(
                      height: 53.0,
                      width: 600.0,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: colors.mainColor.withOpacity(0.06),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Icon(
                              Icons.mail,
                              size: 20.0,
                            ),
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontFamily: "Sofia",
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      height: 53.0,
                      width: 500.0,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: colors.mainColor.withOpacity(0.06),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Icon(
                              Icons.mail,
                              size: 20.0,
                            ),
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontFamily: "Sofia",
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
              SizedBox(
                height: 25.0,
              ),
              _animation!.value < 0.0
                  ? Container(
                      height: 53.0,
                      width: 600.0,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: colors.mainColor.withOpacity(0.06),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Icon(
                              Icons.phone,
                              size: 20.0,
                            ),
                          ),
                          hintText: 'Phone',
                          hintStyle: TextStyle(
                            fontFamily: "Sofia",
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      height: 53.0,
                      width: 500.0,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: colors.mainColor.withOpacity(0.06),
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Icon(
                              Icons.phone,
                              size: 20.0,
                            ),
                          ),
                          hintText: 'Phone',
                          hintStyle: TextStyle(
                            fontFamily: "Sofia",
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
              SizedBox(
                height: 25.0,
              ),
              _animation!.value < 0.0
                  ? Container(
                      height: 203.0,
                      width: 600.0,
                      child: TextField(
                        maxLines: 8,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: colors.mainColor.withOpacity(0.06),
                          hintText: 'Detail Brief Project',
                          hintStyle: TextStyle(
                            fontFamily: "Sofia",
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      height: 203.0,
                      width: 500.0,
                      child: TextField(
                        maxLines: 8,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: colors.mainColor.withOpacity(0.06),
                          hintText: 'Detail Brief Project',
                          hintStyle: TextStyle(
                            fontFamily: "Sofia",
                          ),
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
              SizedBox(
                height: 30.0,
              ),
              _animation!.value < 0.0
                  ? Padding(
                      padding: const EdgeInsets.only(right: 170.0),
                      child: Align(
                        alignment: Alignment(-_animation!.value, 0.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: colors.mainColor,
                          ),
                          onPressed: () {},
                          child: Container(
                            height: 50.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Center(
                              child: Text(
                                _animation!.value < 0.0
                                    ? 'Send Message'
                                    : 'Send Message',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Sofia",
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Align(
                      alignment: Alignment(-_animation!.value, 0.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          backgroundColor: colors.mainColor,
                        ),
                        onPressed: () {},
                        child: Container(
                          height: 50.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                          ),
                          child: Center(
                            child: Text(
                              _animation!.value < 0.0
                                  ? 'Send Message'
                                  : 'Send Message',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Sofia",
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
