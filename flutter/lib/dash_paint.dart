import 'package:embed_flutter/dash/dash.dart';
import 'package:flutter/material.dart';
import 'package:js/js.dart' as js;
import 'package:js/js_util.dart' as js_util;

class DashPaint extends StatefulWidget {
  @override
  _DashPaintState createState() => _DashPaintState();
}

@js.JSExport()
class _DashPaintState extends State<DashPaint> {
  Matrix4 m4 = Matrix4.identity();

  @override
  void initState() {
    super.initState();
    final export = js_util.createDartExport(this);
    js_util.setProperty(js_util.globalThis, '_appState', export);
    js_util.callMethod(js_util.globalThis, '_stateSet', []);
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
