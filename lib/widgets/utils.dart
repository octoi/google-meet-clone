import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';
import 'package:google_meet/widgets/util_icon_btn.dart';

class AppUtils extends StatelessWidget {
  const AppUtils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void openBottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: appPrimaryColor,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      UtilIconButton(
                        icon: Icons.question_answer_outlined,
                        title: "In call\nmessages",
                      ),
                      UtilIconButton(
                        icon: Icons.present_to_all_outlined,
                        title: "Share screen",
                      ),
                      UtilIconButton(
                        icon: Icons.closed_caption_outlined,
                        title: "Turn on\ncaoptions",
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
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
          GestureDetector(
            onTap: openBottomSheet,
            child: Container(
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
          ),
        ],
      ),
    );
  }
}
