import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:responsive_design/screens/chat_view.dart';
import 'package:responsive_design/widgets/text_view.dart';

/// The content to the displayed in each ChatList item
class PeopleItem extends StatelessWidget {
  final RandomColor _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    Color profileColor = _randomColor.randomColor();

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 40.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ChatView(profileColor),
            ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: profileColor,
              ),
              SizedBox(width: 16.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextViewSmall(),
                  SizedBox(height: 8.0),
                  TextViewMedium(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
