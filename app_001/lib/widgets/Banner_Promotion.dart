import 'package:flutter/material.dart';

class Banner_Promotion extends StatelessWidget {
  const Banner_Promotion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(0, 255, 179,
                    0), // Use color here instead of direct color property
                border: Border.all(
                  color: const Color.fromARGB(255, 0, 0, 0), // Border color
                  width: 2, // Border width
                ),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://png.pngtree.com/thumb_back/fw800/background/20231229/pngtree-exquisite-close-up-of-iceberg-lettuce-leaves-revealing-intricate-texture-against-image_13795159.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              margin: const EdgeInsets.all(10.0),
              width: 500.0,
              height: 150.0,
            ),
          ),
          Positioned(
            top: 60,
            right: 0,
            left: 300,
            child: Text(
              'Vlw Ricks do Rodo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Cor do texto
              ),
            ),
          ),
        ],
      ),
    );
  }
}
