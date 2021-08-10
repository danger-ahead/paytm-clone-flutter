import 'package:flutter/material.dart';

Widget creditCard(double width) {
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
          color: Colors.white,
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
                  "assets/paytm/payments_bank_logo.png",
                  scale: 2,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child:
                    Image.asset("assets/paytm/credit-card-chip.png", scale: 4),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '1974    4785    4589',
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
                  'SEKHAR GHOSH',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'Expiry\n03/26',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Image.asset("assets/paytm/Rupay-Logo.png", scale: 4),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
