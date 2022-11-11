import 'dart:math';
import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:funvas/funvas.dart';
import 'package:resume/core/theme/bloc/theme_bloc.dart';

class AnimatedBackground extends Funvas {
  final Size size;
  final Brightness brightness;

  AnimatedBackground({
    required this.size,
    required this.brightness,
  });

  static const _blobCount = 5, _blobSpeed = 3.0;
  static const _shaderResolution = 0x1ffe;

  final _blobs = <Blob>[];
  final _colors = <Color>[];
  final _stops = <double>[];

  @override
  void u(double t) {
    c.drawColor(const Color(0xff000000), BlendMode.srcOver);

    if (_blobs.isEmpty) {
      final random = Random(4269);
      for (var i = 0; i < _blobCount; i++) {
        _blobs.add(
          Blob(
            offset: Offset(
              random.nextDouble() * size.width,
              random.nextDouble() * size.height,
            ),
            velocity: Offset.fromDirection(
              random.nextDouble() * 2 * pi,
              _blobSpeed,
            ),
          ),
        );
      }
    }

    if (_colors.isEmpty) {
      assert(_stops.isEmpty);
      if (brightness == Brightness.dark) {
        _colors.addAll([
          for (var i = 0; i <= _shaderResolution; i++)
            Color.fromRGBO(
              27,
              0,
              36,
              Cubic(1, 0.4, 0.8, 0.3)
                  .transform(pow(i / _shaderResolution, 2).toDouble()),
            ),
        ]);
      } else {
        _colors.addAll([
          for (var i = _shaderResolution; i >= 0; i--)
            Color.fromRGBO(
              214,
              152,
              255,
              Cubic(0.2, 0.8, 1, 1)
                  .transform(pow(i / _shaderResolution, 2).toDouble()),
            ),
        ]);
      }
      _stops.addAll([
        for (var i = 0; i < _shaderResolution + 1; i++)
          pow(i / _shaderResolution, 2).toDouble(),
      ]);
    }

    for (final blob in _blobs) {
      final shader = Gradient.radial(
        blob.offset,
        size.longestSide,
        _colors,
        _stops,
        TileMode.clamp,
      );
      c.drawPaint(
        Paint()
          ..shader = shader
          ..blendMode = BlendMode.plus,
      );
    }

    for (final blob in _blobs) {
      blob.move(size);
    }
  }
}

class Blob {
  Blob({
    required Offset offset,
    required Offset velocity,
  })  : _offset = offset,
        _velocity = velocity;

  Offset get offset => _offset;
  Offset _offset;

  Offset _velocity;

  void move(Size screenSize) {
    if (_offset.dx <= 0 || _offset.dx >= screenSize.width) {
      _velocity = Offset(-_velocity.dx, _velocity.dy);
    }
    if (_offset.dy <= 0 || _offset.dy >= screenSize.height) {
      _velocity = Offset(_velocity.dx, -_velocity.dy);
    }

    _offset += _velocity;
  }
}
