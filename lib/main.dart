import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/name_repo_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/thumbs3_screen.dart';
import 'screens/icon_rows_screen.dart';
import 'screens/image_columns_screen.dart';
import 'screens/text_styles_screen.dart';
import 'screens/repeated_images_screen.dart';
import 'screens/responsive_images_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Actividad Tema 1 - Drawer',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      initialRoute: '/name_repo',
      routes: {
        '/name_repo': (context) => const NameRepoScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/thumbs3': (context) => const Thumbs3Screen(),
        '/icon_rows': (context) => const IconRowsScreen(),
        '/image_columns': (context) => const ImageColumnsScreen(),
        '/text_styles': (context) => const TextStylesScreen(),
        '/repeated_images': (context) => const RepeatedImagesScreen(),
        '/responsive_images': (context) => const ResponsiveImagesScreen(),
      },
    );
  }
}
