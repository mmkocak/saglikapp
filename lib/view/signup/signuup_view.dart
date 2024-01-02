import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saglikapp/view/mixin/renkler.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Renkler.beyaz,
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset("assets/images/doctors.png"),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Adınız",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Telefon",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                  labelText: "Şifre",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password_rounded),
                  suffixIcon: InkWell(
                    onTap: () {
                      if (passToggle == true) {
                        passToggle = false;
                      } else {
                        passToggle = true;
                      }
                      setState(() {});
                    },
                    child: passToggle
                        ? const Icon(CupertinoIcons.eye_slash_fill)
                        : const Icon(CupertinoIcons.eye),
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
