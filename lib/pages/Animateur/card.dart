import 'package:flutter/material.dart';

class AnimateurCard extends StatelessWidget {
  final String name;
  final String photoUrl;
  final String location;
  final int rating;

  const AnimateurCard({
    Key? key,
    required this.name,
    required this.photoUrl,
    required this.location,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 282,
      height: 215,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/card.PNG'), // Background image
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20), // Increased border radius
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Stronger shadow
            blurRadius: 10, // Larger blur radius
            offset: Offset(0, 5),
          ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(25, 20, 15, 15), // Adjusted padding
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage(photoUrl),
                radius: 45,
                backgroundColor:
                    Colors.transparent, // Remove default background
              ),
              SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              blurRadius: 5.0,
                              color: Colors.black.withOpacity(0.5),
                              offset: Offset(0, 3),
                            )
                          ]),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Icon(Icons.location_pin, color: Colors.white, size: 20),
                        SizedBox(width: 5),
                        Text(
                          location,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10), // Increased spacing
          Divider(color: Colors.white.withOpacity(0.7)), // Added divider
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildStatColumn("23", "Evénements"),
              _buildStatColumn("256", "J'aime"),
              _buildStatColumn("3.4", "Évaluation", highlight: true),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatColumn(String value, String label,
      {bool highlight = false}) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: highlight
                  ? Color(0xFF9A47DD)
                  : Colors.white, // Highlight specific stats
              shadows: [
                Shadow(
                  blurRadius: 3.0,
                  color: Colors.black.withOpacity(0.3),
                  offset: Offset(0, 3),
                ),
              ]),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            color: highlight
                ? Color(0xFF9A47DD)
                : Colors.white.withOpacity(0.8), // Adjust label color
          ),
        ),
      ],
    );
  }
}
