import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';
import 'package:google_meet/widgets/tab_screen/info_tab.dart';
import 'package:google_meet/widgets/tab_screen/user_tab.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: appWhite,
        appBar: AppBar(
          backgroundColor: appWhite,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back),
            color: appGrey,
          ),
          title: Text(
            "About This Call",
            style: TextStyle(
              color: appSecondaryColor,
              fontWeight: FontWeight.w400,
            ),
          ),
          bottom: TabBar(
            indicatorColor: appRed,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(child: Text("People", style: TextStyle(color: appRed))),
              Tab(child: Text("Information", style: TextStyle(color: appRed)))
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Divider(),
                UserTab(),
              ],
            ),
            Column(
              children: [
                Divider(),
                InfoTab(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
