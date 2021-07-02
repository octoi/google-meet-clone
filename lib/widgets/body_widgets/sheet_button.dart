import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';

class SheetButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool disabled;

  const SheetButton({
    Key? key,
    required this.icon,
    required this.title,
    this.disabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: disabled ? null : () {},
      style: TextButton.styleFrom(
        primary: appSecondaryColor,
      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 10.0),
          Text(title),
        ],
      ),
    );
  }
}
