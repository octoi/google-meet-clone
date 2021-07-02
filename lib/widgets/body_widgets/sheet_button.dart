import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';

class SheetButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool disabled;
  final bool cancel;

  const SheetButton({
    Key? key,
    required this.icon,
    required this.title,
    this.disabled = false,
    this.cancel = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: disabled
          ? null
          : () {
              if (cancel) Navigator.pop(context);
            },
      style: TextButton.styleFrom(
        primary: appSecondaryColor,
        padding: EdgeInsets.symmetric(vertical: 10.0),
      ),
      child: Row(
        children: [
          Icon(icon, color: disabled ? appGrey : appSecondaryColor),
          SizedBox(width: 10.0),
          Text(title),
        ],
      ),
    );
  }
}
