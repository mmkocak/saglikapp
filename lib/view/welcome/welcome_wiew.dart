import 'package:flutter/material.dart';
import 'package:saglikapp/view/login/login_view.dart';
import 'package:saglikapp/widget/navbar_roots.dart';
import 'package:saglikapp/view/signup/signuup_view.dart';
import 'package:saglikapp/widget/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key}) ;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        padding:
            const EdgeInsets.only(top: 30, right: 10, left: 10, bottom: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const NavbarRoots()));
                },
                child: const Text(
                  "Atla",
                  style: TextStyle(color: Color(0xFF7165D6), fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset("assets/images/doctors.png"),
            ),
            const SizedBox(height: 50),
            const Text(
              "Doktor Randevusu",
              style: TextStyle(
                  color: Color(0xFF7165D6),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2),
            ),
            const SizedBox(height: 10),
            const Text(
              "Doktor Randevunuz",
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 60),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Button(
                  text: "Giriş",
                  nereye: LoginScreen(),
                  konum: TextAlign.center,
                  boyut: 22,
                ),
                Button(
                  text: "Kayıt Ol",
                  nereye: SignupScreen(),
                  konum: TextAlign.center,
                  boyut: 22,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
