import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class RepeatedImagesScreen extends StatelessWidget {
  const RepeatedImagesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const localImage = 'assets/images/img_1.jpg'; 
    const networkImage =
        'https://www.selwo.es/content/dam/swa/images/descubre-el-zoo/especies-y-territorios/animales/panda-rojo/Panda-rojo-Selwo-Aventura-13.jpg'; 

    return Scaffold(
      appBar: AppBar(title: const Text('Imágenes Repetidas')),
      drawer: const AppDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //Tercera Flia
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(localImage, width: 140, height: 140, fit: BoxFit.cover),
              ],
            ),
            const SizedBox(height: 16),
            //Segunda Flia
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(networkImage, width: 140, height: 140, fit: BoxFit.cover),
                const SizedBox(width: 12),
                Image.asset(localImage, width: 140, height: 140, fit: BoxFit.cover),
              ],
            ),
            const SizedBox(height: 16),
            //Primera fila
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(networkImage, width: 140, height: 140, fit: BoxFit.cover),
                const SizedBox(width: 12),
                Image.asset(localImage, width: 140, height: 140, fit: BoxFit.cover),
                const SizedBox(width: 12),
                Image.network(networkImage, width: 140, height: 140, fit: BoxFit.cover),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
