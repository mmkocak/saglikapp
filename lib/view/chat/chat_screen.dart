import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF7165d6),
          leadingWidth: 30,
          title: const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/doctor1.jpg"),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "Dr. Doktor Adı",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          actions: const [
             Padding(
              padding: EdgeInsets.only(top: 8, right: 15),
              child: Icon(
                Icons.call,
                color: Colors.white,
                size: 26,
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: Icon(
                Icons.video_call,
                color: Colors.white,
                size: 30,
              ),
            ),
             Padding(
              padding: EdgeInsets.only(top: 8, right: 10),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 26,
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}
