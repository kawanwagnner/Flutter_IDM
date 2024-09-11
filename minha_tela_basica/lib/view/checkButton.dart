import 'package:flutter/material.dart';

class CheckoutButton extends StatelessWidget {
  final double total;

  const CheckoutButton({required this.total});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
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
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                width: 380,
                height: 40,
                child: Stack(
                  children: [
                    Positioned(
                      top: 7,
                      left: 120,
                      child: const Text(
                        'Go to Checkout',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      top: 0,
                      child: Container(
                        width: 60,
                        height: 30,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.green[700],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          '\$${total.toStringAsFixed(2)}',

                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                          ),

                          textAlign: TextAlign.center,

                          // Aligns the text to the center
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
