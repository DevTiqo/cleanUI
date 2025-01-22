import 'dart:io';

import 'package:cleanui/constants/color_const.dart';
import 'package:cleanui/constants/image_const.dart';
import 'package:cleanui/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

class CustomBottomAppBar extends StatefulWidget {
  static const routeName = "/bottomAppBar";
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar>
    with AutomaticKeepAliveClientMixin, TickerProviderStateMixin {
  bool get wantKeepAlive => true;
  final PageController _bottomAppBar = PageController(initialPage: 0);
  int? _screenNumber;

  bool shouldshowTutorial = false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _screenNumber = 0;
  }

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    //Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: PageView(
        controller: _bottomAppBar,
        onPageChanged: (int value) {
          _screenNumber = value;
        },
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          MyHomePage(),
          Placeholder(),
          Placeholder(),
          Placeholder(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              blurRadius: 10.0,
              spreadRadius: 0.0,
              offset: Offset(0.0, 0.4),
            ),
          ],
          color: ColorConst.cardColor,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewPadding.bottom + 10,
            top: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        _bottomAppBar.jumpToPage(0);
                      });
                    },
                    child: AnimatedSize(
                        duration: Duration(milliseconds: 200),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              WebsafeSvg.asset(
                                ImageConst.card,
                                colorFilter: ColorFilter.mode(
                                    _screenNumber == 0
                                        ? ColorConst.primaryColor
                                        : Colors.grey,
                                    BlendMode.srcIn),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    // overlayColor:  WidgetStateProperty.all(Colors.red),
                    onTap: () {
                      setState(() {
                        _bottomAppBar.jumpToPage(1);
                      });
                    },
                    child: AnimatedSize(
                        duration: Duration(milliseconds: 200),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Stack(
                                children: [
                                  WebsafeSvg.asset(
                                    ImageConst.bonfire,
                                    colorFilter: ColorFilter.mode(
                                        _screenNumber == 1
                                            ? ColorConst.primaryColor
                                            : Colors.grey,
                                        BlendMode.srcIn),
                                  ),
                                  Positioned(
                                    top: 4,
                                    right: 0,
                                    child: Container(
                                      width: 18,
                                      height: 12,
                                      padding: EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                        color: ColorConst.primaryColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "  ",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    // overlayColor:  WidgetStateProperty.all(Colors.red),
                    onTap: () {
                      setState(() {
                        _bottomAppBar.jumpToPage(2);
                      });
                    },
                    child: AnimatedSize(
                        duration: Duration(milliseconds: 200),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Stack(
                                children: [
                                  WebsafeSvg.asset(
                                    ImageConst.chat,
                                    colorFilter: ColorFilter.mode(
                                        _screenNumber == 2
                                            ? ColorConst.primaryColor
                                            : Colors.grey,
                                        BlendMode.srcIn),
                                  ),
                                  Positioned(
                                    top: 4,
                                    right: 0,
                                    child: Container(
                                      width: 18,
                                      height: 12,
                                      padding: EdgeInsets.all(0),
                                      decoration: BoxDecoration(
                                        color: ColorConst.primaryColor,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "10",
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 7),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    // overlayColor:  WidgetStateProperty.all(Colors.red),
                    onTap: () {
                      setState(() {
                        _bottomAppBar.jumpToPage(3);
                      });
                    },
                    child: AnimatedSize(
                        duration: Duration(milliseconds: 200),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              WebsafeSvg.asset(
                                ImageConst.user,
                                colorFilter: ColorFilter.mode(
                                    _screenNumber == 3
                                        ? ColorConst.primaryColor
                                        : Colors.grey,
                                    BlendMode.srcIn),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
