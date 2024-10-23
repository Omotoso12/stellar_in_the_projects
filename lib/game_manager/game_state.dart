part of "game_controller.dart";

// ignore: must_be_immutable
class GameState extends Equatable {
  List<int> indexList;
  final String password;
  final bool status;
  final String? errorMessage;

  GameState({ 
    required this.indexList,
    this.password = '',
    this.status = false,
    this.errorMessage,
  });

  GameState copyWith({
    List<int>? indexList,
    String? password,
    bool? status,
    String? errorMessage,
  }) {
    return GameState(
      indexList: indexList ?? this.indexList,
      password: password ?? this.password,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        indexList,
        password,
        status,
      ];
}
