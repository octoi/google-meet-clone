import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';

class InfoTab extends StatelessWidget {
  const InfoTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("JOINING INFORMATION", style: TextStyle(color: appGrey)),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.copy),
                color: appGrey,
                iconSize: 20.0,
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Text(
            "meet.google.com/abc-dc1-034",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
