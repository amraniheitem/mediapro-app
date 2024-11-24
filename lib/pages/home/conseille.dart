// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../home/conseille1.dart'; // Import de l'écran d'inscription

class Conseille extends StatelessWidget {
  const Conseille({super.key});

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
              borderRadius: BorderRadius.circular(25.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
              border: Border.all(
                width: 1.0,
                color: Colors.white.withOpacity(0.4),
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
                    body: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 10), // Espacement au-dessus de la Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Texte aligné à gauche
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'May 5, 2025',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      "Aujourd’hui",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                // Avatar aligné à droite
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context,
                                          '/profile'); // Navigation vers la route '/profile'
                                    },
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assets/images/animateur.jpg'),
                                      radius: 30, // Taille du cercle
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 30),

                            Row(
                              children: [
                                const Text(
                                  "Dim   Lun   Mar   Mer   Jeu   Ven   ",
                                  style: TextStyle(
                                    fontSize: 18.5,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  "Sam",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18.5,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const Text(
                                  "  5        6        7        8        9       10     ",
                                  style: TextStyle(
                                    fontSize: 18.5,
                                  ),
                                ),
                                const Text(
                                  "11",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 18.5,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 20),
                            Conseille1(
                              name:
                                  "Soyez authentique et engagez votre public avec enthousiasme et humour",
                            ),
                            SizedBox(height: 20),
                            Conseille1(
                              name:
                                  "Préparez-vous minutieusement mais restez flexible pour improviser",
                            ),
                            SizedBox(height: 20),
                            Conseille1(
                              name:
                                  "Soyez attentif aux réactions du public et ajustez votre approche en conséquence.",
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                Text(
                                  'Des Vidéos :',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  width: 87,
                                ),
                                Text(
                                  'Voir toutes',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 131, 22, 143),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                              ],
                            ),

                            Container(
                              height: 120,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'assets/images/promo2.jpg',
                                      width: 180,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'assets/images/promo2.jpg',
                                      width: 180,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'assets/images/promo2.jpg',
                                      width: 180,
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
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
                            Navigator.pushNamed(context, '/home1');
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
