import 'package:flutter/material.dart';
import 'package:saglikapp/view/login/login_view.dart';
import 'package:saglikapp/view/widget/welcomebutton.dart';

class WelcomeScreen extends StatelessWidget {
 const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        padding: EdgeInsets.only(top: 30, right: 10, left: 10, bottom: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) =>));
                },
                child: Text(
                  "Atla",
                  style: TextStyle(color: Color(0xFF7165D6), fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.all(20),
              child: Image.asset("assets/images/doctors.png"),
            ),
            SizedBox(height: 50),
            Text(
              "Doktor Randevusu",
              style: TextStyle(
                  color: Color(0xFF7165D6),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              "Doktor Randevunuz",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                WelcomeButtons(text: "Giriş",nereye: LoginScreen()),
                WelcomeButtons(text: "Kayıt Ol", nereye: LoginScreen()),
              ],
            )
          ],
        ),
      ),
    );
  }
}


