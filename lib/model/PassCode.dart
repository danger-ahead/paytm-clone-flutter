/*by https://github.com/danger-ahead*/

import 'package:flutter/material.dart';
import 'package:flutter_paytm_ui/Routes/BankDetails.dart';

String passCode = '';
Color customBoxDecorationColor0 = Colors.blue[50];
Color customBoxDecorationColor1 = Colors.blue[100];
Color customBoxDecorationColor2 = Colors.blue[100];
Color customBoxDecorationColor3 = Colors.blue[100];

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

//blocks for customizing the 4 boxes begins
BoxDecoration customBoxDecoration0(Color customBoxDecorationColor) {
  return BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    color: customBoxDecorationColor,
  );
}

BoxDecoration customBoxDecoration1(Color customBoxDecorationColor) {
  return BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    color: customBoxDecorationColor,
  );
}

BoxDecoration customBoxDecoration2(Color customBoxDecorationColor) {
  return BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    color: customBoxDecorationColor,
  );
}

BoxDecoration customBoxDecoration3(Color customBoxDecorationColor) {
  return BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    color: customBoxDecorationColor,
  );
}
//blocks for customizing the 4 boxes ends

Widget customContainer0(
    FocusNode focusNode1, TextEditingController _controller0, BuildContext context) {
  return Container(
    decoration: customBoxDecoration0(customBoxDecorationColor0),
    height: 60,
    width: 40,
    child: Center(
      child: TextField(
        controller: _controller0,
        obscureText: true,
        autofocus: true,
        obscuringCharacter: '*',
        onChanged: (String value) async{
          focusNode1.requestFocus(); //requests focus of 2nd textfield
          customBoxDecorationColor0 = Colors.blue[100];
          customBoxDecorationColor1 = Colors.blue[50];
          (context as Element).markNeedsBuild();
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: customInputDecoration(),
      ),
    ),
  );
}

Widget customContainer1(FocusNode focusNode1, FocusNode focusNode2,
    TextEditingController _controller, BuildContext context) {
  return Container(
    decoration: customBoxDecoration1(customBoxDecorationColor1),
    height: 60,
    width: 40,
    child: Center(
      child: TextField(
        controller: _controller,
        obscureText: true,
        obscuringCharacter: '*',
        focusNode: focusNode1, //Own FocusNode set by 1st TextField
        onChanged: (String value) async{
          focusNode2.requestFocus(); //requests focus of 3nd textfield
          customBoxDecorationColor1 = Colors.blue[100];
          customBoxDecorationColor2 = Colors.blue[50];
          (context as Element).markNeedsBuild();
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: customInputDecoration(),
      ),
    ),
  );
}

Widget customContainer2(FocusNode focusNode2, FocusNode focusNode3,
    TextEditingController _controller, BuildContext context) {
  return Container(
    decoration: customBoxDecoration2(customBoxDecorationColor2),
    height: 60,
    width: 40,
    child: Center(
      child: TextField(
        controller: _controller,
        obscureText: true,
        obscuringCharacter: '*',
        focusNode: focusNode2,
        onChanged: (String value) async{
          customBoxDecorationColor2 = Colors.blue[100];
          customBoxDecorationColor3 = Colors.blue[50];
          focusNode3.requestFocus();
          (context as Element).markNeedsBuild();
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        decoration: customInputDecoration(),
      ),
    ),
  );
}

Widget customContainer3(
    FocusNode focusNode3,
    TextEditingController _controller0,
    TextEditingController _controller1,
    TextEditingController _controller2,
    TextEditingController _controller3,
    BuildContext context) {
  return Container(
    decoration: customBoxDecoration3(customBoxDecorationColor3),
    height: 60,
    width: 40,
    child: Center(
      child: TextField(
        controller: _controller3,
        obscureText: true,
        obscuringCharacter: '*',
        focusNode: focusNode3,
        onChanged: (String value) async{
          customBoxDecorationColor0 = Colors.blue[50];
          customBoxDecorationColor1 = Colors.blue[100];
          customBoxDecorationColor2 = Colors.blue[100];
          customBoxDecorationColor3 = Colors.blue[100];
          (context as Element).markNeedsBuild();
          /*contains the passcode entered by the user;
            can be used for checking if the passcode is right*/
          passCode += _controller0.text +
              _controller1.text +
              _controller2.text +
              _controller3.text;
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
