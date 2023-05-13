import 'package:embed_flutter/dash/dash.dart';
import 'package:flutter/material.dart';

class DashPaint extends StatefulWidget {
  @override
  _DashPaintState createState() => _DashPaintState();
}

class _DashPaintState extends State<DashPaint> {
  Matrix4 m4 = Matrix4.identity();

  @override
  void initState() {
    super.initState();
    m4.translate(-85.0, -100.0);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 5 / 3,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Transform(
            transform: m4,
            child: CustomPaint(
              size: const Size(800, 480),
              painter: Dash(),
            ),
          ),
        ),
      ),
    );
  }
}
