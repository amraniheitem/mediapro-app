import 'package:mediapro/pages/User/probleme.dart';
import 'package:flutter/material.dart';
import 'pages/login.dart'; // Import de l'écran de connexion
import './pages/signup/signup1.dart'; // Import de l'écran d'inscription
import './pages/signup/signup2.dart'; // Import de l'écran d'inscription
import './pages/signup/signup3.dart'; // Import de l'écran d'inscription
import './pages/home/home1.dart'; // Import de l'écran d'inscription
import './pages/home/conseille.dart'; // Import de l'écran d'inscription
import './pages/home/home-product1.dart'; // Import de l'écran d'inscription
import './pages/home/product-detaille.dart'; // Import de l'écran d'inscription
import './pages/home/guide.dart'; // Import de l'écran d'inscription
import './pages/home/notification.dart'; // Import de l'écran d'inscription
import './pages/Animateur/animateur.dart'; // Import de l'écran d'inscription
import './pages/Animateur/animateur-detaille.dart'; // Import de l'écran d'inscription
import './pages/Animateur/contactez.dart'; // Import de l'écran d'inscription
import './pages/home/course.dart'; // Import de l'écran d'inscription
import './pages/User/user.dart'; // Import de l'écran d'inscription
import './pages/User/profile.dart'; // Import de l'écran d'inscription
import './pages/User/team.dart'; // Import de l'écran d'inscription
import './pages/home/voice-detaille.dart'; // Import de l'écran d'inscription
import './pages/User/about.dart'; // Import de l'écran d'inscription

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Supprime la bannière "DEBUG"
      title: 'Star Event',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Définir la route initiale
      routes: {
        '/': (context) => Login(), // Route pour l'écran de connexion
        '/signup': (context) => Signup(), // Route pour l'écran d'inscription
        '/product-detaille': (context) =>
            ProductDetailPage(), // Route pour l'écran d'inscription
        '/signup2': (context) => Signup2(), // Route pour l'écran d'inscription
        '/animateur': (context) =>
            Animateur(), // Route pour l'écran d'inscription
        '/signup3': (context) => Signup3(), // Route pour l'écran d'inscription
        '/animateur-detaille': (context) =>
            AnimateurDetaille(), // Route pour l'écran d'inscription
        '/home1': (context) => Home1(), // Route pour l'écran d'inscription
        '/profile': (context) => Profile(), // Route pour l'écran d'inscription
        '/about': (context) => About(), // Route pour l'écran d'inscription
        '/notification': (context) =>
            NotificationPage(), // Route pour l'écran d'inscription
        '/team': (context) => Team(), // Route pour l'écran d'inscription
        '/probleme': (context) =>
            Probleme(), // Route pour l'écran d'inscription
        '/utilisateur': (context) => User(), // Route pour l'écran d'inscription
        '/course': (context) => Course(), // Route pour l'écran d'inscription
        '/contactez': (context) =>
            Contactez(), // Route pour l'écran d'inscription
        '/guide': (context) => Guide(), // Route pour l'écran d'inscription
        '/voice-detaille': (context) =>
            VoiceDetailPage(), // Route pour l'écran d'inscription
        '/conseille': (context) =>
            Conseille(), // Route pour l'écran d'inscription
        '/product': (context) =>
            HomeProduct(), // Route pour l'écran d'inscription
      },
    );
  }
}
