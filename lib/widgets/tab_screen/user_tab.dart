import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';
import 'package:google_meet/widgets/body_widgets/sheet_button.dart';

class UserTab extends StatelessWidget {
  const UserTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(20.0),
      physics: BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("ADD OTHERS", style: TextStyle(color: appGrey)),
          SizedBox(height: 15.0),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              primary: appSecondaryColor.withOpacity(0.8),
            ),
            child: Row(
              children: [
                Icon(Icons.share_outlined),
                SizedBox(width: 20.0),
                Text(
                  "Share joining information",
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
