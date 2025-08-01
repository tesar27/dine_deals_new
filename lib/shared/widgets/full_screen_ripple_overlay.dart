import 'package:flutter/material.dart';

class FullScreenRippleOverlay extends StatefulWidget {
  final Widget child;
  final GlobalKey<FullScreenRippleOverlayState> rippleKey;

  const FullScreenRippleOverlay({
    super.key,
    required this.child,
    required this.rippleKey,
  });

  @override
  State<FullScreenRippleOverlay> createState() =>
      FullScreenRippleOverlayState();
}

class FullScreenRippleOverlayState extends State<FullScreenRippleOverlay>
    with TickerProviderStateMixin {
  late AnimationController _rippleController;
  late Animation<double> _rippleAnimation;

  Offset? _rippleCenter;
  Color? _rippleColor;
  bool _isRippling = false;

  @override
  void initState() {
    super.initState();

    _rippleController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _rippleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _rippleController, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _rippleController.dispose();
    super.dispose();
  }

  void startRipple({required Offset center, required Color color}) {
    setState(() {
      _rippleCenter = center;
      _rippleColor = color;
      _isRippling = true;
    });

    _rippleController.forward().then((_) {
      _rippleController.reset();
      setState(() {
        _isRippling = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        if (_isRippling && _rippleCenter != null && _rippleColor != null)
          Positioned.fill(
            child: AnimatedBuilder(
              animation: _rippleAnimation,
              builder: (context, child) {
                final screenSize = MediaQuery.of(context).size;
                final maxRadius =
                    (screenSize.width > screenSize.height
                        ? screenSize.width
                        : screenSize.height) *
                    1.5;

                return CustomPaint(
                  painter: RipplePainter(
                    center: _rippleCenter!,
                    radius: maxRadius * _rippleAnimation.value,
                    color: _rippleColor!.withOpacity(
                      0.15 * (1 - _rippleAnimation.value),
                    ),
                  ),
                  size: Size.infinite,
                );
              },
            ),
          ),
      ],
    );
  }
}

class RipplePainter extends CustomPainter {
  final Offset center;
  final double radius;
  final Color color;

  RipplePainter({
    required this.center,
    required this.radius,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = color
          ..style = PaintingStyle.fill;

    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(RipplePainter oldDelegate) {
    return oldDelegate.center != center ||
        oldDelegate.radius != radius ||
        oldDelegate.color != color;
  }
}
