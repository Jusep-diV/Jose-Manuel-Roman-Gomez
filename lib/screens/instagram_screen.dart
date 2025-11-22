import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';

class InstagramProfileScreen extends StatelessWidget {
  const InstagramProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const imagePath = 'assets/images/';

    //Imagenes
    final imageFiles = [
      'img_1.jpg',
      'img_2.webp',
      'img_3.jpg',
      'img_4.webp',
      'img_5.webp',
      'img_6.jpg',
      'img_7.jpg',
      'img_8.jpg',
      'img_9.jpg',
      'img_10.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Jose_Manuel_Dev',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12),
            child: Icon(Icons.more_vert, color: Colors.black),
          ),
        ],
      ),

      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Fila 1: Imagen de perfil y estadísticas
              Row(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage:
                        const AssetImage('assets/images/img_0.jpg'),
                  ),
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _StatColumn(title: '8', label: 'Posts'),
                        _StatColumn(title: '10', label: 'Followers'),
                        _StatColumn(title: '14', label: 'Following'),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // Fila 2: Descripción
              const Text(
                'Animals',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const Text(
                'Health/Beauty\nMade in LA ⚡\nCruelty Free 🐰\n#ColourPopMe',
                style: TextStyle(height: 1.4),
              ),
              const SizedBox(height: 16),

              //fila 3:Botones
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _profileButton('Following'),
                  _profileButton('Message'),
                  _profileButton('Email'),
                ],
              ),
              const SizedBox(height: 20),

              //Fila 4: Historias
              SizedBox(
                height: 95,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: imageFiles.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('${imagePath}${imageFiles[index]}'),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Story ${index + 1}',
                            style: const TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),

              // Fila 5:imágenes
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: imageFiles.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Image.asset(
                    '${imagePath}${imageFiles[index]}',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Botón del perfil
  Widget _profileButton(String text) {
    return Expanded(
      child: Container(
        height: 35,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class _StatColumn extends StatelessWidget {
  final String title;
  final String label;

  const _StatColumn({required this.title, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(label),
      ],
    );
  }
}
