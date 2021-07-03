import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';
import 'package:google_meet/utils/data.dart';
import 'package:google_meet/widgets/body_widgets/sheet_button.dart';
import 'package:google_meet/widgets/body_widgets/user_card.dart';

class UserTab extends StatelessWidget {
  const UserTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
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
          SizedBox(height: 20.0),
          Text("IN CALL", style: TextStyle(color: appGrey)),
          SizedBox(height: 20.0),
          Column(
            children: roomUsers.map((user) {
              return Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundColor: user.color,
                            child: Center(child: Text(user.name[0])),
                          ),
                          SizedBox(width: 20.0),
                          Text(
                            user.name,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              color: appSecondaryColor.withOpacity(0.9),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.mic_off),
                            color: appSecondaryColor.withOpacity(0.9),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert),
                            color: appSecondaryColor.withOpacity(0.9),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 10.0),
                ],
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
