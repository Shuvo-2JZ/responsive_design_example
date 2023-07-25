import 'package:flutter/material.dart';
import 'package:responsive_design/layouts/res/my_colors.dart';

class MediaQueryLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      body: Container(
        color: MyColors.darkGreen,
        child: Center(
          child: Text(
            'View\n\n' +
                '[MediaQuery width]: ${screenSize.width.toString()}\n\n' +
                '[MediaQuery height]: ${screenSize.height.toString()}\n\n' +
                '[MediaQuery orientation]: $orientation',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
