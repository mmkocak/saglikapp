import 'package:flutter/material.dart';
import 'package:saglikapp/widget/schedule_main_widget.dart';

class UpcomingSchedule extends StatelessWidget {
   UpcomingSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:  Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Doktor Hakkın'da",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
             SizedBox(
              height: 15,
            ),
            schedulemainWidgets(),
             SizedBox(height: 20,),
             Text(
              "Doktor Hakkın'da",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
             SizedBox(
              height: 15,
            ),
            schedulemainWidgets(),
             SizedBox(height: 20,),
             Text(
              "Doktor Hakkın'da",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            schedulemainWidgets(),
             SizedBox(height: 20,),
             Text(
              "Doktor Hakkın'da",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            schedulemainWidgets(),
          ],
        ),
      ),
    );
  }
}

