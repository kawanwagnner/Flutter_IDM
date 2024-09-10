import 'package:flutter/material.dart';
import 'package:minha_tela_basica/model/compras_modelo.dart';
import 'package:minha_tela_basica/view/checkButton.dart';
import 'package:minha_tela_basica/widgets/compras_items.dart';

class MyCartScreen extends StatelessWidget {
  final List<CartItem> items = [
    CartItem(
        name: 'Bell Pepper Red',
        quantity: '1kg, price',
        price: 4.99,
        image: 'assets/img/image.png'),
    CartItem(
        name: 'Egg Chicken Red',
        quantity: '4pcs, price',
        price: 1.99,
        image: 'assets/img/image.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return CartItemWidget(item: items[index]);
              },
            ),
          ),
          CheckoutButton(total: 12.96),
        ],
      ),
    );
  }
}
