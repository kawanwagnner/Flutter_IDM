import 'package:app_001/constants/styles.dart';
import 'package:flutter/material.dart';

class FindProjects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Products'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: textFieldDecoration),
            SizedBox(height: 20.0),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                children: [
                  CategoryCard(
                    title: 'Fresh Fruits & Vegetables',
                    imagePath: 'assets/img/fruits.jpg',
                  ),
                  CategoryCard(
                    title: 'Cooking Oil & Ghee',
                    imagePath: 'assets/img/oil.png',
                  ),
                  CategoryCard(
                    title: 'Meat & Fish',
                    imagePath: 'assets/img/banana.png',
                  ),
                  CategoryCard(
                    title: 'Bakery & Snacks',
                    imagePath: 'assets/img/banana.png',
                  ),
                  CategoryCard(
                    title: 'Dairy & Eggs',
                    imagePath: 'assets/img/banana.png',
                  ),
                  CategoryCard(
                    title: 'Beverages',
                    imagePath: 'assets/img/banana.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imagePath;

  const CategoryCard({
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 80.0,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10.0),
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
