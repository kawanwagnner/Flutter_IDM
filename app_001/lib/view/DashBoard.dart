import 'package:app_001/widgets/Banner_Promotion.dart';
import 'package:app_001/widgets/card.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grocery Shopp")),
      body: Column(
        children: [
          Center(
              child: Image.asset(
            "assets/img/logo.png",
            height: 95,
          )),
          Text("Grocery"),
          Row(
            children: [
              Icon(Icons.location_on),
              Text("Cotia, São Paulo."),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Pesquisar na Loja',
                prefixIcon: Icon(Icons.search),
                fillColor: const Color.fromARGB(26, 158, 158, 158),
                filled: true,
              ),
            ),
          ),
          Banner_Promotion(),
          Text("Ofertas"),
          Text("Cards de frutas"),
          Row(
            mainAxisAlignment: MainAxisAlignment
                .center, // Centraliza os cartões horizontalmente
            crossAxisAlignment: CrossAxisAlignment
                .center, // Centraliza os cartões verticalmente (opcional)
            children: [
              CustomCard(),
              CustomCard(),
            ],
          ), // Usando o CustomCard aqui
          Text("Mais vendidos"),
          Text("Cards de frutas"),
        ],
      ),
    );
  }
}
