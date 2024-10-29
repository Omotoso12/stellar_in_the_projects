import 'package:flutter/material.dart';

import 'game_manager/constants.dart';

class TextMarkerFormat extends StatelessWidget {
  final double sWidth;
  final double sHeight;
  final String dataText;
  final bool showIcon;
  const TextMarkerFormat({super.key, required this.dataText, required this.sWidth, required this.sHeight, required this.showIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: sWidth,
      height: sHeight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.03,
          width: screenWidth / 7,
          child: FittedBox(
            alignment: Alignment.centerLeft,
            child: Text(
            dataText,
            style:const  TextStyle(
              fontFamily: 'Artemotion',
              fontWeight: FontWeight.w600,
            ),
            ),
          ),
        )
        ,
        showIcon? const Icon(
          size: 13,
          Icons.done_all,
          color: Colors.green,
          ): const SizedBox()
      ],)
    );
  }
}