import 'package:flutter/material.dart';
import 'package:flutter_paytm_ui/model/CreditCard.dart';

class BankDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    String creditCardLogo = "assets/paytm/payments_bank_logo.png";
    String creditCardChip = "assets/paytm/credit-card-chip.png";
    String cardHolder = "SHOURYA S.";
    String expiryDate = "Expiry\n03/26";
    String cardProvider = "assets/paytm/Rupay-Logo.png";
    String cardNumber = "1974    4785    4589";
    List<Color> cardGradients = [
      Colors.grey[100],
      Colors.white,
      Colors.grey[100],
      Colors.white,
      Colors.grey[100]
    ];
    List<double> cardGradientsPoints = [0, 0.25, 0.5, 0.75, 1.0];
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
            creditCard(
              width,
              creditCardLogo,
              creditCardChip,
              cardNumber,
              cardHolder,
              expiryDate,
              cardProvider,
              cardGradients,
              cardGradientsPoints,
            ),
            //https://stackoverflow.com/a/64044475/10951873
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Balance'),
                    subtitle: Text('₹5466'),
                  ),
                  ListTile(
                    title: Text('Wallet'),
                    subtitle: Text('₹90'),
                  ),
                  ListTile(
                    title: Text('Paytm Money'),
                    subtitle: Text(''),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
