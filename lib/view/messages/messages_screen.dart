import 'package:flutter/material.dart';
import 'package:saglikapp/view/chat/chat_screen.dart';

class MessagesScreen extends StatelessWidget {
  MessagesScreen({Key? key}) : super(key: key);
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
     "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Mesajlar",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 30),
          // Arama widgeti başlangıç
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                 boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Ara",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                 const Icon(
                    Icons.search,
                    color: Color(0xFF7165d6),
                  ),
                ],
              ),
            ),
          ),
           //Arama widget bitimi
          const SizedBox(height: 20),
        const   Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Aktif Olan Doktorlar", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
         const SizedBox(height: 10,),
         // Profil Menüsü Başlangıcı
          SizedBox(
            height: 90,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imgs.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    width: 65,
                    height: 65,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            spreadRadius: 2,
                            blurRadius: 10,
                          )
                        ]),
                    child: Stack(
                      textDirection: TextDirection.rtl,
                      children: [
                        Center(
                          child: Container(
                            height: 65,
                            width: 65,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset(
                                "assets/images/${imgs[index]}",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        
                        Container(
                          margin: const EdgeInsets.all(4),
                          padding: const EdgeInsets.all(3),
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
           //Profil Menüsü Bitimi
            const SizedBox(height: 10),
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("Son sohbetler", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
          ),
          
           // Mesaj Kutusu başlangıç
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (context, index){
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatScreen()));
                  },
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/${imgs[index]}"),
                  ),
                  title: const Text("Dr. Doktor Adı", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),),
                  subtitle: const Text("Merhaba, doktor orada mısın ?", 
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54
                  ),
                  ),
                  trailing: const  Text("22:00", style: TextStyle(fontSize: 15, color: Colors.black54),),
                ),
              );
            }
            
            ),
        ],
      ),
    );
  }
}
