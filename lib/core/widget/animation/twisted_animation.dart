import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:math' as math;

import 'package:foodie/core/resource/styles.dart';

class TwistingAnimation extends StatefulWidget {
  const TwistingAnimation({
    super.key,
    required this.asset_1,
    required this.asset_2,
    required this.size,
  });

  final String asset_1;
  final String asset_2;
  final double size;

  @override
  _TwistingAnimationState createState() => _TwistingAnimationState();
}

class _TwistingAnimationState extends State<TwistingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (_, __) => Container(
          color: Colors.transparent,
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Visibility(
                visible: _animationController.value < 0.5,
                child: Transform.rotate(
                  angle: Tween<double>(
                    begin: 0,
                    end: math.pi,
                  )
                      .animate(
                        CurvedAnimation(
                          parent: _animationController,
                          curve: const Interval(
                            0.0,
                            0.5,
                            curve: Curves.elasticOut,
                          ),
                        ),
                      )
                      .value,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: (widget.size) / 3,
                        height: (widget.size) / 3,
                        child: SvgPicture.asset(
                          widget.asset_1,
                          colorFilter: ColorFilter.mode(
                            '#FF6B00'.toColor(),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: (widget.size) / 3,
                        height: (widget.size) / 3,
                        child: SvgPicture.asset(
                          widget.asset_2,
                          colorFilter: ColorFilter.mode(
                            '#FF6B00'.toColor(),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Visibility(
                visible: _animationController.value > 0.5,
                child: Transform.rotate(
                  angle: Tween<double>(
                    begin: -math.pi,
                    end: 0,
                  )
                      .animate(
                        CurvedAnimation(
                          parent: _animationController,
                          curve: const Interval(
                            0.5,
                            1.0,
                            curve: Curves.elasticOut,
                          ),
                        ),
                      )
                      .value,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: (widget.size) / 3,
                        height: (widget.size) / 3,
                        child: SvgPicture.asset(
                          widget.asset_1,
                          colorFilter: ColorFilter.mode(
                            '#FF6B00'.toColor(),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: (widget.size) / 3,
                        height: (widget.size) / 3,
                        child: SvgPicture.asset(
                          widget.asset_2,
                          colorFilter: ColorFilter.mode(
                            '#FF6B00'.toColor(),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
