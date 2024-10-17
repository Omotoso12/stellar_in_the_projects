import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:equatable/equatable.dart';

part 'game_state.dart';

final signUpProvider =
    StateNotifierProvider.autoDispose<GameController, GameState>(
  (ref) => GameController(),
);

class GameController extends StateNotifier<GameState> {
  GameController() : super(const GameState());

  void calculateIntersctionPoints(double tHeight, double tWidth) async {
    double boxWidth = tWidth * 0.98;
    double boxHeight = tHeight * 0.8;

    double tileWidth = boxWidth / 12;
    double tileHeight = boxHeight / 22;

    List<double> allTileWidthStartPoint = [];

    for (var i = 0.0; i < 12; i++) {
      allTileWidthStartPoint.add(i * tileWidth);
    }
    print(allTileWidthStartPoint);

    List<double> allTileHeightStartPoint = [];

    for (var j = 0.0; j < 12; j++) {
      allTileWidthStartPoint.add(j * tileHeight);
    }
    print(allTileHeightStartPoint);
  }
}
