import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.only(top: 30, right: 10, left: 10, bottom: 10),
        child: Column(
          children: [
            Align(alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: (){},
              child: Text("Atla", style: TextStyle(color: Color(0xFF7165D6), fontSize: 20),),
            ),)

          ],
        ),
      ),
    );
  }
}
