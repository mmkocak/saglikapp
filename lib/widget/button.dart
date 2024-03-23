import 'package:flutter/material.dart';
import 'package:saglikapp/mixin/renkler.dart';

class Button extends StatelessWidget with Renkler {
  final String text;
  final Widget nereye;
  final TextAlign konum;
  final double boyut;
  const Button({
    super.key,
    required this.text,
    required this.nereye,
    required this.konum,
    required this.boyut,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Renkler.mor1,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => nereye));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
          child: Text(
            text,
            style: TextStyle(color: Renkler.beyaz, fontSize: boyut),
            textAlign: konum,
          ),
        ),
      ),
    );
  }
}
