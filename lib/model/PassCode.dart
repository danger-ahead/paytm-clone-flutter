/*by https://github.com/danger-ahead*/

import 'package:flutter/material.dart';
import 'package:flutter_paytm_ui/Routes/BankDetails.dart';

String passCode = '';

InputDecoration customInputDecoration() {
  return InputDecoration(
    counterText: "",
    border: InputBorder.none,
    focusedBorder: InputBorder.none,
    enabledBorder: InputBorder.none,
    errorBorder: InputBorder.none,
    disabledBorder: InputBorder.none,
  );
}

BoxDecoration customBoxDecoration() {
  return BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    color: Colors.blue[100],
  );
}

Widget customContainer0(FocusNode focusNode1) {
  return Container(
    decoration: customBoxDecoration(),
    height: 60,
    width: 40,
    child: Center(
      child: TextField(
        obscureText: true,
        obscuringCharacter: '*',
        autofocus: true,
        onChanged: (String value) {
          passCode += value;
          focusNode1.requestFocus(); //requests focus of 2nd textfield
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: customInputDecoration(),
      ),
    ),
  );
}

Widget customContainer1and2(FocusNode focusNode1, FocusNode focusNode2) {
  return Container(
    decoration: customBoxDecoration(),
    height: 60,
    width: 40,
    child: Center(
      child: TextField(
        obscureText: true,
        obscuringCharacter: '*',
        focusNode: focusNode1, //Own FocusNode set by 1st TextField
        onChanged: (String value) {
          passCode += value;
          focusNode2.requestFocus(); //requests focus of 3nd textfield
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: customInputDecoration(),
      ),
    ),
  );
}

Widget customContainer3(FocusNode focusNode3, BuildContext context) {
  return Container(
    decoration: customBoxDecoration(),
    height: 60,
    width: 40,
    child: Center(
      child: TextField(
        obscureText: true,
        obscuringCharacter: '*',
        focusNode: focusNode3,
        onChanged: (String value) {
          /*contains the passcode entered by the user;
            can be used for checking if the passcode is right*/
          passCode += value;
          focusNode3.unfocus();
          /*a new screen can be launched after checking
          if the user has provided the correct passcode*/
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return BankDetails();
          }));
          passCode = '';
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: customInputDecoration(),
      ),
    ),
  );
}
