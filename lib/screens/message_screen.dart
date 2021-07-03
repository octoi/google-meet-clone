import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhite,
      appBar: AppBar(
        backgroundColor: appWhite,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
          color: appGrey,
        ),
        title: Text(
          "In-call messages",
          style: TextStyle(
            color: appSecondaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
