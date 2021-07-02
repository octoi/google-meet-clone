import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';

class UtilMainButton extends StatefulWidget {
  final IconData primaryIcon;
  final IconData secondaryIcon;
  final bool isWhiteBg;

  const UtilMainButton({
    Key? key,
    required this.primaryIcon,
    required this.secondaryIcon,
    this.isWhiteBg = false,
  }) : super(key: key);

  @override
  _UtilMainButtonState createState() => _UtilMainButtonState();
}

class _UtilMainButtonState extends State<UtilMainButton> {
  @override
  Widget build(BuildContext context) {
    IconData icon = widget.primaryIcon;
    bool isWhiteBg = widget.isWhiteBg;

    return GestureDetector(
      onTap: () {
        setState(() {
          icon = icon == widget.primaryIcon
              ? widget.secondaryIcon
              : widget.primaryIcon;
        });
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: isWhiteBg ? appWhite : appSecondaryColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Icon(
          icon,
          color: isWhiteBg ? appSecondaryColor : appWhite,
        ),
      ),
    );
  }
}
