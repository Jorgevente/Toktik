

import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {

  final List<Color> colores;
  final List<double> stops;

  const VideoBackground({
    super.key, 
    this.colores = const[
      Colors.transparent,
      Colors.black87
    ],
    this.stops = const[ 0.0, 1.0]
  }): assert( colores.length == stops.length, 'Stops and colores must be same length');

  @override
  Widget build(BuildContext context) {

    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colores,
            stops: stops,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
      )
    );
  }
}