//by https://github.com/danger-ahead

import 'package:flutter/material.dart';

Widget creditCard(
    double width,
    String creditCardLogo,
    String creditCardChip,
    String cardNumber,
    String cardHolder,
    String expiryDate,
    String cardProvider,
    List<Color> cardGradients,
    List<double> cardGradientsPoints) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
          ],
          //https://medium.com/flutter-community/how-to-improve-your-flutter-application-with-gradient-designs-63180ba96124
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: cardGradientsPoints,
            colors: cardGradients,
          ),
          border: Border.all(width: 0.5),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      width: width,
      height: width / 1.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Image.asset(
                  creditCardLogo,
                  scale: 2,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 26.0),
                child: Image.asset(creditCardChip, scale: 3.5),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                cardNumber,
                textScaleFactor: 2,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  cardHolder,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                expiryDate,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Image.asset(cardProvider, scale: 4),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
