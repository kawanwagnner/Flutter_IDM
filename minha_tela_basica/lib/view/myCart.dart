import 'package:flutter/material.dart';

class MyCartScreen extends StatelessWidget {
  final List<CartItem> items = [
    CartItem(
        name: 'Bell Pepper Red',
        quantity: '1kg, price',
        price: 4.99,
        image: 'assets/img/banana.png'),
    CartItem(
        name: 'Egg Chicken Red',
        quantity: '4pcs, price',
        price: 1.99,
        image: 'assets/img/banana.png'),
    CartItem(
        name: 'Organic Bananas',
        quantity: '12kg, price',
        price: 3.00,
        image: 'assets/img/banana.png'),
    CartItem(
        name: 'Ginger',
        quantity: '250gm, price',
        price: 2.99,
        image: 'assets/img/banana.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
        backgroundColor: Colors.transparent,
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

class CartItem {
  final String name;
  final String quantity;
  final double price;
  final String image;

  CartItem({
    required this.name,
    required this.quantity,
    required this.price,
    required this.image,
  });
}

class CartItemWidget extends StatelessWidget {
  final CartItem item;

  const CartItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
                    bottom: 10,
                    right: 5,
                    child: Text(
                      '\$${item.price.toStringAsFixed(2)}',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  // O ícone que será posicionado no canto superior
                  Positioned(
                    top: 0, // Ajuste a posição do ícone conforme necessário
                    right: 0, // Ajuste a posição do ícone conforme necessário
                    child: IconButton(
                      icon: Icon(Icons.close, size: 25, color: Colors.grey),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CheckoutButton extends StatelessWidget {
  final double total;

  const CheckoutButton({required this.total});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          // Ação ao clicar no botão
        },
        child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 10.0),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              width: 500,
              height: 30,
              child: Stack(
                children: [
                  Positioned(
                    top: 2,
                    left: 150,
                    child: const Text(
                      'Go to Checkout',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 5,
                    child: Text(
                      '\$${total.toStringAsFixed(2)}',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          backgroundColor: Colors.green[900]),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
