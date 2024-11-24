// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:mediapro/pages/Animateur/card.dart';
import 'package:flutter/material.dart';
import 'package:mediapro/pages/home/voix.dart';
import './animateur.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Animateur/card.dart';
import './voix.dart';

class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 5.0,
            right: 5.0,
            bottom: 1.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)], // Dégradé doux
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(25.0), // Arrondi des coins
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 5,
                  offset: Offset(0, 3), // Ombre subtile
                ),
              ],
              border: Border.all(
                width: 1.0,
                color: Colors.white.withOpacity(0.4), // Bordure translucide
              ),
            ),
            child: Center(
              child: Container(
                margin: EdgeInsets.all(0.0),
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFD4A9FF), Color(0xFF80D1FF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  border: Border.all(
                    width: 1.0,
                    color: Colors.transparent,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 5,
                      spreadRadius: 2,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Scaffold(
                    appBar: AppBar(
                      title: ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [
                            Color(0xFFB993D6),
                            Color(0xFF8CA6DB)
                          ], // Dégradé de titre
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds),
                        child: Text(
                          'Mediapro', // Nom de l'application
                          style: GoogleFonts.lobster(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      actions: [
                        // Icône de notifications
                        IconButton(
                          icon: const Icon(Icons.notifications),
                          iconSize: 30,
                          onPressed: () {
                            Navigator.pushNamed(context, '/notification');
                          },
                        ),
                        // Avatar utilisateur
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context,
                                  '/profile'); // Navigation vers la route '/profile'
                            },
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/animateur.jpg'),
                              radius: 20, // Taille du cercle
                            ),
                          ),
                        ),
                      ],
                      backgroundColor: Colors.transparent, // Fond transparent
                      elevation: 0,
                    ),
                    body: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            SizedBox(height: 25),
                            Text(
                              'Les Offers et les promos :',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 20),
                            Column(
                              children: [
                                SizedBox(
                                  height: 200,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/promo');
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.asset(
                                            'assets/images/promo2.jpg',
                                            width: 330,
                                            height: 173,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.pushNamed(
                                              context, '/promo');
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.asset(
                                            'assets/images/promo2.jpg',
                                            width: 330,
                                            height: 173,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Les Animateurs :',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/animateur');
                                  },
                                  child: Text(
                                    'Voir toutes',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(255, 131, 22, 143),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 230,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Center(
                                    child: SizedBox(
                                      width: 200,
                                      child: UserProfile(
                                        name: 'Anes Mahammedi',
                                        photoUrl: 'assets/images/animateur.jpg',
                                        rating: 5,
                                        location: 'Nàama',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Center(
                                    child: SizedBox(
                                      width: 200,
                                      child: UserProfile(
                                        name: 'Mounir Hadjadji',
                                        photoUrl: 'assets/images/animateur.jpg',
                                        rating: 5,
                                        location: 'oran',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Center(
                                    child: SizedBox(
                                      width: 200,
                                      child: UserProfile(
                                        name: 'Abdelkader Derbale',
                                        photoUrl: 'assets/images/animateur.jpg',
                                        rating: 5,
                                        location: 'Alger',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Choisissez une langue :',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Français'),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Anglais'),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Espagnol'),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),

                            Container(
                              height: 350,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Center(
                                    child: SizedBox(
                                      width: 320,
                                      child: VoiceOverProfile(
                                        name: 'Anes Mahammedi',
                                        photoUrl: 'assets/images/voix.jpg',
                                        rating: 5.0,
                                        language: 'English',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Center(
                                    child: SizedBox(
                                      width: 320,
                                      child: VoiceOverProfile(
                                        name: 'Mounir Hadjadji',
                                        photoUrl: 'assets/images/voix.jpg',
                                        rating: 3.4,
                                        language: 'English',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Center(
                                    child: SizedBox(
                                      width: 320,
                                      child: VoiceOverProfile(
                                        name: 'Abdelkader Derbale',
                                        photoUrl: 'assets/images/voix.jpg',
                                        rating: 5.0,
                                        language: 'English',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    'Produits et Conseilles :',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            // Trois containers en ligne
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // Premier Container avec l'icône Produit
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context,
                                        '/product'); // Navigation vers /produit
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFD4A9FF),
                                          Color(0xFF80D1FF)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons
                                                .shopping_cart, // Icône Produit
                                            color: Colors.white,
                                            size: 60,
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Produit',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color.fromARGB(
                                                  255, 248, 248, 248),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                // Deuxième Container avec l'icône Conseil
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context,
                                        '/conseille'); // Navigation vers /conseille
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFD4A9FF),
                                          Color(0xFF80D1FF)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons
                                                .lightbulb_outline, // Icône Conseil
                                            color: Colors.white,
                                            size: 60,
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Conseille',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color.fromARGB(
                                                  255, 248, 248, 248),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/guide');
                                  },
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFFD4A9FF),
                                          Color(0xFF80D1FF)
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Center(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.map, // Icône Guide
                                            color: Colors.white,
                                            size: 60,
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            'Guide',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color.fromARGB(
                                                  255, 248, 248, 248),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    bottomNavigationBar: BottomNavigationBar(
                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home),
                          label: 'Accueil',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.mic),
                          label: 'Animateur',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.person),
                          label: 'Utilisateur',
                        ),
                      ],
                      selectedItemColor:
                          const Color.fromARGB(255, 199, 68, 255),
                      unselectedItemColor: Colors.grey,
                      backgroundColor: Colors.white,
                      onTap: (int index) {
                        switch (index) {
                          case 0:
                            break;
                          case 1:
                            Navigator.pushNamed(context, '/animateur');
                            break;
                          case 2:
                            Navigator.pushNamed(context, '/utilisateur');
                            break;
                        }
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
