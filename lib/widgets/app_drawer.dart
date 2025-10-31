import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  void _go(BuildContext context, String route) {
    Navigator.pop(context); // cierra el drawer
    final current = ModalRoute.of(context)?.settings.name;
    if (current != route) {
      Navigator.pushReplacementNamed(context, route);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.menu, size: 40),
                  SizedBox(height: 12),
                  Text('Menú de navegación',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: const Text('Nombre y Repositorio'),
              onTap: () => _go(context, '/name_repo'),
            ),
            ListTile(
              leading: const Icon(Icons.movie),
              title: const Text('Foto + Nombre'),
              onTap: () => _go(context, '/profile'),
            ),
            ListTile(
              leading: const Icon(Icons.photo_camera),
              title: const Text('3 miniaturas en columnas'),
              onTap: () => _go(context, '/thumbs3'),
            ),
            ListTile(
              leading: const Icon(Icons.sports_esports),
              title: const Text('5 iconos en filas'),
              onTap: () => _go(context, '/icon_rows'),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('5 imágenes en columnas'),
              onTap: () => _go(context, '/image_columns'),
            ),
            ListTile(
              leading: const Icon(Icons.text_fields),
              title: const Text('Textos y Fuentes'),
              onTap: () => _go(context, '/text_styles'),
            ),
            ListTile(
              leading: const Icon(Icons.image_outlined),
              title: const Text('Imágenes Repetidas'),
              onTap: () => _go(context, '/repeated_images'),
            ),
            ListTile(
            leading: const Icon(Icons.phone_android),
            title: const Text('Fotos Pirámide'),
            onTap: () => _go(context, '/responsive_images'),
            ),
            ListTile(
              leading: const Icon(Icons.exposure_plus_1),
              title: const Text('Contador'),
              onTap: () => _go(context, '/counter'),
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt_outlined),
              title: const Text('Perfil Instagram'),
              onTap: () => _go(context, '/instagram'),
            ),

          ],
        ),
      ),
    );
  }
}
