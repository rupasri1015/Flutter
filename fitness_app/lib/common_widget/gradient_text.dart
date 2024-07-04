import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText({
    super.key,
    required this.text,
    this.style,
    required this.gradient,
    required Null Function() onPressed,
  });
  final String text;
  final TextStyle? style;
  final Gradient gradient;
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTRB(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
