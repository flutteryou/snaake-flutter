import 'package:flame/flame.dart';
import 'package:flutter/services.dart';

mixin IFlameManager {
  void setup();
}

/// Flame manager used to abstract Flame calls.
class FlameManager with IFlameManager {
  @override
  Future<void> setup() async {
    await Flame.images.loadAll(<String>[
      'food/food.png',
      'food/red_food.png',
      'snake/head.png',
      'snake/body.png',
      'snake/body_curve.png',
      'snake/tail.png',
    ]);
  }
}
