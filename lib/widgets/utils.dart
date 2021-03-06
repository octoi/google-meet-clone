import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';
import 'package:google_meet/widgets/utils_widgets/util_icon_btn.dart';
import 'package:google_meet/widgets/utils_widgets/util_main_btn.dart';

class AppUtils extends StatelessWidget {
  const AppUtils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void openBottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              color: appPrimaryColor,
              height: 250.0,
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  UtilIconButton(
                    icon: Icons.question_answer_outlined,
                    title: "In call messages",
                    isMessageButton: true,
                  ),
                  UtilIconButton(
                    icon: Icons.present_to_all_outlined,
                    title: "Share screen",
                  ),
                  UtilIconButton(
                    icon: Icons.closed_caption_outlined,
                    title: "Turn on caoptions",
                  ),
                  UtilIconButton(
                    icon: Icons.announcement_outlined,
                    title: "Report a problem",
                  ),
                  UtilIconButton(
                    icon: Icons.report_outlined,
                    title: "Report abuse",
                  ),
                  UtilIconButton(
                    icon: Icons.settings_outlined,
                    title: "Settings",
                  ),
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
          UtilMainButton(
            primaryIcon: Icons.videocam_outlined,
            secondaryIcon: Icons.videocam_off_outlined,
          ),
          UtilMainButton(
            primaryIcon: Icons.mic_off,
            secondaryIcon: Icons.mic,
            isWhiteBg: true,
          ),
          UtilMainButton(
            primaryIcon: CupertinoIcons.hand_raised,
            secondaryIcon: CupertinoIcons.hand_raised,
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
