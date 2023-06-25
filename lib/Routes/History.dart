import 'package:flutter/material.dart';

class History extends StatefulWidget {
  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue[
                        500]!, // Deep color (adjust the hex code as per your preference)
                    Colors.white, // White color
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Balance',
                      textScaleFactor: 2,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2)),
                  Text('\n₹13,261.36',
                      textScaleFactor: 1.5,
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1)),
                  Text('Earn 2.75% interest per annum',
                      style:
                          TextStyle(color: Colors.blueGrey, letterSpacing: 1)),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10, 20.0, 10, 10.0),
              height: 1.0,
              color: Colors.grey,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ListView(
                children: [
                  Text('June',
                      style: TextStyle(color: Colors.green, letterSpacing: 1)),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '24-06-23 04.25 PYTM A/C QUARTERLY INT',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹41',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '16-06-23 14.28 UBI HWH STN',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '14-06-23 14.48 +ATM AXIS/RNIKUTHI',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '08-06-23 14.38 ZEPTO EXPRESS PVT LTD',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹209',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '06-06-23 12.58 +ATM AXIS/RNIKUTHI',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '02-06-23 21.18 TRANSFER/FRM SEKHAR G.',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹4000',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '01-06-23 14.31 ZOMATO',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹289.99',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '01-06-23 10.18 TRANSFER/TO/30259445 MALAY HAJRA',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹600',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Text('May',
                      style: TextStyle(color: Colors.green, letterSpacing: 1)),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '30-05-23 08.18 ATM/WTHDRWL +NSC BOSE ROAD KOLK WIND',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '22-05-23 08.18 TRANSFER/FRM RITA DAS',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹1200',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '17-05-23 20.42 SPENCERS AZDGRH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹163.16',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '14-05-23 20.20 +TOLLYGNJ METRO STAT KOLK WIND',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '14-05-23 23.15 +UCANAPPLY 600032 IND',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹1200',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11-05-23 23.15 +MANI SQUARE KOLKATA IND',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹1161.28',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '10-05-23 23.15 TRANSFER S.GHOSH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹1000',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '09-05-23 20.41 TRANSFER OUT PRANAB GHOSH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹250',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '09-05-23 16.28 KOTK-AT BELEGHATA',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '06-05-23 19.28 TRANSFER S.GHOSH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹3000',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '02-05-23 21.09 ATM-SBIN TALLYGANJ METRO STN',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Text('April',
                      style: TextStyle(color: Colors.green, letterSpacing: 1)),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '29-04-23 21.09 ATM-SBIN NSC BOSE ROAD',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '29-04-23 20.42 TRANSFER S.GHOSH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹4000',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11-04-23 20.42 ATM-LQ213 SBI RNIKTHI',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '05-04-23 21.02 SPENCERS_AZDGRH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹372.67',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '04-04-23 10.41 ATM-LQ213 KOTK BELGHT',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Text('March',
                      style: TextStyle(color: Colors.green, letterSpacing: 1)),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '27-03-23 21.19 ATM-QRD23 SBI RNIKTHI',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19-03-23 10.19 ATM-Q239 BELGHT',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11-03-23 11.19 ATM-1257 AZADGARH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '04-03-23 19.19 ATM-1237 AZADGARH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '03-03-23 10.21 Sekhar Ghosh JPTR-039413',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹4,000',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Text('February',
                      style: TextStyle(color: Colors.green, letterSpacing: 1)),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '29-02-23 19.19 ATM-1237 AZADGARH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '24-02-23 12.11 SPENCERS_AZDGARH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹692.52',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '21-02-23 20.41 ATM-1237 AZADGARH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '15-02-23 14.34 ATM-1237 AZADGARH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11-02-23 12.11 SPENCERS_AZDGARH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹472.5',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '08-02-23 19.11 ATM-1237 AZADGARH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Text('January',
                      style: TextStyle(color: Colors.green, letterSpacing: 1)),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '29-01-23 19.19 ATM-1237 AZADGARH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '15-01-23 12.11 YOUEKKO COMMS LTD.',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹8,000',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Text('December',
                      style: TextStyle(color: Colors.green, letterSpacing: 1)),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '21-12-22 19.19 ATM-1237 AZADGARH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '17-12-22 12.01 RITA DAS',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹1,500',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '16-12-22 21.08 MOBIKWIK_SYSTEMS_INDIA',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹1,500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '12-12-22 18.38 SPENCERS_AZDGRH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹186.67',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '12-12-22 17.08 MAINAK HAJRA',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹55',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '10-12-22 20.09 ATM-1237 SBI_RANIKUTHI',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '04-12-22 19.55 ATM-1237 AZADGARH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Text('November',
                      style: TextStyle(color: Colors.green, letterSpacing: 1)),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '30-11-22 17.55 RITA DAS',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹3,000',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '24-11-22 17.14 ATM-X982 SURAT_LANE_SDAH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹500',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '20-11-22 13.08 UCANAPPLY_600032_IND',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹1,200',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19-11-22 16.24 SEKHAR GHOSH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹1,575',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19-11-22 16.04 MPL',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹1,575',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19-11-22 15.12 SEKHAR GHOSH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹868',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19-11-22 12.18 MPL',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹868',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11-11-22 12.14 PAYTM_MON_LTD_IND',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹8000',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11-11-22 12.03 EKKO_COMM_IND',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹8000',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '03-11-22 18.08 SPENCERS_AZDGRH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹155.25',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Text('October',
                      style: TextStyle(color: Colors.green, letterSpacing: 1)),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                    height: 1.0,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '26-10-22 13.39 GHOSH_DEPART/16459566',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹76',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '26-10-22 09.19 RITA DAS',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹1,973',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '26-10-22 09.15 UP_OUT/2299928545/AMZN',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹1,973',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '26-10-22 08.46 RITA DAS',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹3,000',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '20-10-22 14.51 PAY_GOV',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹60',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '19-10-22 18.42 KFC_SDAH_RAILW',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹292.26',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '13-10-22 14.50 RITA DAS',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹416',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '13-10-22 14.46 FLIPKART',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹284',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11-10-22 13.48 RITA DAS',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹400',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '11-10-22 13.42 RAJAN SHUKLA',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹400',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '04-10-22 21.41 DOMINOS_PIZZ_MLD',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹1065.56',
                          style:
                              TextStyle(color: Colors.black, fontSize: 12.0)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '04-10-22 21.40 SEKHAR GHOSH',
                        style: TextStyle(fontSize: 12.0),
                      ),
                      Text('₹1065',
                          style:
                              TextStyle(color: Colors.green, fontSize: 12.0)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Loading older transaction details',
                            style: TextStyle(
                                color: Colors.green,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold)),
                        CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
