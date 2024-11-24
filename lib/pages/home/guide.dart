// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Guide extends StatelessWidget {
  const Guide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
          left: 5.0,
          right: 5.0,
          bottom: 1.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
            border: Border.all(
              width: 1.0,
              color: Colors.white.withOpacity(0.4),
            ),
          ),
          child: Center(
            child: Container(
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
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
                    offset: const Offset(0, 2),
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
                        icon: Icon(Icons.notifications),
                        iconSize: 30,
                        onPressed: () {
                          // Action lors du clic sur l'icône de notifications
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
                  body: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: const Text(
                          'Salut',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Trouvez...',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                    borderSide: BorderSide.none,
                                  ),
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            IconButton(
                              icon: const Icon(Icons.search),
                              iconSize: 30,
                              onPressed: () {
                                // Action lors du clic sur l'icône de recherche
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16.0),
                        child: const Text(
                          'Sélectionnez un type des Cours :',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Wrap(
                                spacing: 10.0,
                                children: [
                                  ChoiceChip(
                                    label: const Text('Toutes'),
                                    selected: true,
                                    onSelected: (bool selected) {
                                      // Action lors de la sélection de ce produit
                                    },
                                  ),
                                  ChoiceChip(
                                    label: const Text('Téchnique'),
                                    selected: false,
                                    onSelected: (bool selected) {
                                      // Action lors de la sélection de ce produit
                                    },
                                  ),
                                  ChoiceChip(
                                    label: const Text('Animatrice'),
                                    selected: false,
                                    onSelected: (bool selected) {
                                      // Action lors de la sélection de ce produit
                                    },
                                  ),
                                  ChoiceChip(
                                    label: const Text('Sports'),
                                    selected: false,
                                    onSelected: (bool selected) {
                                      // Action lors de la sélection de ce produit
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 16.0),
                        child: const Text(
                          'Cours disponibles :',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          itemCount: cours.length,
                          itemBuilder: (context, index) {
                            final cour = cours[index];
                            return GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  '/course',
                                  arguments:
                                      cour, // On passe le cours en argument
                                );
                              },
                              child: Container(
                                width: double.infinity,
                                height: 200,
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10.0),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 5,
                                      spreadRadius: 2,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    cour['image']!,
                                    width: double.infinity,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 18),
                    ],
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
                    selectedItemColor: const Color.fromARGB(255, 199, 68, 255),
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
    );
  }
}

final List<Map<String, String>> cours = [
  {
    'image': 'assets/images/cour1.jpg',
    'name': 'Photographie',
    'description': 'Découvrez les bases de la photographie.',
  },
  {
    'image': 'assets/images/cour2.jpg',
    'name': 'Musique',
    'description': 'Apprenez la musique et la production sonore.',
  },
  // Ajouter plus de cours ici
];
