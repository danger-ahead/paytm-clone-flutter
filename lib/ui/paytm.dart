import 'package:flutter/material.dart';
import 'package:flutter_paytm_ui/nav_bar_tabs/bank.dart';
import 'package:flutter_paytm_ui/nav_bar_tabs/home.dart';
import 'package:flutter_paytm_ui/nav_bar_tabs/inbox.dart';
import 'package:flutter_paytm_ui/nav_bar_tabs/mall.dart';
import 'package:flutter_paytm_ui/nav_bar_tabs/qr.dart';
import '../others/common.dart';

class Paytm extends StatefulWidget {
  @override
  _PaytmState createState() => _PaytmState();
}

class _PaytmState extends State<Paytm> {
  int _currentIndexBtmNavBar = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> _btmNavBar = [
      Home(context),
      Mall(),
      Qr(),
      Bank(),
      Inbox(),
    ];
    return Scaffold(
        appBar: _appBar(),
        body: _btmNavBar[_currentIndexBtmNavBar],
        backgroundColor: Colors.grey[200],
        bottomNavigationBar: _bottomTab());
  }

  Widget _appBar() {
    return new AppBar(
      title: Row(
        children: <Widget>[
          Icon(Icons.dehaze),
          Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              height: 40,
              width: MediaQuery.of(context).size.width / 1.35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.search,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Image.asset(
                      "assets/uanotif_nomessage.png",
                      color: Colors.blue,
                      width: 20,
                      height: 20,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      elevation: 0,
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndexBtmNavBar = index;
    });
  }

  Widget _bottomTab() {
    return new BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue[800],
        onTap: onTabTapped,
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          new BottomNavigationBarItem(
            icon: imgBtmNavBar("assets/shopping-bagg.png"),
            label: 'Mall',
          ),
          new BottomNavigationBarItem(
            icon: imgBtmNavBar("assets/qr-code.png"),
            label: 'Scan',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: 'Bank',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Inbox',
          ),
        ]);
  }
}
