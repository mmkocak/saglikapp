import 'package:flutter/material.dart';
import 'package:saglikapp/widget/upcoming_schedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}


class _ScheduleScreenState extends State<ScheduleScreen> {
  int _buttonIndex = 0;
  final _schedulewidgets = [
    // Upcoming Schedule Widget
    UpcomingSchedule(),
    //Complated Widget
    Container(),
    //Canceled Widget
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Takvim",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFFF4F6FA),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 0;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 0
                            ? const Color(0xFF7165d6)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Text(
                        "Yaklaşan",
                        style: TextStyle(
                         color: _buttonIndex == 0 ? Colors.white:Colors.black38,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 1;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 1
                            ? const Color(0xFF7165d6)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Text(
                        "Tamamlanmış",
                        style: TextStyle(
                          color: _buttonIndex == 1 ? Colors.white:Colors.black38,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _buttonIndex = 2;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 20),
                      decoration: BoxDecoration(
                        color: _buttonIndex == 2
                            ? const Color(0xFF7165d6)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:  Text(
                        "İptal Edilen",
                        style: TextStyle(
                         color: _buttonIndex == 2 ? Colors.white:Colors.black38,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            _schedulewidgets[_buttonIndex],
          ],
        ),
      ),
    );
  }
}
