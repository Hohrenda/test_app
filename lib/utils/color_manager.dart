import 'dart:math';
import 'dart:ui';

class ColorManager {
  static Color getRandomColor() {
    Random _rand = new Random();
    return Color.fromRGBO(_rand.nextInt(256), _rand.nextInt(256),
        _rand.nextInt(256), _rand.nextDouble());
  }
}
