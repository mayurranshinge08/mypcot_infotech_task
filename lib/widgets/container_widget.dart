import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Containerwidget extends StatelessWidget {
  final double? icon_height;
  final double? radius;

  final String svgPath;
  const Containerwidget({
    required this.svgPath,
    super.key,
    this.icon_height,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: Colors.white,
      child: SvgPicture.asset(svgPath),
    );
  }
}
