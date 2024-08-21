import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyCartScreen(),
    );
  }
}

class MyCartScreen extends StatelessWidget {
  final List<CartItem> items = [
    CartItem(
        name: 'Bell Pepper Red',
        quantity: '1kg',
        price: 4.99,
        image: 'assets/banana.png'),
    CartItem(
        name: 'Egg Chicken Red',
        quantity: '4pcs',
        price: 1.99,
        image: 'assets/banana.png'),
    CartItem(
        name: 'Organic Bananas',
        quantity: '12kg',
        price: 3.00,
        image: 'assets/banana.png'),
    CartItem(
        name: 'Ginger',
        quantity: '250gm',
        price: 2.99,
        image: 'assets/banana.png'),
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
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(item.image, width: 50, height: 50),
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
              ],
            ),
            Spacer(),
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {},
                ),
                Text('1', style: TextStyle(fontSize: 16)),
                IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(width: 16),
            Text('\$${item.price.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.green,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Go to Checkout',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Text(
            '\$${total.toStringAsFixed(2)}',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
