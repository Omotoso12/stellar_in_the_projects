import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:equatable/equatable.dart';

part 'game_state.dart';

final gameControlProvider =
    StateNotifierProvider.autoDispose<GameController, GameState>(
  (ref) => GameController(),
);

class GameController extends StateNotifier<GameState> {
  GameController() : super(GameState(indexList: List<int>.empty(growable: true), markAnswer:List<bool>.filled(11, false)));

  setIndexListToEmpty() {
    state = state.copyWith(indexList: List<int>.empty(growable: true));
  }

  calculateIntersctionPoints( double tHeight, double tWidth, double boxSetHeight, double boxSetWidth) {
    double boxWidth = tWidth * 0.98;
    double boxHeight = tHeight * 0.8;

    double tileWidth = boxWidth / 12;
    double tileHeight = boxHeight / 22;

    List<double> allTileWidthStartPoint = [];
//calculate the number of width points
    for (var i = 0; i < 12; i++) {
      allTileWidthStartPoint.add(i * tileWidth);
    }

    List<double> allTileHeightStartPoint = [];
//calculate the number of height points
    for (var j = 0; j < 23; j++) {
      allTileHeightStartPoint.add(j * tileHeight);
    }

    int indexValue = 0;
// first half of the screen
    if (boxSetWidth < boxWidth && boxSetHeight < boxHeight / 2) {
      for (var j = 0; j < 11; j++) {
        // height index manger
        if (boxSetWidth < allTileWidthStartPoint[1] &&
            (boxSetHeight > allTileHeightStartPoint[j] &&
                boxSetHeight < allTileHeightStartPoint[j + 1])) {
          indexValue = ((j * 12) + 1);
        }
        // width index manager
        for (var i = 1; i < 12; i++) {
          int value = j + 1;
          int hValue = j;
          int makeValue = ((j * 12) + 1);
          if ((boxSetWidth > allTileWidthStartPoint[i]) &&
              (boxSetHeight > allTileHeightStartPoint[hValue] &&
                  boxSetHeight < allTileHeightStartPoint[value])) {
            indexValue = i + makeValue;
          }
        }
      }
    } else if ((boxSetWidth < boxWidth) &&
        (boxSetHeight > boxHeight / 2) &&
        (boxSetHeight < boxHeight)) {
      // height index manger
      for (var l = 11; (l >= 11 && l <= 21); l++) {
        if (boxSetWidth < allTileWidthStartPoint[1] &&
            (boxSetHeight > allTileHeightStartPoint[l] &&
                boxSetHeight < allTileHeightStartPoint[l + 1])) {
          indexValue = ((l * 12) + 1);
        }
        // width index manager
        for (var i = 1; i < 12; i++) {
          int value = l + 1;
          int hValue = l;
          int makeValue = ((l * 12) + 1);
          if ((boxSetWidth > allTileWidthStartPoint[i]) &&
              (boxSetHeight > allTileHeightStartPoint[hValue] &&
                  boxSetHeight < allTileHeightStartPoint[value])) {
            indexValue = i + makeValue;
          }
        }
      }
    }
    if (state.indexList.isEmpty || state.indexList.last != indexValue) {
      state.indexList.add(indexValue);
    }
  }

  getCorrectAnswer(List<List<int>> answerList, List<int> confirmAnswer) {
    for (var i = 0; i < 11; i++ ){
      if (listEquals(answerList.elementAt(i), confirmAnswer)) {
        state.markAnswer[i] = true;
      }
    }
  }
}
