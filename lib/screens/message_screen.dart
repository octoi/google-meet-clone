import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';
import 'package:google_meet/utils/data.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appWhite,
      appBar: AppBar(
        backgroundColor: appWhite,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
          color: appGrey,
        ),
        title: Text(
          "In-call messages",
          style: TextStyle(
            color: appSecondaryColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int idx) {
                Participant user = getRandomUser();
                return Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 15.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: user.color,
                        child: Center(
                          child: Text(
                            user.name[0],
                            style: TextStyle(color: appWhite),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        messages[idx],
                        style: TextStyle(
                          fontSize: 15.0,
                          color: appSecondaryColor,
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                fillColor: appTextFieldGrey,
                contentPadding: EdgeInsets.all(20.0),
                hintStyle: TextStyle(color: appGrey),
                hintText: "Send message",
                suffixIcon: Icon(
                  Icons.send,
                  color: appGrey.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
