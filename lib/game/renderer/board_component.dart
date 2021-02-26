import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';

/// Renders a single sprite based on [SpriteComponent] on the game board.
class BoardComponent extends SpriteComponent {
  /// Convenient constructor.
  BoardComponent(String fileName, double tileSize) {
    width = tileSize;
    height = tileSize;
    loadImage(fileName);
    anchor = Anchor.center;
  }

  Future<void> loadImage(String fileName) async {
    var img = await Flame.images.load(fileName);
    sprite = Sprite(img);
    print('BoardComponent#loadImage');
  }

  @override
  void render(Canvas canvas) {
    print('BoardComponent#render');
    canvas.save();
    canvas.translate(width * 0.5, height * 0.5);
    super.render(canvas);
    canvas.restore();
  }
}
