import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(MyApp());
}

void openPage() {
  print("Hello World");
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Casting Board"),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.cast_sharp),
                tooltip: 'Connect to Browser',
                onPressed: () {},
              ),
            ],
          ),
          body: Center(
            child: const Text(
              'Casting Board Application!!',
              style: TextStyle(fontSize: 24),
            ),
          ),
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            closeManually: true,
            overlayColor: Colors.amber,
            overlayOpacity: 0.5,
            shape: _DiamondBorder(),
            curve: Curves.easeIn,
            children: [
              SpeedDialChild(
                child: Icon(Icons.ac_unit),
                label: "Somethign",
                onTap: () => print("acc unit"),
              ),
              SpeedDialChild(
                child: Icon(Icons.ac_unit),
                label: "Somethigna",
                onTap: () => print("acc unit"),
              ),
            ],
          )

          // FloatingActionButton(
          //   onPressed: () {
          //     // Add your onPressed code here!
          //   },
          //   shape: _DiamondBorder(),
          //   child: Icon(Icons.loop_sharp),
          //   backgroundColor: Colors.grey,
          // ),
          ),
    );
  }
}

class _DiamondBorder extends ShapeBorder {
  const _DiamondBorder();

  @override
  EdgeInsetsGeometry get dimensions {
    return const EdgeInsets.only();
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return Path()
      ..moveTo(rect.left + rect.width / 2.0, rect.top)
      ..lineTo(rect.right, rect.top + rect.height / 2.0)
      ..lineTo(rect.left + rect.width / 2.0, rect.bottom)
      ..lineTo(rect.left, rect.top + rect.height / 2.0)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {}

  // This border doesn't support scaling.
  @override
  ShapeBorder scale(double t) {
    return null;
  }
}
