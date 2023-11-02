import 'package:flutter/material.dart';
import 'package:flutter_paytm_ui/constant/Constant.dart';
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
      Colors.blueGrey[50]!,
      Colors.white,
      Colors.blueGrey[50]!,
      Colors.white,
      Colors.blueGrey[50]!
    ];
    List<double> cardGradientsPoints = [0, 0.25, 0.5, 0.75, 1.0];
    const padding = EdgeInsets.only(bottom: 20.0);

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
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    color: Colors.white,
                    alignment: Alignment(-1.0, 0.0),
                    child: TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Row(
                            children: [
                              CircularProgressIndicator(),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                    'server down[err_400]\ncheck back again after some time\ninconvenience caused is regretted'),
                              ),
                            ],
                          ),
                          duration: Duration(seconds: 5),
                        ));
                        Navigator.of(context).pushNamed(HISTORY);
                      },
                      child: ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Balance',
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2)),
                            Text('₹22,261.36',
                                textScaleFactor: 1.1,
                                style: TextStyle(
                                    color: Colors.black87, letterSpacing: 1)),
                            Text('Earn 2.5% interest per annum',
                                style: TextStyle(
                                    color: Colors.blueGrey, letterSpacing: 1)),
                          ],
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Container(
                    padding: padding,
                    color: Colors.white,
                    alignment: Alignment(-1.0, 0.0),
                    child: TextButton(
                      onPressed: () {},
                      child: ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Fixed Deposits',
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2)),
                            Text('₹0',
                                textScaleFactor: 1.1,
                                style: TextStyle(
                                    color: Colors.black87, letterSpacing: 1)),
                            Text('Interest earned: ₹0',
                                textScaleFactor: 1.1,
                                style: TextStyle(
                                    color: Colors.green, letterSpacing: 1)),
                            Text('Earn 5.5% interest per annum',
                                style: TextStyle(
                                    color: Colors.blueGrey, letterSpacing: 1)),
                          ],
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Container(
                    padding: padding,
                    color: Colors.white,
                    alignment: Alignment(-1.0, 0.0),
                    child: TextButton(
                      onPressed: () {},
                      child: ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Paytm Wallet',
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2)),
                            Text('₹503.85',
                                textScaleFactor: 1.1,
                                style: TextStyle(
                                    color: Colors.black87, letterSpacing: 1)),
                            Text('Easily pay your bills',
                                style: TextStyle(
                                    color: Colors.blueGrey, letterSpacing: 1)),
                          ],
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Container(
                    padding: padding,
                    color: Colors.white,
                    alignment: Alignment(-1.0, 0.0),
                    child: TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Try Again!'),
                          duration: Duration(seconds: 1),
                        ));
                      },
                      child: ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Paytm Money',
                                textScaleFactor: 1.5,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2)),
                            Text('₹1,07,454.00',
                                textScaleFactor: 1.1,
                                style: TextStyle(
                                    color: Colors.black87, letterSpacing: 1)),
                            Text('Gains: ₹9,168',
                                textScaleFactor: 1.1,
                                style: TextStyle(
                                    color: Colors.green, letterSpacing: 1)),
                            Text('Managing stocks haven\'t been this easy',
                                style: TextStyle(
                                    color: Colors.blueGrey, letterSpacing: 1)),
                          ],
                        ),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
