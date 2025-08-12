import 'package:flutter/material.dart';
import 'dart:math' as math;

// Widget que permite animar a su hijo con un efecto de "temblor" (shake).
class ShakeWidget extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final double deltaX;
  final Curve curve;
  // Usamos un GlobalKey para poder llamar al método shake() desde fuera (ej. desde LoginScreen)
  // ignore: prefer_const_constructors_in_immutables
  ShakeWidget({
    required Key key,
    required this.child,
    this.duration = const Duration(milliseconds: 500),
    this.deltaX = 8.0, // Magnitud del temblor (leve)
    this.curve = Curves.elasticOut,
  }) : super(key: key);

  @override
  ShakeWidgetState createState() => ShakeWidgetState();
}

class ShakeWidgetState extends State<ShakeWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
  }

  // Método público para activar la animación
  void shake() {
    // Verificamos que el widget siga montado antes de intentar animar
    if (mounted) {
       _controller.reset();
       _controller.forward();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Función que define el desplazamiento sinusoidal para el temblor
  double _shake(double animation) {
    // f(x) = A * sin(x * pi * N)
    // A es la amplitud (deltaX). N define el número de oscilaciones (4 para un temblor rápido).
    return widget.deltaX * math.sin(animation * math.pi * 4);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        // Usamos una curva para suavizar el movimiento
        final animation = CurvedAnimation(parent: _controller, curve: widget.curve);
        return Transform.translate(
          offset: Offset(_shake(animation.value), 0),
          child: child,
        );
      },
      child: widget.child,
    );
  }
}