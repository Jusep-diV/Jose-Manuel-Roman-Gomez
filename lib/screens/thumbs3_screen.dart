import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class Thumbs3Screen extends StatelessWidget {
  const Thumbs3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final images = const [
      'assets/images/img_1.jpg',
      'assets/images/img_2.webp',
      'assets/images/img_4.webp',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('3 miniaturas en columnas')),
      drawer: const AppDrawer(),
      body: Padding(
      padding: const EdgeInsets.all(12),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: images.map((path) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    path,
                    width: 230,
                    height: 230,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    ),
    );
  }
}
