import 'package:flutter/material.dart';
import 'package:flutter_paytm_ui/model/CustomCode';

class Bank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //https://stackoverflow.com/a/68576118/10951873
    return LayoutBuilder(builder: (context, viewportConstraints) {
      return SingleChildScrollView(
          child: ConstrainedBox(
        constraints: viewportConstraints.copyWith(
          minHeight: viewportConstraints.maxHeight,
          maxHeight: double.infinity,
        ),
        child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    customContainer(),
                    customContainer(),
                    customContainer(),
                    customContainer(),
                  ],
                ),
              ),
            ]),
      ));
    });
  }
}
