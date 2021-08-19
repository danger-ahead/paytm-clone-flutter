import 'package:flutter/material.dart';

Widget homeIconText(String text) {
  return Text(text,
      textScaleFactor: 1.1, style: TextStyle(fontWeight: FontWeight.bold));
}

Widget mobileRecharge = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.mobile_friendly)),
      Column(
        children: [
          homeIconText('Mobile'),
          homeIconText('Recharge'),
        ],
      ),
    ],
  ),
);

Widget train = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.train_outlined)),
      homeIconText('Train'),
    ],
  ),
);

Widget sendMoney = Column(
  children: [
    IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined)),
    Column(
      children: [
        homeIconText('Send'),
        homeIconText('Money'),
      ],
    ),
  ],
);

Widget upi = Column(
  children: [
    IconButton(onPressed: () {}, icon: Icon(Icons.send_to_mobile_outlined)),
    Column(
      children: [
        homeIconText('Send'),
        homeIconText('Using UPI'),
      ],
    ),
  ],
);

Widget postpaid = Column(
  children: [
    IconButton(onPressed: () {}, icon: Icon(Icons.calendar_today_outlined)),
    Column(
      children: [
        homeIconText('Paytm'),
        homeIconText('Postpaid'),
      ],
    ),
  ],
);

Widget flight = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.flight_outlined)),
      homeIconText('Flight'),
    ],
  ),
);

Widget car = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.car_rental_outlined)),
      homeIconText('Car'),
    ],
  ),
);

Widget bike = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.two_wheeler_outlined)),
      homeIconText('Bike'),
    ],
  ),
);

Widget stocks = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.bar_chart_outlined)),
      homeIconText('Stocks'),
    ],
  ),
);

Widget gold = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.attach_money_outlined)),
      homeIconText('Gold'),
    ],
  ),
);

Widget electricity = Container(
  child: Column(
    children: [
      IconButton(
          onPressed: () {}, icon: Icon(Icons.electrical_services_outlined)),
      homeIconText('Electricity'),
    ],
  ),
);
Widget movie = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.movie_creation_outlined)),
      homeIconText('Movie'),
    ],
  ),
);

Widget events = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.music_note_outlined)),
      homeIconText('Events'),
    ],
  ),
);

Widget dth = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.tv_outlined)),
      homeIconText('DTH'),
    ],
  ),
);

Widget loans = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.credit_card_outlined)),
      homeIconText('Loans'),
    ],
  ),
);

Widget taxes = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.money_outlined)),
      homeIconText('Taxes'),
    ],
  ),
);

Widget taxi = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.local_taxi_outlined)),
      homeIconText('Taxi'),
    ],
  ),
);

Widget fees = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.school)),
      homeIconText('Fees'),
    ],
  ),
);

Widget bus = Container(
  child: Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.directions_bus_outlined)),
      homeIconText('Bus'),
    ],
  ),
);

Widget gas = Container(
  child: Column(
    children: [
      IconButton(
          onPressed: () {}, icon: Icon(Icons.local_gas_station_outlined)),
      homeIconText('Gas'),
    ],
  ),
);

Widget rechargeOthers = Container(
  child: Column(
    children: [
      IconButton(
          onPressed: () {}, icon: Icon(Icons.arrow_forward_ios_outlined)),
      Column(
        children: [
          homeIconText('Other'),
          homeIconText('Services'),
        ],
      ),
    ],
  ),
);
