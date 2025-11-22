import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class ChallengeScreen extends StatelessWidget {
  const ChallengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Challenge')),
      drawer: const AppDrawer(),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFFA36660), 
                Color(0xFF1C256E),
              ],
              stops: [0.3, 0.75],
            ),
          ),
        ),
      ),
    );
  }
}
