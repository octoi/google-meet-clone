import 'package:flutter/material.dart';
import 'package:google_meet/utils/data.dart';
import 'body_widgets/user_card.dart';

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
