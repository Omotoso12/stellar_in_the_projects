import 'package:flutter/material.dart';
import '../game_manager/constants.dart';
import '../game_manager/game_letters.dart';
import '../text_marker_format.dart';

class AnswersUi extends StatelessWidget {
  final double aWidth;
  final double aHeight;
  final bool showIcon1;
  final bool showIcon2;
  final bool showIcon3;
  final bool showIcon4;
  final bool showIcon5;
  final bool showIcon6;
  final bool showIcon7;
  final bool showIcon8;
  final bool showIcon9;
  final bool showIcon10;
  final bool showIcon11;
  const AnswersUi(
      {super.key,
      required this.aWidth,
      required this.aHeight,
      required this.showIcon1,
      required this.showIcon2,
      required this.showIcon3,
      required this.showIcon4,
      required this.showIcon5,
      required this.showIcon6,
      required this.showIcon7,
      required this.showIcon8,
      required this.showIcon9,
      required this.showIcon10,
      required this.showIcon11});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //color: Colors.blue,
      height: MediaQuery.sizeOf(context).height * 0.13,
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              TextMarkerFormat(
                  dataText: gameWords[0].toUpperCase(),
                  sWidth: aWidth,
                  sHeight: aHeight,
                  showIcon: showIcon1),
              TextMarkerFormat(
                  dataText: gameWords[1].toUpperCase(),
                  sWidth: aWidth,
                  sHeight: aHeight,
                  showIcon: showIcon2),
              TextMarkerFormat(
                  dataText: gameWords[2].toUpperCase(),
                  sWidth: aWidth,
                  sHeight: aHeight,
                  showIcon: showIcon3),
            ],
          ),
          Column(
            children: [
              TextMarkerFormat(
                  dataText: gameWords[3].toUpperCase(),
                  sWidth: aWidth,
                  sHeight: aHeight,
                  showIcon: showIcon4),
              TextMarkerFormat(
                  dataText: gameWords[4].toUpperCase(),
                  sWidth: aWidth,
                  sHeight: aHeight,
                  showIcon: showIcon5),
              TextMarkerFormat(
                  dataText: gameWords[5].toUpperCase(),
                  sWidth: aWidth,
                  sHeight: aHeight,
                  showIcon: showIcon6),
            ],
          ),
          Column(
            children: [
              TextMarkerFormat(
                  dataText: gameWords[6].toUpperCase(),
                  sWidth: aWidth,
                  sHeight: aHeight,
                  showIcon: showIcon7),
              TextMarkerFormat(
                  dataText: gameWords[7].toUpperCase(),
                  sWidth: aWidth,
                  sHeight: aHeight,
                  showIcon: showIcon8),
              TextMarkerFormat(
                  dataText: gameWords[8].toUpperCase(),
                  sWidth: aWidth,
                  sHeight: aHeight,
                  showIcon: showIcon9),
            ],
          ),
          Column(
            children: [
              TextMarkerFormat(
                  dataText: gameWords[9].toUpperCase(),
                  sWidth: aWidth,
                  sHeight: aHeight,
                  showIcon: showIcon10),
              TextMarkerFormat(
                  dataText: gameWords[10].toUpperCase(),
                  sWidth: aWidth,
                  sHeight: aHeight,
                  showIcon: showIcon11),
            ],
          ),
        ],
      ),
    );
  }
}
