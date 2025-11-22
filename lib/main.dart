import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/screens.dart';

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
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),

        scaffoldBackgroundColor: const Color(0xFFE2E2E2), 

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFCFCFCF),
          foregroundColor: Colors.black,
          elevation: 0,
        ),

        drawerTheme: const DrawerThemeData(
          backgroundColor: Color(0xFFDADADA),
        ),

        textTheme: GoogleFonts.poppinsTextTheme(),
      ),


      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),

        '/': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/thumbs3': (context) => const Thumbs3Screen(),
        '/icon_rows': (context) => const IconRowsScreen(),
        '/image_columns': (context) => const ImageColumnsScreen(),
        '/text_styles': (context) => const TextStylesScreen(),
        '/repeated_images': (context) => const RepeatedImagesScreen(),
        '/responsive_images': (context) => const ResponsiveImagesScreen(),
        '/challenge': (context) => const ChallengeScreen(),
        '/counter': (context) => const CounterScreen(),
        '/instagram': (context) => const InstagramProfileScreen(),
        '/random_tap_game': (context) => const RandomTapGameScreen(),
      },
    );
  }
}
