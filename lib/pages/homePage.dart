import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_medical_ui/widgets/doctor_item.dart';
import 'package:flutter_medical_ui/widgets/specialist_item.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.houseUser,
                color: Color.fromARGB(215, 160, 160, 160),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.solidCalendarDays,
                color: Color.fromARGB(215, 160, 160, 160),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.solidComment,
                color: Color.fromARGB(215, 160, 160, 160),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.solidBell,
                color: Color.fromARGB(215, 160, 160, 160),
              ),
              label: ''),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello,",
                        style: TextStyle(color: Colors.black54, fontSize: 16),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Pesulap Merah",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 28,
                      backgroundImage: AssetImage("assets/pm.png"),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 223, 200, 228),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/surgeon.png',
                      width: 92,
                      height: 100,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "How Do You Feel?",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        const SizedBox(
                          width: 120.0,
                          child: Text(
                            "Fill out your medical right now",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Container(
                          width: 150,
                          height: 35,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: const Center(
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16.0),
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(97, 175, 173, 173),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(right: 10)),
                    Icon(
                      FontAwesomeIcons.searchengin,
                      size: 24,
                      color: Colors.black54,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      "How can we help you?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    SpecialistItem(
                      imagePath: "assets/clean.png",
                      imageName: "Dentist",
                    ),
                    const SizedBox(width: 8),
                    SpecialistItem(
                      imagePath: "assets/knife.png",
                      imageName: "Surgeon",
                    ),
                    const SizedBox(width: 8),
                    SpecialistItem(
                      imagePath: "assets/lungs.png",
                      imageName: "Theraphy",
                    ),
                    const SizedBox(width: 8),
                    SpecialistItem(
                      imagePath: "assets/hormones.png",
                      imageName: "Physiologist",
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Doctor List",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(color: Colors.black45, fontSize: 16.0),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DoctorItem(
                        image: "assets/1.png",
                        name: "Nycta Gina",
                        specialist: "Pediatrician"),
                    const SizedBox(width: 8.0),
                    DoctorItem(
                        image: "assets/3.png",
                        name: "Reisa Broto Asmoro",
                        specialist: "Surgeon"),
                    const SizedBox(width: 8.0),
                    DoctorItem(
                        image: "assets/2.png",
                        name: "Indah KusumaNingrum",
                        specialist: "Odontologist"),
                    const SizedBox(width: 8.0),
                    DoctorItem(
                        image: "assets/4.png",
                        name: "Mesty Ariotedjo",
                        specialist: "Ophtamologist"),
                    const SizedBox(width: 8.0),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
