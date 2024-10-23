part of "game_controller.dart";

// ignore: must_be_immutable
class GameState extends Equatable {
  List<int> indexList;
  List<bool> markAnswer;

  GameState({
    required this.indexList,
    required this.markAnswer,
  });

  GameState copyWith({
    List<int>? indexList,
    List<bool>? markAnswer,
  }) {
    return GameState(
      indexList: indexList ?? this.indexList,
      markAnswer: markAnswer ?? this.markAnswer,
    );
  }

  @override
  List<Object?> get props => [
        indexList,
        markAnswer,
      ];
}
