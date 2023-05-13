import 'dart:math' as Math;

import 'package:embed_flutter/dash/dash_parts.dart';
import 'package:embed_flutter/dash/dash_tokens.dart';
import 'package:flutter/material.dart';

class Dash extends CustomPainter {
  static const Offset viewportOffset = Offset(85.0, 100.0);
  static const Offset referenceSize = Offset(970.0, 855.0);

  @override
  void paint(Canvas canvas, Size size) {
    Path clipPath = Path();
    clipPath.addRect(Rect.fromPoints(
        const Offset(85.0, 100.0), const Offset(800.0 + 85.0, 480.0 + 100.0)));
    canvas.clipPath(clipPath);

    canvas.drawPath(DashParts.dashBody, DashTokens.lightBlue);
    canvas.drawPath(DashParts.dashFace, DashTokens.darkBlue);
    canvas.drawPath(DashParts.dashEyeSocketsContours, DashTokens.green);
    canvas.drawPath(DashParts.dashEyeSockets, DashTokens.black);
    canvas.drawPath(DashParts.dashEyes, DashTokens.white);
    canvas.drawPath(DashParts.dashBelly, DashTokens.white);
    canvas.drawPath(DashParts.dashRightWing, DashTokens.darkBlue);
    canvas.drawPath(DashParts.dashLeftWing, DashTokens.darkBlue);
    canvas.drawPath(DashParts.dashRightLeg, DashTokens.brown);
    canvas.drawPath(DashParts.dashLeftLeg, DashTokens.brown);
    canvas.drawPath(DashParts.dashHair, DashTokens.lightBlue);
    canvas.drawPath(DashParts.dashNose, DashTokens.brown);
    canvas.drawPath(
        DashParts.getSparkle(const Offset(307.0, 297.0), 90 + (1.5 * Math.pi)),
        DashTokens.white);
    canvas.drawPath(
        DashParts.getSparkle(const Offset(662.0, 297.0), 90 + (1.5 * Math.pi)),
        DashTokens.white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
