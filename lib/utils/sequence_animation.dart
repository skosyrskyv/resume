import 'package:flutter/material.dart';

class _AnimationData {
  _AnimationData({
    required this.animatable,
    required this.from,
    required this.to,
    required this.curve,
    required this.tag,
  });

  final Animatable animatable;
  final Duration from;
  final Duration to;
  final Curve curve;
  final String tag;
}

class SequenceAnimationBuilder {
  final List<_AnimationData> _animations = [];

  int _calculateSequenceAnimationDuration() {
    int longestTimeMicro = 0;
    _animations.forEach((animation) {
      int micro = animation.to.inMicroseconds;
      if (micro > longestTimeMicro) {
        longestTimeMicro = micro;
      }
    });
    return longestTimeMicro;
  }

  SequenceAnimationBuilder addAnimation({
    required Animatable animatable,
    required Duration from,
    required Duration to,
    Curve curve = Curves.linear,
    required String tag,
  }) {
    assert(to >= from);
    _animations.add(
      _AnimationData(
        animatable: animatable,
        from: from,
        to: to,
        curve: curve,
        tag: tag,
      ),
    );
    return this;
  }

  SequenceAnimation animate(AnimationController controller) {
    int longestTimeMicro = _calculateSequenceAnimationDuration();
    controller.duration = Duration(microseconds: longestTimeMicro);

    Map<String, Animatable> animatables = {};
    Map<String, double> begins = {};
    Map<String, double> ends = {};

    _animations.forEach((info) {
      assert(info.to.inMicroseconds <= longestTimeMicro);

      double begin = info.from.inMicroseconds / longestTimeMicro;
      double end = info.to.inMicroseconds / longestTimeMicro;
      Interval intervalCurve = Interval(begin, end, curve: info.curve);
      if (animatables[info.tag] == null) {
        animatables[info.tag] =
            IntervalAnimatable.chainCurve(info.animatable, intervalCurve);
        begins[info.tag] = begin;
        ends[info.tag] = end;
      } else {
        assert(
            ends[info.tag]! <= begin,
            "When animating the same property you need to: \n"
            "a) Have them not overlap \n"
            "b) Add them in an ordered fashion\n"
            "Animation with tag ${info.tag} ends at ${ends[info.tag]} but also begins at $begin");
        animatables[info.tag] = IntervalAnimatable(
          animatable: animatables[info.tag]!,
          defaultAnimatable:
              IntervalAnimatable.chainCurve(info.animatable, intervalCurve),
          begin: begins[info.tag]!,
          end: ends[info.tag]!,
        );
        ends[info.tag] = end;
      }
    });

    Map<String, Animation> result = {};

    animatables.forEach((tag, animInfo) {
      result[tag] = animInfo.animate(controller);
    });

    return SequenceAnimation._(result);
  }
}

class SequenceAnimation {
  final Map<String, Animation> _animations;

  SequenceAnimation._(this._animations);

  Animation operator [](String key) {
    assert(_animations.containsKey(key),
        "There was no animatable with the key: $key");
    return _animations[key]!;
  }
}

class IntervalAnimatable<T> extends Animatable<T> {
  IntervalAnimatable({
    required this.animatable,
    required this.defaultAnimatable,
    required this.begin,
    required this.end,
  });

  final Animatable animatable;
  final Animatable defaultAnimatable;
  final double begin;
  final double end;

  static Animatable chainCurve(Animatable parent, Interval interval) {
    return parent.chain(CurveTween(curve: interval));
  }

  @override
  T transform(double t) {
    if (t >= begin && t <= end) {
      return animatable.transform(t);
    } else {
      return defaultAnimatable.transform(t);
    }
  }
}
