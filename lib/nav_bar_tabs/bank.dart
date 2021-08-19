import 'package:flutter/material.dart';
import 'package:flutter_paytm_ui/model/PassCode.dart';

class Bank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _controller0 = TextEditingController();
    final _controller1 = TextEditingController();
    final _controller2 = TextEditingController();
    final _controller3 = TextEditingController();
    FocusNode focusNode1 = FocusNode();
    FocusNode focusNode2 = FocusNode();
    FocusNode focusNode3 = FocusNode();

    List<Color> customBoxDecorationColor = [
      Colors.blue[100],
      Colors.blue[100],
      Colors.blue[100],
      Colors.blue[100]
    ];

    //https://stackoverflow.com/a/68576118/10951873
    return LayoutBuilder(builder: (context, viewportConstraints) {
      return SingleChildScrollView(
          child: ConstrainedBox(
        constraints: viewportConstraints.copyWith(
          minHeight: viewportConstraints.maxHeight,
          maxHeight: double.infinity,
        ),
        child: Container(
          color: Colors.white,
          child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: ClipRect(
                      child: Image.asset('assets/paytm/payments_bank_logo.png',
                          scale: 2)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: Text('Enter Passcode',
                      textScaleFactor: 1.1,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      customContainer0(focusNode1, _controller0,
                          customBoxDecorationColor, context),
                      customContainer1(focusNode1, focusNode2, _controller1,
                          customBoxDecorationColor, context),
                      customContainer2(focusNode2, focusNode3, _controller2,
                          customBoxDecorationColor, context),
                      customContainer3(
                          focusNode3,
                          _controller0,
                          _controller1,
                          _controller2,
                          _controller3,
                          customBoxDecorationColor,
                          context),
                    ],
                  ),
                ),
              ]),
        ),
      ));
    });
  }
}
