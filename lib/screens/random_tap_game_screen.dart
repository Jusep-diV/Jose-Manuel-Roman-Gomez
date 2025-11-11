import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class RandomTapGameScreen extends StatefulWidget {
  const RandomTapGameScreen({super.key});

  @override
  State<RandomTapGameScreen> createState() => _RandomTapGameScreenState();
}

class _RandomTapGameScreenState extends State<RandomTapGameScreen> {
  final Random _random = Random();
  double _x = 0.5;
  double _y = 0.5;
  int _score = 0;
  bool _visible = true;
  Timer? _timer;
  static const int _timeLimit = 2;

  void _startNewRound() {
    _timer?.cancel();

    setState(() {
      _visible = true;
      // nueva posición aleatoria
      _x = _random.nextDouble();
      _y = _random.nextDouble();
    });

    _timer = Timer(const Duration(seconds: _timeLimit), () {
      if (_visible) {
        setState(() {
          _score -= 2;
          _visible = false;
        });
        _startNewRound();
      }
    });
  }

  void _onTap() {
    if (!_visible) return;
    setState(() {
      _score += 1;
      _visible = false;
    });
    _startNewRound();
  }

  @override
  void initState() {
    super.initState();
    _startNewRound();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Juego: Pulsa la Imagen'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      drawer: const AppDrawer(),
      body: Stack(
        children: [
          // Puntuación arriba centrada
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Puntuación: $_score',
                style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),

          // Imagen en posición aleatoria
          if (_visible)
            Positioned(
              left: _x * (screenWidth - 100),
              top: _y * (screenHeight - 200),
              child: GestureDetector(
                onTap: _onTap,
                child: Image.asset(
                  'assets/images/img_3.jpg',
                  width: 100,
                  height: 100,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
