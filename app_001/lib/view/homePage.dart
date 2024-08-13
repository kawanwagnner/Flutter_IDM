import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(8.0),
                      color: Colors.white,
                      child: Text(
                        "Bolo de Cenoura",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(8.0),
                      color: Colors.white,
                      child: Text(
                        "Esse bolo de cenoura de liquidificador fica pronto em menos de 1 hora e você o prepara em apenas 20 minutos! Ingredientes: 3 cenouras médias.",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 300,
                      padding: EdgeInsets.all(8.0),
                      color: Colors.white,
                      child: Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 10),
                          Text("250 Reviews")
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white, border: Border.all()),
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.timer, color: Colors.orange),
                              SizedBox(height: 5),
                              Text("Preparo"),
                              SizedBox(height: 5),
                              Text("25min"),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.timer, color: Colors.orange),
                              SizedBox(height: 5),
                              Text("Cozimento"),
                              SizedBox(height: 5),
                              Text("35min"),
                            ],
                          ),
                          Column(
                            children: [
                              Icon(Icons.timer, color: Colors.orange),
                              SizedBox(height: 5),
                              Text("Total"),
                              SizedBox(height: 5),
                              Text("1h"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
                Image(
                  image: NetworkImage(
                      'https://as2.ftcdn.net/v2/jpg/06/52/45/37/1000_F_652453764_4qrEhM17jNJ0t7LtZVqyQKgJJ0CnNJvP.webp'),
                  height: 200,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
