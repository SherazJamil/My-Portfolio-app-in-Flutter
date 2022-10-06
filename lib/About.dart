import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      body: Stack(
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
                const Text(
                    'Muhammad Sheraz Jamil',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30
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
                    onPressed: () {
                      launch(
                        'mailto:sherazjamil463@gmail.com?subject=Purpose of Email Title&body=Write your message here',
                      );
                    },
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
                        onPressed: () async {
                          const url = 'https://www.linkedin.com/in/muhammad-sheraz-jamil-32b729185';
                          if(await canLaunch(url)){
                            await launch(
                                url,
                              forceSafariVC: false,
                            );
                          }
                        },
                        icon: const Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.white,
                        )),
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
                        )),
                    IconButton(
                        onPressed: () async {
                          const url = 'https://twitter.com/sheraz_j8';
                          if(await canLaunch(url)){
                          await launch(
                              url,
                            forceSafariVC: false,
                          );
                          }
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
    );
  }
}