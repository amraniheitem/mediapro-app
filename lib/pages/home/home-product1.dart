import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../home/product-detaille.dart'; // Import de l'écran d'inscription

class HomeProduct extends StatelessWidget {
  const HomeProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Définition des routes ici
      routes: {
        '/product-detaille': (context) => ProductDetailPage(),
      },
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
                  offset: Offset(0, 3),
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
                    appBar: AppBar(
                      leading: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.black),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      title: ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          colors: [Color(0xFFB993D6), Color(0xFF8CA6DB)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds),
                        child: Text(
                          'Product',
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
                                AssetImage('assets/images/animateur.jpg'),
                            radius: 20,
                          ),
                        ),
                      ],
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                    ),
                    body: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
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
                                    hintText: 'Rechercher un produit...',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                      borderSide: BorderSide.none,
                                    ),
                                    filled: true,
                                    fillColor: Colors.grey[200],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              IconButton(
                                icon: Icon(Icons.search),
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
                          child: Text(
                            'Sélectionnez un type de produit :',
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
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Wrap(
                                  spacing: 10.0,
                                  children: [
                                    ChoiceChip(
                                      label: Text('Électronique'),
                                      selected: false,
                                      onSelected: (bool selected) {
                                        // Action lors de la sélection de ce produit
                                      },
                                    ),
                                    ChoiceChip(
                                      label: Text('Vêtements'),
                                      selected: true,
                                      onSelected: (bool selected) {
                                        // Action lors de la sélection de ce produit
                                      },
                                    ),
                                    ChoiceChip(
                                      label: Text('Maison'),
                                      selected: false,
                                      onSelected: (bool selected) {
                                        // Action lors de la sélection de ce produit
                                      },
                                    ),
                                    ChoiceChip(
                                      label: Text('Sports'),
                                      selected: false,
                                      onSelected: (bool selected) {
                                        // Action lors de la sélection de ce produit
                                      },
                                    ),
                                    ChoiceChip(
                                      label: Text('Beauté'),
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
                          child: Text(
                            'Produits disponibles :',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Expanded(
                          child: GridView.builder(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 0.75,
                            ),
                            itemCount: products.length,
                            itemBuilder: (context, index) {
                              final product = products[index];
                              return GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                    context,
                                    '/product-detaille',
                                    arguments:
                                        product, // Passing the product data
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        blurRadius: 5,
                                        spreadRadius: 2,
                                        offset: Offset(0, 3),
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          child: Image.asset(
                                            product['image']!,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              product['name']!,
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            SizedBox(height: 5.0),
                                            Center(
                                              child: Text(
                                                product['price']!,
                                                style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 18),
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

// Données d'exemple de produits
final List<Map<String, String>> products = [
  {
    'name': 'Produit 1',
    'price': '\$20.00',
    'image': 'assets/images/product.jpg',
  },
  {
    'name': 'Produit 2',
    'price': '\$35.00',
    'image': 'assets/images/product.jpg',
  },
  {
    'name': 'Produit 3',
    'price': '\$50.00',
    'image': 'assets/images/product.jpg',
  },
  {
    'name': 'Produit 4',
    'price': '\$15.00',
    'image': 'assets/images/product.jpg',
  },
];
