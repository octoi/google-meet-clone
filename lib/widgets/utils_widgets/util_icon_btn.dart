import 'package:flutter/material.dart';
import 'package:google_meet/screens/message_screen.dart';
import 'package:google_meet/utils/constants.dart';

class UtilIconButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool isMessageButton;

  const UtilIconButton({
    Key? key,
    required this.icon,
    required this.title,
    this.isMessageButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isMessageButton) {
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context) {
              return MessageScreen();
            },
          ));
        }
      },
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(icon),
              color: appWhite,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(color: appWhite),
            )
          ],
        ),
      ),
    );
  }
}
