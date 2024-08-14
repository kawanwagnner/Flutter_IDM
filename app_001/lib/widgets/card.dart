import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 200,
        height: 280,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 10.0),
            Image.network(
              'assets/img/banana.png', // Coloque a URL da imagem da banana aqui
              height: 80,
            ),
            Text(
              'Organic Bananas',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text(
                '7 pcs, (1 kg)',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  'R\$4.99',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                    width:
                        50.0), // Adiciona um espaço de 16 pixels entre o Text e o ElevatedButton
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(18),
                    backgroundColor: Colors.green, // Cor de fundo do botão
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
