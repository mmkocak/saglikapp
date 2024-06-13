import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Ayarlar",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
           const  SizedBox(
              height: 30,
            ),
            const ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/doctor1.jpg"),
              ),
              title: Text(
                "Dr. Doktor Adı",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
              subtitle: Text("Profil"),
            ),
            const Divider(height: 50,),
            ListTile(
              onTap: () {
                
              },
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  shape: BoxShape.circle,
                ),
                 child: const Icon(
                  CupertinoIcons.person,
                  color: Colors.blue,
                  size: 35,
                ),
              ),
              title:const  Text("Profil",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const SizedBox(height: 20),
             ListTile(
              onTap: () {
                
              },
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  shape: BoxShape.circle,
                ),
                 child: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.deepPurple,
                  size: 35,
                ),
              ),
              title:const  Text("Bildirimler",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
             const SizedBox(height: 20),
             ListTile(
              onTap: () {
                
              },
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100,
                  shape: BoxShape.circle,
                ),
                 child: const Icon(
                  Icons.privacy_tip_outlined,
                  color: Colors.indigo,
                  size: 35,
                ),
              ),
              title:const  Text("Gizlilik",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
             const SizedBox(height: 20),
             ListTile(
              onTap: () {
                
              },
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  shape: BoxShape.circle,
                ),
                 child: const Icon(
                  Icons.settings_suggest_outlined,
                  color: Colors.green,
                  size: 35,
                ),
              ),
              title:const  Text("Genel",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
             const SizedBox(height: 20),
             ListTile(
              onTap: () {
                
              },
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  shape: BoxShape.circle,
                ),
                 child: const Icon(
                  Icons.info_outline_rounded,
                  color: Colors.orange,
                  size: 35,
                ),
              ),
              title:const  Text("Hakkımızda",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
            const Divider(height: 50,),
             const SizedBox(height: 20),
             ListTile(
              onTap: () {
                
              },
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  shape: BoxShape.circle,
                ),
                 child: const Icon(
                  Icons.logout,
                  color: Colors.red,
                  size: 35,
                ),
              ),
              title:const  Text("Çıkış",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
