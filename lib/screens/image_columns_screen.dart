import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class ImageColumnsScreen extends StatelessWidget {
  const ImageColumnsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final images = const [
      'assets/images/img_1.jpg',
      'assets/images/img_2.webp',
      'assets/images/img_3.jpg',
      'assets/images/img_4.webp',
      'assets/images/img_5.webp',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('5 imágenes en columna')),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: images.map((path) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    path,
                    width: double.infinity,
                    height: 250, 
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
