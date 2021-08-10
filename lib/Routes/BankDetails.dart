import 'package:flutter/material.dart';
import 'package:flutter_paytm_ui/model/CreditCard.dart';

class BankDetails extends StatelessWidget {
  final GlobalKey _keyRed = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('App Title'),
          backgroundColor: Colors.transparent,
          leading: new IconButton(
              onPressed: () {
                return Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_outlined,
                color: Colors.black,
              )),
          elevation: 0,
        ),
        body: Column(
          children: [
            creditCard(width), //https://stackoverflow.com/a/64044475/10951873
            Expanded(
              child: ListView(
                children: [],
              ),
            ),
          ],
        ));
  }
}
