import 'package:flutter/material.dart';

class Conseille1 extends StatelessWidget {
  final String name;

  const Conseille1({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 225, 243, 255),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.lightbulb_outline,
              color: const Color.fromARGB(255, 64, 0, 255),
              size: 30), // Exemple d'icône
          SizedBox(width: 30), // Espacement entre l'icône et le texte

          // Utilisation de Expanded pour empêcher le texte de déborder
          Expanded(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 18.5,
                fontWeight: FontWeight.w900,
              ),
              softWrap: true, // Permet au texte de se découper automatiquement
              maxLines: 5, // Limite le nombre de lignes si besoin
              overflow: TextOverflow
                  .ellipsis, // Ajoute "..." si le texte est trop long
            ),
          ),
        ],
      ),
    );
  }
}
