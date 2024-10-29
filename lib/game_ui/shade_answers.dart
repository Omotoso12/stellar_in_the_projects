import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../game_manager/constants.dart';

class ShadeAnswers extends StatelessWidget {
  final bool showShade1;
  final bool showShade2;
  final bool showShade3;
  final bool showShade4;
  final bool showShade5;
  final bool showShade6;
  final bool showShade7;
  final bool showShade8;
  final bool showShade9;
  final bool showShade10;
  final bool showShade11;
  const ShadeAnswers(
      {super.key,
      required this.showShade1,
      required this.showShade2,
      required this.showShade3,
      required this.showShade4,
      required this.showShade5,
      required this.showShade6,
      required this.showShade7,
      required this.showShade8,
      required this.showShade9,
      required this.showShade10,
      required this.showShade11});

  @override
  Widget build(BuildContext context) {
    final Color shadeColor = const Color.fromARGB(255,255,165,0).withOpacity(0.2);
    return SizedBox(
      width: screenWidth,
      height: MediaQuery.sizeOf(context).height * 0.8,
      child: Stack(
        children: <Widget>[
          showShade1
              ? Padding(
                  padding: EdgeInsets.only(
                    top: ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 12,
                    bottom:
                        ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 4,
                    left: (screenWidth / 12) * 4,
                    right: (screenWidth / 12) * 7,
                  ),
                  child: Container(
                    width: screenWidth / 12,
                    height:
                        ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 6,
                    decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(16.0)),
                  ),
                )
              : const SizedBox(),
          showShade2
              ? Padding(
                  padding: EdgeInsets.only(
                    top: ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 15,
                    left: (screenWidth / 12) * 2,
                    right: (screenWidth / 12) * 7,
                  ),
                  child: Container(
                    width: screenWidth / 12,
                    height:
                        ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 7,
                    decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(16.0)),
                  ),
                )
              : const SizedBox(),
          showShade3
              ? Padding(
                  padding: EdgeInsets.only(
                    top: ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 21,
                    left: (screenWidth / 12),
                    right: (screenWidth / 12) * 4,
                  ),
                  child: Container(
                    width: (screenWidth / 12) * 7,
                    height:
                        ((MediaQuery.sizeOf(context).height * 0.8) / 22),
                    decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(16.0)),
                  ),
                )
              : const SizedBox(),
          showShade4
              ? Padding(
                  padding: EdgeInsets.only(
                    top: ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 9,
                    bottom:
                        ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 3,
                    left: (screenWidth / 12) * 10,
                    right: (screenWidth / 12),
                  ),
                  child: Container(
                    width: screenWidth / 12,
                    height:
                        ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 10,
                    decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(16.0)),
                  ),
                )
              : const SizedBox(),
          showShade5
              ? Padding(
                  padding: EdgeInsets.only(
                    left: (screenWidth / 12) * 4,
                   
                  ),
                  child: Container(
                    width: (screenWidth/ 12) * 8,
                    height:
                        ((MediaQuery.sizeOf(context).height * 0.8) / 22),
                    decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(16.0)),
                  ),
                )
              : const SizedBox(),
          showShade6
              ? Padding(
                  padding: EdgeInsets.only(
                    top: ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 19,
                    bottom: ((MediaQuery.sizeOf(context).height * 0.8) / 22),
                    left:
                        (screenWidth / 12) * 8.5,
                  ),
                  child: Transform.rotate(
                    angle: -math.pi / 4,
                    child: Container(
                      width: screenWidth / 12,
                      height:
                          ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 2,
                      decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(16.0)),
                    ),
                  ),
                )
              : const SizedBox(),
          showShade7
              ? Padding(
                  padding: EdgeInsets.only(
                    top: ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 7,
                  ),
                  child: Container(
                    width: screenWidth / 12,
                    height:
                        ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 10,
                    decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(16.0)),
                  ),
                )
              : const SizedBox(),
          showShade8
              ? Padding(
                  padding: EdgeInsets.only(
                   
                    left: (screenWidth / 12) * 5.4,
                  
                  ),
                  child: Transform.rotate(
                    angle: math.pi / 3.9,
                    child: Container(
                      width: screenWidth / 12,
                      height:
                          ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 10.3,
                      decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(16.0)),
                    ),
                  ),
                )
              : const SizedBox(),
          showShade9
              ? Padding(
                  padding: EdgeInsets.only(
                    top: ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 19,

                    left: (screenWidth / 12) * 11,

                  ),
                  child: Container(
                    width: screenWidth / 12,
                    height:
                        ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 3,
                    decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(16.0)),
                  ),
                )
              : const SizedBox(),
          showShade10
              ? Padding(
                  padding: EdgeInsets.only(
                    top: ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 6,

                    left: (screenWidth / 12) * 6,
                  ),
                  child: Transform.rotate(
                    angle: math.pi / 3.9,
                    child: Container(
                      width: screenWidth / 12,
                      height:
                          ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 9,
                      decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(16.0)),
                    ),
                  ),
                )
              : const SizedBox(),
          showShade11
              ? Padding(
                  padding: EdgeInsets.only(
                    top: ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 14,
                    bottom:
                        ((MediaQuery.sizeOf(context).height * 0.8) / 22) * 7,
                    left: (screenWidth / 12) * 5,
                    right: (screenWidth / 12) * 3,
                  ),
                  child: Container(
                    width: (screenWidth / 12) * 4,
                    height:
                        ((MediaQuery.sizeOf(context).height * 0.8) / 22),
                    decoration: BoxDecoration(
                          color: shadeColor,
                          borderRadius: BorderRadius.circular(16.0)),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
