import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  projectCard(framework, title, description, numStar) {

    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 220,
      child: Card(
        color: const Color(0xff262628),
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                framework,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                description,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.white70,
                    size: 18,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    numStar,
                    style: const TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                  Expanded(
                      child: Container()
                  ),
                  IconButton(
                    onPressed: () async {
                      const url = 'https://github.com/SherazJamil';
                      if(await canLaunch(url)){
                      await launch(
                          url,
                        forceSafariVC: false,
                      );
                      }
                    },
                    icon: const Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        backgroundColor: const Color(0xff252525),
        title: const Text(
            'Projects'
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projectCard('FLUTTER', 'The Deliverers', 'base on Freelancing and E-Commerce', '4'),
              projectCard('FLUTTER', 'Quiz app using GetX', 'App for playing Quiz game', '1'),
              projectCard('FLUTTER', 'CUI Employee Attendance', 'Attendance on button click and using geo-fencing', '4'),
              projectCard('FLUTTER', 'Tic Tac Toe game', 'Tic Tac Toe game app', '4'),
              projectCard('FLUTTER', 'Calculator app', 'App for calculations', '3'),
              projectCard('Flutter','Weather app', 'Weather app using API', '2'),
              projectCard('FLUTTER', 'Chat app UI', 'Chat app UI made in Flutter', '1'),
              projectCard('FLUTTER', 'BMI Calculator app', 'App for calculating BMI', '1'),
              projectCard('FLUTTER', 'Signature App', 'App for making digital signature', '1'),
              projectCard('FLUTTER', 'Translator App', 'App for translating from one language to another', '1'),
              projectCard('PYTHON', 'Parking Management System', 'Desktop app for managing parking cars', '0'),
              projectCard('FLUTTER', 'My Portfolio app', 'My Portfolio', '1'),
              projectCard('FIGMA', 'Snap Chat app UI', 'Snap Chat UI made in Figma', '0'),
              projectCard('UNITY', 'Speed Horizon', 'Racing game made in Unity', '0'),
            ],
          ),
        ),
      ),
    );
  }
}