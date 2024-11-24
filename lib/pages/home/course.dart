import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './commande2.dart'; // Import de l'écran d'inscription

class Course extends StatelessWidget {
  const Course({super.key});

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
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      iconSize: 30,
                      onPressed: () {
                        // Action lors du clic sur retour
                        Navigator.pop(context);
                      },
                    ),
                    title: ShaderMask(
                      shaderCallback: (bounds) => const LinearGradient(
                        colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ).createShader(bounds),
                      child: Text(
                        'Course Détaille',
                        style: GoogleFonts.lobster(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage:
                              const AssetImage('assets/images/animateur.jpg'),
                          radius: 20,
                        ),
                      ),
                    ],
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  body: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/images/excel.PNG',
                              width: double.infinity,
                              height: 200,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Formation Excel pour tous les niveaux',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: const Color.fromARGB(255, 149, 56, 203),
                              size: 30.0,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '4.8 (25 Évaluations)',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 149, 56, 203),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Colors.transparent,
                                    isScrollControlled: true,
                                    builder: (context) => _buildBottomSheet(
                                      context,
                                      'Description',
                                      'Découvrez les fonctionnalités d\'Excel, de la saisie de données à la création de graphiques dynamiques. Cette formation est conçue pour les débutants et les utilisateurs avancés qui souhaitent approfondir leurs connaissances. Vous apprendrez à utiliser des formules, des fonctions avancées, à gérer des tableaux croisés dynamiques et à automatiser des tâches avec des macros. À la fin de ce cours, vous serez capable de créer des rapports professionnels et de mieux gérer vos données.',
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 20),
                                  backgroundColor: Colors.white, // Fond blanc
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        50), // Bordure arrondie
                                    side: BorderSide(
                                      color: const Color(
                                          0xFFB993D6), // Couleur mauve pour le contour
                                      width: 2, // Épaisseur du contour
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Description',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Colors.transparent,
                                    isScrollControlled: true,
                                    builder: (context) => _buildBottomSheet(
                                      context,
                                      'À propos du formateur',
                                      'Jean Dupont est expert en analyse de données avec plus de 10 ans d\'expérience dans l\'enseignement d\'Excel. Il a formé des centaines d\'apprenants, allant des étudiants aux professionnels en entreprise. Passionné par la transmission du savoir, Jean utilise des méthodes d\'enseignement interactives pour garantir une expérience d\'apprentissage engageante et efficace. Son approche pratique et ses astuces du quotidien vous permettront de maîtriser Excel rapidement.',
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 20),
                                  backgroundColor: Colors.white, // Fond blanc
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        50), // Bordure arrondie
                                    side: BorderSide(
                                      color: const Color(
                                          0xFFB993D6), // Couleur mauve pour le contour
                                      width: 2, // Épaisseur du contour
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'À propos',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Colors.transparent,
                                    isScrollControlled: true,
                                    builder: (context) => _buildBottomSheet(
                                      context,
                                      'Leçons',
                                      '''
                                      **Leçons :**

                                      1. **Introduction à Excel**
                                         - Navigation de l'interface utilisateur
                                         - Saisie de données et formatage de cellules

                                      2. **Formules et Fonctions**
                                         - Utilisation des formules de base
                                         - Introduction aux fonctions avancées (SI, RECHERCHEV, etc.)

                                      3. **Tableaux et Graphiques**
                                         - Création de tableaux et de graphiques dynamiques
                                         - Personnalisation de graphiques

                                      4. **Tableaux Croisés Dynamiques**
                                         - Création et utilisation de tableaux croisés dynamiques
                                         - Analyse de données complexes

                                      5. **Automatisation avec des Macros**
                                         - Introduction aux macros
                                         - Enregistrement et exécution de macros simples

                                      6. **Gestion des Données**
                                         - Tri et filtrage des données
                                         - Validation des données

                                      7. **Cas Pratiques**
                                         - Mise en pratique des compétences acquises à travers des projets réels
                                      ''',
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 12, horizontal: 20),
                                  backgroundColor: Colors.white, // Fond blanc
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        50), // Bordure arrondie
                                    side: BorderSide(
                                      color: const Color(
                                          0xFFB993D6), // Couleur mauve pour le contour
                                      width: 2, // Épaisseur du contour
                                    ),
                                  ),
                                ),
                                child: const Text(
                                  'Leçons',
                                  style: TextStyle(fontSize: 18),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Text(
                              'Prix du cours',
                              style: GoogleFonts.aBeeZee(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 70),
                            Text(
                              '\$1200',
                              style: TextStyle(
                                fontSize: 23.0,
                                color: const Color.fromARGB(255, 110, 56, 203),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(
                                  50), // BorderRadius du bouton
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                // Action lors du clic sur l'icône pour passer commande
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Command2Page(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 20),
                                backgroundColor: Colors
                                    .transparent, // Transparent pour afficher le dégradé
                                shadowColor: Colors
                                    .transparent, // Pas d'ombre pour éviter conflit avec gradient
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      50), // Bordure arrondie
                                ),
                              ),
                              child: const Text(
                                "Inscription",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white, // Couleur du texte
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
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

  // Méthode pour afficher le bottom sheet amélioré
  Widget _buildBottomSheet(BuildContext context, String title, String content) {
    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.4,
      maxChildSize: 0.7,
      minChildSize: 0.3,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              controller: scrollController,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(content),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Fermer'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
