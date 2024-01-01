import 'package:flutter/material.dart';

class WelcomeButtons extends StatelessWidget {
  final String text ;
  final Widget nereye;
   WelcomeButtons({
    super.key, required this.text, required this.nereye,

  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFF7165D6),
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: (){
         Navigator.push(context, MaterialPageRoute(builder: (context) => nereye ));
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Text(text,
            style: TextStyle(color: Colors.white),),

        ),
      ),
    );
  }
}