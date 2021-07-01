import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';

class AppUtils extends StatelessWidget {
  const AppUtils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: appRed,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Icon(
              Icons.call_end,
              color: appWhite,
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: appSecondaryColor,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Icon(
              Icons.videocam_outlined,
              color: appWhite,
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: appWhite,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Icon(
              Icons.mic_off,
              color: appSecondaryColor,
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: appSecondaryColor,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Icon(
              CupertinoIcons.hand_raised,
              color: appWhite,
            ),
          ),
          Container(
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: appSecondaryColor,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Icon(
              Icons.more_vert,
              color: appWhite,
            ),
          ),
        ],
      ),
    );
  }
}
