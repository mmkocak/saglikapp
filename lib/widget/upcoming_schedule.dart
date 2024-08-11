import 'package:flutter/material.dart';

class UpcomingSchedule extends StatelessWidget {
const UpcomingSchedule({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const  EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Text("Doktor Hakkın'da", 
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          ),
          const SizedBox(height: 15,),
          Container(
            padding: const  EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
             borderRadius: BorderRadius.circular(10),
             boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 4,
                spreadRadius: 2,
              ),
             ]
            ),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Column(children: [
                ListTile(
                  
                ),
              ],),
            )
          ),
        ],
      ),
    );
  }
}