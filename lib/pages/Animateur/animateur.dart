import 'package:flutter/material.dart';
import './card.dart'; // Assurez-vous que ce fichier contient la définition de AnimateurCard

class Animateur extends StatefulWidget {
  const Animateur({super.key});

  @override
  _AnimateurState createState() => _AnimateurState();
}

class _AnimateurState extends State<Animateur> {
  int _selectedIndex = 0;

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
                colors: [
                  Color(0xFFD4A9FF).withOpacity(0.6),
                  Color(0xFF80D1FF).withOpacity(0.6),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              color: Colors.white,
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
                    colors: [
                      Color(0xFFD4A9FF).withOpacity(0.7),
                      Color(0xFF80D1FF).withOpacity(0.7),
                    ],
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
                    body: Column(
                      children: [
                        AppBar(
                          automaticallyImplyLeading: false,
                          backgroundColor: Colors.transparent,
                          elevation: 0,
                          flexibleSpace: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFFD4A9FF).withOpacity(0.6),
                                  Color(0xFF80D1FF).withOpacity(0.6),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(20.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                  spreadRadius: 5,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 25.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.arrow_back,
                                            color: Colors.black),
                                        onPressed: () {
                                          Navigator.pushReplacementNamed(
                                              context, "/home1");
                                        },
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.menu,
                                            color: Colors.black),
                                        onPressed: () {},
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.0),
                                  TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Rechercher un animateur...',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        borderSide: BorderSide.none,
                                      ),
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                    ),
                                  ),
                                  SizedBox(height: 18),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          child: Wrap(
                                            spacing: 10.0,
                                            children: [
                                              ChoiceChip(
                                                label: Text('Toutes'),
                                                selected: false,
                                                onSelected: (bool selected) {},
                                              ),
                                              ChoiceChip(
                                                label: Text('Sport'),
                                                selected: true,
                                                onSelected: (bool selected) {},
                                              ),
                                              ChoiceChip(
                                                label: Text('Culture'),
                                                selected: false,
                                                onSelected: (bool selected) {},
                                              ),
                                              ChoiceChip(
                                                label: Text('Nothing'),
                                                selected: false,
                                                onSelected: (bool selected) {},
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/animateur-detaille',
                                    arguments: {
                                      'name': 'Anes Mahammedi',
                                      'photoUrl': 'assets/images/animateur.jpg',
                                      'rating': 5,
                                      'location': 'Nàama',
                                    },
                                  );
                                },
                                child: Center(
                                  child: SizedBox(
                                    width: 320,
                                    child: AnimateurCard(
                                      name: 'Anes Mahammedi',
                                      photoUrl: 'assets/images/animateur.jpg',
                                      rating: 5,
                                      location: 'Nàama',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/animateur-detaille',
                                    arguments: {
                                      'name': 'Mounir Hadjadji',
                                      'photoUrl': 'assets/images/animateur.jpg',
                                      'rating': 4,
                                      'location': 'Oran',
                                    },
                                  );
                                },
                                child: Center(
                                  child: SizedBox(
                                    width: 320,
                                    child: AnimateurCard(
                                      name: 'Mounir Hadjadji',
                                      photoUrl: 'assets/images/animateur.jpg',
                                      rating: 4,
                                      location: 'Oran',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/animateur-detaille',
                                    arguments: {
                                      'name': 'Salah Mahammedi',
                                      'photoUrl': 'assets/images/animateur.jpg',
                                      'rating': 5,
                                      'location': 'Alger',
                                    },
                                  );
                                },
                                child: Center(
                                  child: SizedBox(
                                    width: 320,
                                    child: AnimateurCard(
                                      name: 'Salah Mahammedi',
                                      photoUrl: 'assets/images/animateur.jpg',
                                      rating: 5,
                                      location: 'Alger',
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
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
                      selectedItemColor: const Color.fromARGB(
                          255, 199, 68, 255), // Couleur de l'icône sélectionnée
                      unselectedItemColor:
                          Colors.grey, // Couleur des icônes non sélectionnées
                      currentIndex:
                          _selectedIndex, // Ajoutez ceci pour suivre l'index sélectionné
                      onTap: (int index) {
                        setState(() {
                          _selectedIndex =
                              index; // Mettez à jour l'index sélectionné
                        });

                        switch (index) {
                          case 0:
                            Navigator.pushReplacementNamed(context, '/home1');
                            break;
                          case 2:
                            Navigator.pushReplacementNamed(
                                context, '/utilisateur');
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
