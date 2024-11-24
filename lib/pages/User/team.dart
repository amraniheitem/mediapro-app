import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Team extends StatefulWidget {
  const Team({super.key});

  @override
  _TeamState createState() => _TeamState();
}

class _TeamState extends State<Team> {
  String? selectedDomain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds),
          child: Text(
            'MediaPro team',
            style: GoogleFonts.lobster(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Dropdown pour sélectionner le domaine
            Text(
              "Sélectionnez un domaine:",
              style:
                  GoogleFonts.roboto(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            DropdownButton<String>(
              value: selectedDomain,
              hint: const Text("Choisissez un domaine"),
              items: ['Animateur', 'Voix Off', 'Formateur', 'Produit en Vente']
                  .map((String domain) {
                return DropdownMenuItem<String>(
                  value: domain,
                  child: Text(domain),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDomain = value;
                });
              },
            ),
            const SizedBox(height: 20),

            if (selectedDomain != null)
              Expanded(
                child: SingleChildScrollView(
                  child: DomainForm(domain: selectedDomain!),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// Widget pour afficher le formulaire spécifique selon le domaine sélectionné
class DomainForm extends StatelessWidget {
  final String domain;

  const DomainForm({required this.domain});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonFields(), // Coordonnées communes pour tous les domaines
        const SizedBox(height: 20),
        if (domain == 'Animateur') AnimatorForm(),
        if (domain == 'Voix Off') VoiceOffForm(),
        if (domain == 'Formateur') TrainerForm(),
        if (domain == 'Produit en Vente') ProductForm(),
      ],
    );
  }
}

// Champs communs pour tous les domaines (Nom, Prénom, etc.)
class CommonFields extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          decoration: const InputDecoration(labelText: 'Nom'),
        ),
        TextField(
          decoration: const InputDecoration(labelText: 'Prénom'),
        ),
        TextField(
          decoration: const InputDecoration(labelText: 'Wilaya'),
        ),
        TextField(
          decoration: const InputDecoration(labelText: 'Adresse'),
        ),
        TextField(
          decoration: const InputDecoration(labelText: 'Numéro de téléphone'),
          keyboardType: TextInputType.phone,
        ),
      ],
    );
  }
}

// Formulaire spécifique pour Animateur
class AnimatorForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(labelText: 'Années d\'expérience'),
        ),
        TextField(
          decoration: const InputDecoration(labelText: 'Type de Programme'),
        ),
        const SizedBox(height: 20),
        SubmitButton(),
      ],
    );
  }
}

class VoiceOffForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(labelText: 'Type de voix'),
        ),
        TextField(
          decoration: const InputDecoration(labelText: 'Langues maîtrisées'),
        ),
        const SizedBox(height: 20),
        SubmitButton(),
      ],
    );
  }
}

class TrainerForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(labelText: 'Domaine de formation'),
        ),
        TextField(
          decoration: const InputDecoration(labelText: 'Expérience'),
        ),
        const SizedBox(height: 20),
        SubmitButton(),
      ],
    );
  }
}

// Formulaire spécifique pour Produit en Vente
class ProductForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(labelText: 'Nom du produit'),
        ),
        TextField(
          decoration: const InputDecoration(labelText: 'Description'),
        ),
        TextField(
          decoration: const InputDecoration(labelText: 'Quantité du produit'),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 20),
        SubmitButton(),
      ],
    );
  }
}

// Bouton de soumission
class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Action lors de la soumission
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      child: const Text("Soumettre"),
    );
  }
}
