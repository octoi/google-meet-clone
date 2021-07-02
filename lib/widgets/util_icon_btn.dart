import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';

class UtilIconButton extends StatelessWidget {
  final IconData icon;
  final String title;

  const UtilIconButton({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
