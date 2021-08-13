import 'package:flutter/material.dart';
import 'package:flutter_paytm_ui/nav_bar_tabs/bank.dart';
import 'package:flutter_paytm_ui/nav_bar_tabs/home.dart';
import 'package:flutter_paytm_ui/nav_bar_tabs/inbox.dart';
import 'package:flutter_paytm_ui/nav_bar_tabs/mall.dart';
import 'package:flutter_paytm_ui/nav_bar_tabs/qr.dart';

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
        body: _btmNavBar[_currentIndexBtmNavBar],
        backgroundColor: Colors.grey[200],
        bottomNavigationBar: _bottomTab());
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
        currentIndex: _currentIndexBtmNavBar,
        type: BottomNavigationBarType.fixed,
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Mall',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_2),
            label: 'Scan',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_outlined),
            label: 'Bank',
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: 'Inbox',
          ),
        ]);
  }
}
