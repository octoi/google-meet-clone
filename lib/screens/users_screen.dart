import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhite,
      appBar: AppBar(
        backgroundColor: appWhite,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
          color: appGrey,
        ),
        title: Text(
          "About This Call",
          style: TextStyle(
            color: appSecondaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
