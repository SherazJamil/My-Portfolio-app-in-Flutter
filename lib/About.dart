import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/shery.png',
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Hello I am',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('Muhammad Sheraz Jamil',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40
                      )
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        backgroundColor: Colors.white, // Background Color
                      ),
                      child: const Text(
                          'Hire Me'
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            Share.share('https://www.linkedin.com/in/muhammad-sheraz-jamil-32b729185');
                          },
                          icon: const Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            Share.share('https://github.com/SherazJamil');
                          },
                          icon: const Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {
                            Share.share('https://twitter.com/sheraz_j8');
                          },
                          icon: const Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.facebook,
                            color: Colors.white,
                          )
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}