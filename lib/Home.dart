import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  achivements(num, type) {
    return Row(
      children: [
        Text(
            num,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "Soho",
            )),
        Container(
            margin: const EdgeInsets.only(top: 10),
            child: Text(
              type,
              style: const TextStyle(
                fontFamily: "Soho",
              ),
            ))
      ],
    );
  }

  myExpr(icon, txt) {
    return Container(
      height: 115,
      width: 105,
      child: Card(
        margin: const EdgeInsets.all(0),
        color: const Color(0xff252525),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                txt,
                style: const TextStyle(
                    fontSize: 16, fontFamily: "Soho",
                    color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: PopupMenuButton(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
            ),
            icon: const Icon(
                FontAwesomeIcons.barsStaggered
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: TextButton(
                    child: const Text(
                      'Projects',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/project');
                    }),
              ),
              PopupMenuItem(
                value: 2,
                child: TextButton(
                    child: const Text(
                      'About Me',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                    }),
              )
            ]),
      ),
      body: SlidingSheet(
        elevation: 8,
        cornerRadius: 50,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.38, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 35),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent],
                    ).createShader(
                        Rect.fromLTRB(0, 0, rect.width, rect.height));
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
                    top: MediaQuery.of(context).size.height * 0.49),
                child: Column(
                  children: const [
                    Text(
                        'Muhammad Sheraz Jamil',
                        style: TextStyle(
                            fontFamily: "Soho",
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Flutter Developer',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Soho",
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        builder: (context, state) {
          return Container(
            margin: const EdgeInsets.only(left: 20, top: 30, right: 20),
            height: 500,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      achivements('20', ' Projects'),
                      achivements('22', ' Repositories'),
                      achivements('7', ' Stars'),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Experienced In',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Soho",
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myExpr(FontAwesomeIcons.android, 'Android'),
                          myExpr(const Image(image: AssetImage('assets/firebase.png')), 'Firebase'),
                          myExpr(FontAwesomeIcons.github, 'GitHub'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          myExpr(const Image(image: AssetImage('assets/amazon.png')), 'Amazon VA'),
                          myExpr(const Image(image: AssetImage('assets/flutter.png')), 'Flutter'),
                          myExpr(FontAwesomeIcons.appStoreIos, 'iOS'),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myExpr(FontAwesomeIcons.filePen, 'Copy Writing'),
                          myExpr(const Image(image: AssetImage('assets/xd.png')), 'Adobe Xd'),
                          myExpr(const Image(image: AssetImage('assets/figma.png')), 'Figma')
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          myExpr(const Image(image: AssetImage('assets/canva.png')), 'Canva'),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}