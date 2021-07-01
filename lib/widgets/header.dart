import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_back),
              color: appWhite,
            ),
            SizedBox(width: 10.0),
            Text(
              "abc-dc1-034",
              style: TextStyle(
                color: appWhite,
                fontSize: 20.0,
              ),
            )
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.flip_camera_android_sharp),
              color: appWhite,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.headphones),
              color: appWhite,
            ),
          ],
        )
      ],
    );
  }
}
