import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class ResponsiveImagesScreen extends StatelessWidget {
  const ResponsiveImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      'assets/images/img_0.jpg',
      'assets/images/img_1.jpg',
      'assets/images/img_2.webp',
      'assets/images/img_3.jpg',
      'assets/images/img_4.webp',
      'assets/images/img_5.webp',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Actividad Tema 2')),
      drawer: const AppDrawer(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          double imageSize = 120;
          if (constraints.maxWidth < 400) imageSize = 80;
          if (constraints.maxWidth > 800) imageSize = 150;

          return Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildCenteredRow([images[0]], imageSize),
                  const SizedBox(height: 20),
                  _buildCenteredRow([images[1], images[2]], imageSize),
                  const SizedBox(height: 20),
                  _buildCenteredRow([images[3], images[4], images[5]], imageSize),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
  Widget _buildCenteredRow(List<String> imagePaths, double imageSize) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imagePaths
          .map(
            (path) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Image.asset(
                path,
                width: imageSize,
                height: imageSize,
                fit: BoxFit.cover,
              ),
            ),
          )
          .toList(),
    );
  }
}
