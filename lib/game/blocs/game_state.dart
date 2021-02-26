import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

import '../models/board.dart';
import '../models/food.dart';
import '../models/snake.dart';
import '../models/status.dart';
import '../models/vec2d.dart';

/// Representation of the game state.
class GameState extends Equatable {
  /// Convenient constructor.
  GameState(
    this.velocity, {
    this.status = Status.loading,
    this.score = 0,
    this.food,
    this.snake,
    this.board,
  }) : assert(score >= 0);

  /// Game status. See [Status].
  final Status status;

  /// Amount of ate food.
  final int score;

  /// Food current position.
  final Food? food;

  /// Snake position.
  final Snake? snake;

  /// A [Vec2d] with velocity and direction.
  final Vec2d velocity;

  /// Game [Board] available.
  Board? board;

  @override
  List<Object?> get props => [
        status,
        score,
        food,
        snake,
        velocity,
        board,
      ];

  @override
  bool get stringify => true;

  /// Returns a copy of the current [GameState]
  /// optionally changing some fields.
  GameState copyWith({
    Status? status,
    int? score,
    Food? food,
    Snake? snake,
    Vec2d? velocity,
    Board? board,
  }) {
    return GameState(
      velocity ?? this.velocity,
      status: status ?? this.status,
      score: score ?? this.score,
      food: food ?? this.food,
      snake: snake ?? this.snake,
      board: board ?? this.board,
    );
  }
}
