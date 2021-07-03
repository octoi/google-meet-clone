import 'package:flutter/material.dart';
import 'package:google_meet/utils/constants.dart';

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
          Expanded(child: ListView()),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Flexible(
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
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Type in your text",
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
