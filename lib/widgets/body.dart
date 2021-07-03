import 'package:flutter/material.dart';
import 'package:google_meet/screens/users_screen.dart';
import 'package:google_meet/utils/constants.dart';
import 'package:google_meet/utils/data.dart';
import 'body_widgets/user_card.dart';

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(children: [
        GridView.count(
          padding: EdgeInsets.all(8.0),
          physics: BouncingScrollPhysics(),
          crossAxisCount: 2,
          children: roomUsers.map((user) => UserCard(user: user)).toList(),
        ),
        Positioned(
          bottom: 10.0,
          right: 20.0,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => UsersScreen(),
                ),
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 10.0,
              ),
              decoration: BoxDecoration(
                color: appPrimaryColor.withOpacity(0.9),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                '${roomUsers.length} More',
                style: TextStyle(
                  color: appWhite,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
