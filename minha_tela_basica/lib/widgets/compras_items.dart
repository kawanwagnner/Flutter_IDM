import 'package:flutter/material.dart';
import 'package:minha_tela_basica/model/compras_modelo.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem item;

  const CartItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: Colors.white,
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Row(
              children: [
                Image.asset(item.image, width: 80, height: 80),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.name,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text(item.quantity,
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.remove_circle_outline,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                        Text('1', style: TextStyle(fontSize: 16)),
                        IconButton(
                          icon: Icon(
                            Icons.add_circle_outline,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                SizedBox(width: 16),
                Container(
                  width: 80,
                  height: 100,
                  child: Stack(
                    children: [
                      // O texto que ficará visível normalmente
                      Positioned(
                        top: 0, // Ajuste a posição do ícone conforme necessário
                        right:
                            0, // Ajuste a posição do ícone conforme necessário
                        child: IconButton(
                          icon: Icon(Icons.close, size: 25, color: Colors.grey),
                          onPressed: () {},
                        ),
                        // O ícone que será posicionado no canto superior
                      ),
                      Positioned(
                        bottom: 10,
                        right: 5,
                        child: Text(
                          '\$${item.price.toStringAsFixed(2)}',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
