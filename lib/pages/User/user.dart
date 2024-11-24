import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  _UserState createState() => _UserState();
}

class _UserState extends State<User> {
  int _selectedIndex = 0; // Stocker l'index sélectionné
  String _selectedLanguage = 'Français'; // Langue par défaut

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
                  body: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        // Sélecteur de langue
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            DropdownButton<String>(
                              value: _selectedLanguage,
                              icon: const Icon(Icons.language),
                              items: <String>['Français', 'عربى']
                                  .map((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedLanguage = newValue!;
                                });
                              },
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),

                        ShaderMask(
                          shaderCallback: (bounds) => const LinearGradient(
                            colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(bounds),
                          child: Text(
                            'Star Event',
                            style: GoogleFonts.lobster(
                              fontSize: 38,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),

                        // Image de profil
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/animateur.jpg'),
                        ),
                        const SizedBox(height: 30),
                        Center(
                          child: Column(
                            children: [
                              menu_user(Icons.person, 'Profile', () {
                                // Action pour le profil
                                Navigator.pushNamed(context, '/profile');
                              }),
                              const SizedBox(
                                  height: 20), // Espace entre les options
                              menu_user(Icons.group, 'Star event team', () {
                                // Action pour l'équipe star
                                Navigator.pushNamed(context, '/team');
                              }),
                              const SizedBox(
                                  height: 20), // Espace entre les options
                              menu_user(
                                  Icons.report_problem, 'Signaler un problème',
                                  () {
                                // Action pour signaler un problème
                                Navigator.pushNamed(context, '/probleme');
                              }),
                              const SizedBox(
                                  height: 20), // Espace entre les options
                              menu_user(Icons.info, 'À propos', () {
                                // Action pour à propos
                                Navigator.pushNamed(context, '/about');
                              }),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.logout),
                          label: const Text('Déconnecter'),
                          style: ElevatedButton.styleFrom(
                            iconColor: Colors.white, // Couleur de l'icône
                            backgroundColor:
                                Colors.redAccent, // Couleur de fond du bouton
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10), // Padding du bouton
                            textStyle: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ],
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
                    selectedItemColor: const Color.fromARGB(
                        255, 199, 68, 255), // Couleur de l'icône sélectionnée
                    unselectedItemColor:
                        Colors.grey, // Couleur des icônes non sélectionnées
                    currentIndex: _selectedIndex, // Suivre l'index sélectionné
                    onTap: (int index) {
                      setState(() {
                        _selectedIndex =
                            index; // Mettre à jour l'index sélectionné
                      });

                      switch (index) {
                        case 0:
                          Navigator.pushReplacementNamed(context, '/home1');
                          break;
                        case 1:
                          Navigator.pushReplacementNamed(context, '/animateur');
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

  // // Widget pour chaque option de menu cliquable
  Widget menu_user(IconData icon, String title, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white, // Couleur de fond pour l'option de menu
          borderRadius: BorderRadius.circular(10.0), // Border radius
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 5,
              spreadRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 20, horizontal: 16), // Ajouter un padding horizontal
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Espace entre les éléments
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  Icon(icon, size: 30, color: Colors.blue),
                  const SizedBox(width: 20),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Icon(Icons.chevron_right,
                  size: 30, color: Colors.blue), // Icône à droite
            ],
          ),
        ),
      ),
    );
  }
}
