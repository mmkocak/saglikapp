import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentScreen extends StatelessWidget {
  
  AppointmentScreen({Key? key}) : super(key: key);
  
  List imgs = [
    "doctor1.jpg",
    "doctor2.jpg",
    "doctor3.jpg",
    "doctor4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7165d6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              AssetImage("assets/images/doctor1.jpg"),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "Dr. Doktor Adı",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          "Terapist",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Color(0xFF9F97E2),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                color: Color(0xFF9F97E2),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                CupertinoIcons.chat_bubble_text_fill,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: MediaQuery.sizeOf(context).height,
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 20,
                left: 15,
              ),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    "Doktor Hakkında",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Yorumlar",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const Text(
                        "4.9",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "123",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color(0xFF7565d6),
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Tümünü Görüntüle",
                            style: TextStyle(
                                color: Color(0xFF7565d6),
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 160,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: ((context, index) {
                          return Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    spreadRadius: 2),
                              ],
                            ),
                            child: SizedBox(
                              width: MediaQuery.sizeOf(context).width / 1.4,
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(
                                      radius: 25,
                                      backgroundImage: AssetImage(
                                          "assets/images/${imgs[index]}"),
                                    ),
                                    title: const Text(
                                      "Dr. Doktor adı",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    subtitle: const Text(" 1 Gün önce "),
                                    trailing: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        Text(
                                          "4.9",
                                          style:
                                              TextStyle(color: Colors.black54),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Text(
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      "Dr.'a çok teşekkürler. Sayın. o harika ve profesyonel bir doktor",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        })),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Lokasyon",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                        color: Color(0xFFF0eefa),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.location_on,
                        size: 30,
                        color: Color(0xFF7565d6),
                      ),
                    ),
                    title: const Text(
                      "Van, Erciş merkez",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text("tıp merkezinin adres hattı"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15),
        height: 130,
        decoration: const BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
          )
        ]),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Muayene Ücreti",
                  style: TextStyle(color: Colors.black54),
                ),
                Text(
                  "1000 TL",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                padding: const EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: const  Color(0xFF7165D6),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text("Randevu Al",  
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
