import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class IconRowsScreen extends StatelessWidget {
  const IconRowsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final icons = const [
      Icons.home_outlined,
      Icons.phone_iphone,
      Icons.email_outlined,
      Icons.map_outlined,
      Icons.settings_outlined,
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Iconos en fila')),
      drawer: const AppDrawer(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: icons.map((icon) {
            return Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue.shade100,
              ),
              child: Icon(
                icon,
                size: 35,
                color: Colors.blue.shade700,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
