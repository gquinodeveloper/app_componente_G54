import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({Key? key}) : super(key: key);

  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  double _wp = 50.0;
  double _hp = 50.0;
  double _radius = 10.0;
  Color _color = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated"),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _wp,
          height: _hp,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(_radius),
          ),
          duration: Duration(milliseconds: 600),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _cambiarForma,
        /* onPressed: () {
          _cambiarForma();
        }, */
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  void _cambiarForma() {
    final _random = Random();
    print(_random.nextInt(300));
    setState(() {
      _wp = _random.nextInt(300).toDouble();
      _hp = _random.nextInt(300).toDouble();

      _color = Color.fromRGBO(
        _random.nextInt(255),
        _random.nextInt(255),
        _random.nextInt(255),
        1.0,
      );
      _radius = _random.nextInt(100).toDouble();
    });
  }
}
