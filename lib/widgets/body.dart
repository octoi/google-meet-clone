import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';
import 'package:google_meet/utils/data.dart';

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        padding: EdgeInsets.all(8.0),
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        children: roomUsers.map((user) => UserCard(user: user)).toList(),
      ),
    );
  }
}

class UserCard extends StatelessWidget {
  final Participant user;

  const UserCard({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: appSecondaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Stack(
        children: [
          Center(
            child: CircleAvatar(
              backgroundColor: user.color,
              child: Center(
                child: Text(
                  user.name[0],
                  style: TextStyle(fontSize: 25.0, color: appWhite),
                ),
              ),
              radius: 35.0,
            ),
          ),
          Positioned(
            bottom: 15.0,
            left: 15.0,
            child: Text(
              user.name,
              style: TextStyle(
                color: appWhite,
                fontSize: 16.0,
              ),
            ),
          )
        ],
      ),
    );
  }
}