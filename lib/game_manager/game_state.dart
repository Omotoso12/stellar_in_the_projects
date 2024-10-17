part of "game_controller.dart";

class GameState extends Equatable {
  final String email;
  final String password;
  final bool status;
  final String? errorMessage;

  const GameState({ 
    this.email = '',
    this.password = '',
    this.status = false,
    this.errorMessage,
  });

  GameState copyWith({
    String? email,
    String? password,
    bool? status,
    String? errorMessage,
  }) {
    return GameState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        email,
        password,
        status,
      ];
}
