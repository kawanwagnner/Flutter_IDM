import 'package:app_001/constants/styles.dart';
import 'package:app_001/view/findProjects.dart';
import 'package:app_001/widgets/Banner_Promotion.dart';
import 'package:app_001/widgets/card.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grocery Shop")),
      body: Column(
        children: [
          Center(
            child: Image.asset(
              "assets/img/logo.png",
              height: 35,
            ),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on),
              Text(
                "Cotia, São Paulo.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18.5),
              ),
            ],
          ),
          InputSearch(),
          Banner_Promotion(),
          Text("Ofertas"),
          Text("Cards de frutas"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomCard(),
              CustomCard(),
            ],
          ),
          Text("Mais vendidos"),
          Text("Cards de frutas"),
        ],
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
        onTap: (index) {
          if (index == 1) {
            // Índice do botão "Explore"
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FindProjects()),
            );
          }
        },
      ),
    );
  }
}

class InputSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: TextField(decoration: textFieldDecoration),
    );
  }
}
