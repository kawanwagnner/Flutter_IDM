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
                    filled: true),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.amber[600],
                width: 500.0,
                height: 150.0,
              ),
            ),
            Text("Ofertas"),
            Text("Cards de frutas"),
            Text("Mais vendidos"),
            Text("Cards de frutas"),
            Text(""),
          ],
        ));
  }
}
