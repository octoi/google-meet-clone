import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';
import 'package:google_meet/utils/data.dart';
import 'package:google_meet/widgets/body_widgets/sheet_button.dart';

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
          ),
          Positioned(
            top: 10.0,
            right: 10.0,
            child: Container(
              padding: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: appGrey,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Icon(
                Icons.mic_off,
                size: 20.0,
                color: appWhite,
              ),
            ),
          ),
          Positioned(
            bottom: 15.0,
            right: 10.0,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        color: appWhite,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.name,
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Divider(),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SheetButton(
                                  icon: Icons.mic_off,
                                  title: "Mute",
                                  disabled: true,
                                ),
                                SheetButton(
                                  icon: Icons.push_pin_outlined,
                                  title: "Pin",
                                ),
                                SheetButton(
                                  icon: Icons.remove_circle_outline,
                                  title: "Remove",
                                ),
                                SheetButton(
                                  icon: Icons.fullscreen,
                                  title: "Full screen",
                                ),
                                SheetButton(
                                  icon: Icons.close,
                                  title: "Cancel",
                                  cancel: true,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
              child: Icon(
                Icons.more_vert,
                color: appWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
