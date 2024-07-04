// ignore_for_file: avoid_print, library_private_types_in_public_api, unused_import, depend_on_referenced_packages

import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:Digamend/footer.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({Key? key}) : super(key: key);

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop>
    with SingleTickerProviderStateMixin {
  double opacity = 1.0;
  bool isHovered = false;
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;
  late AnimationController _controller;
  late Animation<Offset> _animationLeft;
  late Animation<Offset> _animationRight;
  bool _isHovered = true;

  final LinearGradient _gradient = const LinearGradient(
    colors: <Color>[
      Color(0xFF052B6F),
      Color(0xffCA256D),
    ],
  );

  late ScrollController scrollControllerBottom;

  void _scrollToYellowContainer() {
    final double offset = scrollControllerBottom.position.maxScrollExtent;
    scrollControllerBottom.animateTo(
      offset,
      duration: const Duration(milliseconds: 1000),
      curve: Curves.easeOut,
    );
  }

  @override
  void initState() {
    scrollControllerBottom = ScrollController();

    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900));
    _animationLeft = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _animationRight = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      backgroundColor: const Color(0x00ffffff),
      body: SingleChildScrollView(
        controller: scrollControllerBottom,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                    bottom: BorderSide(
                        color: Color.fromARGB(255, 240, 240, 240), width: 2)),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.sizeOf(context).width / 18,
                    vertical: height / 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        // Navigate to the Home screen
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Image.asset(
                        "assets/images/DAD Appbar.png",
                        width: width / 17,
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {
                              // Close the drawer
                              Navigator.pop(context);
                              // Navigate to the Home screen
                              Navigator.pushNamed(context, '/home');
                            },
                            child: Column(
                              children: [
                                ShaderMask(
                                  shaderCallback: (Rect rect) {
                                    return _gradient.createShader(rect);
                                  },
                                  child: Text(
                                    'HOME',
                                    style: GoogleFonts.jost(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: width * 0.011),
                                  ),
                                ),
                                Container(
                                  width: width / 29,
                                  height: 1,
                                  decoration:
                                      BoxDecoration(gradient: _gradient),
                                )
                              ],
                            )),
                        SizedBox(
                          width: width / 22,
                        ),
                        InkWell(
                            onTap: () {
                              // Close the drawer
                              Navigator.pop(context);
                              // Navigate to the Home screen
                              Navigator.pushNamed(context, '/products');
                            },
                            child: Column(
                              children: [
                                ShaderMask(
                                  shaderCallback: (Rect rect) {
                                    return _gradient.createShader(rect);
                                  },
                                  child: Text(
                                    'PRODUCTS',
                                    style: GoogleFonts.jost(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: width * 0.011),
                                  ),
                                ),
                              ],
                            )),
                        SizedBox(
                          width: width / 22,
                        ),
                        InkWell(
                            onTap: () {
                              // Close the drawer
                              Navigator.pop(context);
                              // Navigate to the Home screen
                              Navigator.pushNamed(context, '/services');
                            },
                            child: Column(
                              children: [
                                ShaderMask(
                                  shaderCallback: (Rect rect) {
                                    return _gradient.createShader(rect);
                                  },
                                  child: Text(
                                    'SERVICES',
                                    style: GoogleFonts.jost(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                        fontSize: width * 0.011),
                                  ),
                                ),
                              ],
                            )),
                        // SizedBox(
                        //   width: width / 35,
                        // ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        _scrollToYellowContainer();
                        // Navigator.pushNamed(context, '/contact');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: const Border.fromBorderSide(
                                BorderSide(color: Colors.black)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(width / 500))),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: width / 100, vertical: height / 80),
                          child: Text(
                            "CONTACT",
                            style: GoogleFonts.poppins(
                              fontSize: width * 0.010,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: width / 1,
                  height: height / 1.154,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/pardigm.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: width / 2.6,
                            child: RichText(
                              textAlign: TextAlign.center,
                              maxLines: 5,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'A new paradigm of ',
                                    style: GoogleFonts.jost(
                                      color: const Color(0xff143274),
                                      fontSize: width * 0.038,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Digital Experiences.',
                                    style: GoogleFonts.jost(
                                      color: const Color(
                                          0xffCA256D), // Change to your desired color
                                      fontSize: width * 0.038,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: height / 20,
                          ),
                          SizedBox(
                            width: width / 2.1,
                            child: Text(
                              'Ready to embark  on an unforgettable journey into the world of virtual reality and gaming ? Explore our website to learn more about our products & services. Join us as we redefine the future of entertainment together.',
                              maxLines: 10,
                              textAlign: TextAlign.center,
                              style: GoogleFonts.jost(fontSize: width * 0.016),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: width / 2.5,
                        child: Image.asset(
                          'assets/images/corllel.png',
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Text(
                    "About Us",
                    style: GoogleFonts.jost(
                        color: Colors.grey[200],
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w700),
                  ),
                  Positioned(
                    top: width * 0.03,
                    left: width * 0.056,
                    child: Text(
                      "About Us",
                      style: GoogleFonts.jost(
                          color: const Color(0xff143274),
                          fontSize: width * 0.025,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ])
              ],
            ),
            SizedBox(
              height: height / 16,
            ),
            SizedBox(
              width: width / 1.1,
              child: Text(
                "Welcome to Digamend, where imagination meets innovation in the world of Entertainment, Virtual Reality (VR), and Gaming. At Digamend, we're passionate about creating unforgettable experiences that transport you to new realms and redefine the boundaries of entertainment. Whether you're a gaming enthusiast, a VR adventurer, or simply seeking immersive entertainment, we have something extraordinary for you. ",
                maxLines: 10,
                textAlign: TextAlign.center,
                style: GoogleFonts.jost(fontSize: width * 0.012),
              ),
            ),
            SizedBox(
              height: height / 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Text(
                    "Our Mission",
                    style: GoogleFonts.jost(
                        color: Colors.grey[200],
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w700),
                  ),
                  Positioned(
                    top: width * 0.03,
                    left: width * 0.070,
                    child: Text(
                      "Our Mission",
                      style: GoogleFonts.jost(
                          color: const Color(0xff143274),
                          fontSize: width * 0.025,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ])
              ],
            ),
            SizedBox(
              height: height / 16,
            ),
            SizedBox(
              width: width / 1.1,
              child: Text(
                "Our mission is simple yet ambitious: to revolutionize the way you experience entertainment. We strive to push the boundaries of creativity and technology, bringing you cutting-edge experiences that captivate your senses and leave you craving more.",
                maxLines: 10,
                textAlign: TextAlign.center,
                style: GoogleFonts.jost(fontSize: width * 0.012),
              ),
            ),
            SizedBox(
              height: height / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  color: Colors.transparent,
                  width: width / 2.35,
                  height: height / 1.95,
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isHovered = true;
                      });
                      print("On");
                    },
                    onExit: (_) {
                      setState(() {
                        isHovered = false;
                      });
                      print("Off");
                    },
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            width: width / 2.35,
                            height: height / 1.95,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/mission_left.png"),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: AnimatedContainer(
                            width: isHovered ? width / 2.35 : width / 2.7,
                            height: isHovered ? height / 1.95 : height / 2.5,
                            duration:
                                Duration(milliseconds: isHovered ? 500 : 1000),
                            curve: Curves.easeInOut,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: Colors.white.withOpacity(
                                  0.2), // Initial color with opacity
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: isHovered
                                      ? 5.0
                                      : 5.0, // Adjust the blur intensity based on hover
                                  sigmaY: isHovered ? 5.0 : 5.0,
                                ),
                                child: Container(
                                  color: Colors.white.withOpacity(
                                      0.2), // Color for the blurred effect
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Pushing the Boundaries of Innovation",
                                          style: GoogleFonts.jost(
                                            fontSize: width * 0.016,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: height / 30),
                                        SizedBox(
                                          width: width / 3.2,
                                          child: Text(
                                            "We are committed to pushing the boundaries of innovation in VR and gaming, constantly exploring new technologies, techniques, and concepts to enhance the user experience and drive the industry forward. Through our relentless pursuit of innovation, we aim to inspire and empower creators to push the limits of what is possible in virtual worlds.",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.jost(
                                              fontWeight: FontWeight.w300,
                                              fontSize: width * 0.012,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  width: width / 2.35,
                  height: height / 1.95,
                  child: MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        isHovered1 = true;
                      });
                      print("On");
                    },
                    onExit: (_) {
                      setState(() {
                        isHovered1 = false;
                      });
                      print("Off");
                    },
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            width: width / 2.35,
                            height: height / 1.95,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    "assets/images/mission_right.png"),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: AnimatedContainer(
                            width: isHovered1 ? width / 2.35 : width / 2.7,
                            height: isHovered1 ? height / 1.95 : height / 2.5,
                            duration:
                                Duration(milliseconds: isHovered1 ? 500 : 1000),
                            curve: Curves.easeInOut,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              color: Colors.white.withOpacity(
                                  0.2), // Initial color with opacity
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(
                                Radius.circular(8),
                              ),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: isHovered1
                                      ? 5.0
                                      : 5.0, // Adjust the blur intensity based on hover
                                  sigmaY: isHovered1 ? 5.0 : 5.0,
                                ),
                                child: Container(
                                  color: Colors.white.withOpacity(
                                      0.2), // Color for the blurred effect
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Join Us on the Journey",
                                          style: GoogleFonts.jost(
                                            fontSize: width * 0.016,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        SizedBox(height: height / 30),
                                        SizedBox(
                                          width: width / 3.2,
                                          child: Text(
                                            " Join us on an exhilarating journey through the realms of Entertainment, Virtual Reality, and Gaming. Whether you're a seasoned explorer or a newcomer to the world of immersive experiences, there's always something new and exciting waiting for you at Digamend.Let's embark on this adventure together!",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.jost(
                                              fontWeight: FontWeight.w300,
                                              fontSize: width * 0.012,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height / 10,
            ),
            Container(
              height: height / 2.3,
              color: Colors.white,
              child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      _isHovered = true;
                      _controller.forward();
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      _isHovered = true;
                      _controller.reverse();
                    });
                  },
                  child: SizedBox(
                    width: width / 1,
                    child: Stack(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                width: width / 1.2,
                                child: HoverWidget(
                                  hoverChild: AnimatedOpacity(
                                    opacity: _isHovered ? 0.9 : 1,
                                    duration: const Duration(milliseconds: 0),
                                    child: Image.asset(
                                      'assets/images/Immersive1.png',
                                    ),
                                  ),
                                  onHover: (event) {
                                    //  _isHovered = true;
                                  },
                                  child: SizedBox(
                                    child: Image.asset(
                                        'assets/images/Immersive1.png'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Positioned(
                        right: 40,
                        top: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            HoverUnderlineText(
                              text: 'Immersive VR Experiences',
                              underlineColor: const Color(0xffCA256D),
                              isHovered: _isHovered,
                              animationLeft: _animationLeft,
                              animationRight: _animationRight,
                            ),
                            SizedBox(
                              height: height / 25,
                            ),
                            SizedBox(
                              width: width / 1.7,
                              child: Text(
                                "Dive into captivating virtual worlds with our state-of-the-art VR experiences. From heart-pounding adventures to mind-bending simulations, our VR offerings will transport you to places you've only dreamed of. We strive to empower individuals to explore, create, and connect in virtual worlds that transcend the limits of reality. Through our VR and gaming platform, we aim to provide users with immersive experiences that captivate their senses, spark their imagination, and transport them to new realms of possibility.",
                                maxLines: 10,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.jost(
                                  fontSize: width * 0.012,
                                  color: const Color(0xff444444),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  )),
            ),
            SizedBox(
              height: height / 16,
            ),
            const Gaming(),
            SizedBox(
              height: height / 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Text(
                    "We Offer",
                    style: GoogleFonts.jost(
                        color: Colors.grey[200],
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w700),
                  ),
                  Positioned(
                    top: width * 0.03,
                    left: width * 0.060,
                    child: Text(
                      "We Offer",
                      style: GoogleFonts.jost(
                          color: const Color(0xff143274),
                          fontSize: width * 0.025,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ])
              ],
            ),
            SizedBox(
              height: height / 15,
            ),
            Container(
              height: height / 2,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageWithHoverEffect(imageUrl: 'assets/images/vrarimage.png'),
                  ImageWithHoverEffect(
                      imageUrl: 'assets/images/gamingimage.png'),
                  ImageWithHoverEffect(imageUrl: 'assets/images/uxuiimage.png'),
                  ImageWithHoverEffect(imageUrl: 'assets/images/awsimage.png'),
                ],
              ),
            ),
            SizedBox(
              height: height / 10,
            ),
            Stack(children: [
              Text(
                "Our Products",
                style: GoogleFonts.jost(
                    color: Colors.grey[200],
                    fontSize: width * 0.05,
                    fontWeight: FontWeight.w700),
              ),
              Positioned(
                top: width * 0.03,
                left: width * 0.080,
                child: Text(
                  "Our Products",
                  style: GoogleFonts.jost(
                      color: const Color(0xff143274),
                      fontSize: width * 0.025,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ]),
            SizedBox(
              height: height / 25,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: width / 3.7,
                    height: height / 2.5,
                    child: WidgetFlipper(
                      //conatiner for fornt side
                      frontWidget: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(children: [
                          Image.asset(
                            "assets/images/1f.png",
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "RIVW",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.jost(
                                        fontWeight: FontWeight.bold,
                                        fontSize: width * 0.029,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ]),
                      ),
                      //conatiner for back side
                      backWidget: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(children: [
                          Image.asset(
                            "assets/images/1b.png",
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.03,
                                vertical: width * 0.022),
                            child: Center(
                              child: SizedBox(
                                width: width * 0.8,
                                child: Text(
                                  "Enjoy travelling around the world with your own Avatar. The virtual world is yours to explore, and the possibilities are limited only by your imagination. Social Connections ",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.jost(
                                      fontWeight: FontWeight.w600,
                                      fontSize: width * 0.012,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),

                  // second card

                  SizedBox(
                    width: width / 3.7,
                    height: height / 2.5,
                    child: WidgetFlipper(
                      //conatiner for fornt side
                      frontWidget: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(children: [
                          Image.asset(
                            "assets/images/2f.png",
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Lost\nContinent",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.jost(
                                        fontWeight: FontWeight.bold,
                                        fontSize: width * 0.029,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ]),
                      ),
                      //conatiner for back side
                      backWidget: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(children: [
                          Image.asset(
                            "assets/images/2b.png",
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.03,
                                vertical: width * 0.022),
                            child: Center(
                              child: SizedBox(
                                width: width * 0.8,
                                child: Text(
                                  "Are you ready for the ultimate treasure hunting adventure & Battle Combat? Join us as we embark on a thrilling journey to uncover hidden riches in the lost continents of the world! ",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.jost(
                                      fontWeight: FontWeight.w600,
                                      fontSize: width * 0.012,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),

                  //third card

                  SizedBox(
                    width: width / 3.7,
                    height: height / 2.5,
                    child: WidgetFlipper(
                      //conatiner for fornt side
                      frontWidget: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(children: [
                          Image.asset(
                            "assets/images/3f.png",
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Corlmart",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.jost(
                                        fontWeight: FontWeight.bold,
                                        fontSize: width * 0.029,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ),
                      //conatiner for back side
                      backWidget: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Stack(children: [
                          Image.asset(
                            "assets/images/3b.png",
                            fit: BoxFit.fill,
                            width: double.infinity,
                            height: double.infinity,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: width * 0.03,
                                vertical: width * 0.022),
                            child: Center(
                              child: SizedBox(
                                width: width * 0.8,
                                child: Text(
                                  "Empowering your 3D dreams, looking to elevate your projects to the next dimension? Explore our vast collection of meticulously crafted 3D models designed to meet your creative needs.",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.jost(
                                      fontWeight: FontWeight.w600,
                                      fontSize: width * 0.012,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height / 16,
            ),
            Got(),
            SizedBox(
              height: height / 16,
            ),
            const FooterSection()
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class HoverUnderlineText extends StatelessWidget {
  final String text;
  final Color underlineColor;
  final bool isHovered;
  final Animation<Offset> animationLeft;
  final Animation<Offset> animationRight;

  const HoverUnderlineText({
    Key? key,
    required this.text,
    required this.underlineColor,
    required this.isHovered,
    required this.animationLeft,
    required this.animationRight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Stack(
      children: [
        Text(
          text,
          style: GoogleFonts.jost(
              fontSize: width * 0.019,
              color: const Color(0xff143274),
              fontWeight: FontWeight.w600),
        ),
        if (isHovered)
          Positioned(
            bottom: 0,
            left: 0,
            child: SlideTransition(
              position: animationRight,
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 2.0,
                color: underlineColor,
              ),
            ),
          ),
        if (isHovered)
          Positioned(
            bottom: 0,
            right: 0,
            child: SlideTransition(
              position: animationLeft,
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 2.0,
                color: underlineColor,
              ),
            ),
          ),
      ],
    );
  }
}

class ImageWithHoverEffect extends StatefulWidget {
  final String imageUrl;

  const ImageWithHoverEffect({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  _ImageWithHoverEffectState createState() => _ImageWithHoverEffectState();
}

class _ImageWithHoverEffectState extends State<ImageWithHoverEffect> {
  bool _isHovered = false;
  // ignore: unused_field
  int? _currentHoverIndex;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
          _currentHoverIndex = context
              .findRenderObject()!
              .getTransformTo(null)
              .getTranslation()
              .x
              .round();
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Stack(
        children: [
          Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              width:
                  _isHovered ? screenSize.width * 0.24 : screenSize.width * 0.2,
              height:
                  _isHovered ? screenSize.width * 0.24 : screenSize.width * 0.2,
              child: ClipRect(
                child: AnimatedContainer(
                    duration: const Duration(
                        milliseconds: 500), // Slower animation for zoom effect
                    curve: Curves.ease,
                    transform: Matrix4.identity()
                      ..scale(_isHovered ? 1.01 : 1.0),
                    child: Image.asset(
                      widget.imageUrl,
                      fit: BoxFit.cover,
                    )
                    //  Image.network(
                    //   widget.imageUrl,
                    //   fit: BoxFit.cover,
                    // ),
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetFlipper extends StatefulWidget {
  const WidgetFlipper({
    super.key,
    required this.frontWidget,
    required this.backWidget,
  });

  final Widget frontWidget;
  final Widget backWidget;

  @override
  _WidgetFlipperState createState() => _WidgetFlipperState();
}

class _WidgetFlipperState extends State<WidgetFlipper>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> _frontRotation;
  late Animation<double> _backRotation;
  bool isFrontVisible = true;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    _frontRotation = Tween(begin: 0.0, end: pi).animate(controller);
    _backRotation = Tween(begin: -pi, end: 0.0).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        if (isFrontVisible) {
          controller.forward();
          isFrontVisible = false;
        }
      },
      onExit: (_) {
        if (!isFrontVisible) {
          controller.reverse();
          isFrontVisible = true;
        }
      },
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(
                  isFrontVisible ? _frontRotation.value : _backRotation.value),
            alignment: Alignment.center,
            child: isFrontVisible ? widget.frontWidget : widget.backWidget,
          );
        },
      ),
    );
  }
}

class Gaming extends StatefulWidget {
  const Gaming({Key? key}) : super(key: key);

  @override
  _GamingState createState() => _GamingState();
}

class _GamingState extends State<Gaming> with SingleTickerProviderStateMixin {
  late AnimationController _controller1;
  late Animation<Offset> _animationLeft1;
  late Animation<Offset> _animationRight1;

  bool _isHovered1 = true;

  @override
  void initState() {
    super.initState();
    _controller1 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900));
    _animationLeft1 = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(parent: _controller1, curve: Curves.easeInOut));
    _animationRight1 = Tween<Offset>(
      begin: const Offset(1.0, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(parent: _controller1, curve: Curves.easeInOut));
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Container(
      height: height / 2.3,
      color: Colors.white,
      child: MouseRegion(
          onEnter: (_) {
            setState(() {
              _isHovered1 = true;
              _controller1.forward();
            });
          },
          onExit: (_) {
            setState(() {
              _isHovered1 = true;
              _controller1.reverse();
            });
          },
          child: SizedBox(
            width: width / 1,
            child: Stack(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 90.0),
                          child: SizedBox(
                            width: width / 1.2,
                            child: HoverWidget(
                              hoverChild: AnimatedOpacity(
                                opacity: _isHovered1 ? 0.9 : 1,
                                duration: const Duration(milliseconds: 0),
                                child: Image.asset(
                                  'assets/images/Gaming1.png',
                                ),
                              ),
                              onHover: (event) {
                                //  _isHovered = true;
                              },
                              child: SizedBox(
                                child: Image.asset('assets/images/Gaming1.png'),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Positioned(
                left: 35,
                top: 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GamingUnderlineText(
                      text: 'Gaming Excellence',
                      underlineColor: const Color(0xffCA256D),
                      isHovered1: _isHovered1,
                      animationLeft1: _animationLeft1,
                      animationRight1: _animationRight1,
                    ),
                    SizedBox(
                      height: height / 25,
                    ),
                    SizedBox(
                      width: width / 1.7,
                      child: Text(
                        "Whether you're a casual player or a hardcore gamer, we've got you covered. Explore our diverse collection of games spanning various genres, platforms, and playstyles. Get ready to embark on epic quests, engage in thrilling competitions, and connect with fellow gamers from around the globe.",
                        maxLines: 10,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.jost(
                          fontSize: width * 0.012,
                          color: const Color(0xff444444),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          )),
    );
  }

  @override
  void dispose() {
    _controller1.dispose();
    super.dispose();
  }
}

class GamingUnderlineText extends StatelessWidget {
  final String text;
  final Color underlineColor;
  final bool isHovered1;
  final Animation<Offset> animationLeft1;
  final Animation<Offset> animationRight1;

  const GamingUnderlineText({
    Key? key,
    required this.text,
    required this.underlineColor,
    required this.isHovered1,
    required this.animationLeft1,
    required this.animationRight1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    return Stack(
      children: [
        Text(
          text,
          style: GoogleFonts.jost(
              fontSize: width * 0.019,
              color: const Color(0xff143274),
              fontWeight: FontWeight.w600),
        ),
        if (isHovered1)
          Positioned(
            bottom: 0,
            left: 0,
            child: SlideTransition(
              position: animationRight1,
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 2.0,
                color: underlineColor,
              ),
            ),
          ),
        if (isHovered1)
          Positioned(
            bottom: 0,
            right: 0,
            child: SlideTransition(
              position: animationLeft1,
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 2.0,
                color: underlineColor,
              ),
            ),
          ),
      ],
    );
  }
}

class Got extends StatefulWidget {
  const Got({Key? key}) : super(key: key);

  @override
  State<Got> createState() => _GotState();
}

class _GotState extends State<Got> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _designTasksController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _companyNameController = TextEditingController();

  bool isCardHovered = false;

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      const String url = 'https://digamend-backend.vercel.app/contact-us';
      final response = await http.post(Uri.parse(url), body: {
        'name': _nameController.text,
        'email': _emailController.text,
        'phoneNumber': _phoneNumberController.text,
        'designTasks': _designTasksController.text,
        'companyName': _companyNameController.text,
      });

      if (response.statusCode == 201) {
        // Form submitted successfully
        print('Form submitted successfully');
        // Show success alert
        _showAlertMessage('Success', 'Form submitted successfully');
      } else {
        // Error submitting form
        print('Error submitting form');
        // Show error alert
        _showAlertMessage('Error', 'Failed to submit form');
      }
    }
  }

  void _showAlertMessage(String title, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        MouseRegion(
          onEnter: (event) {
            setState(() {
              isCardHovered = true;
            });
          },
          onExit: (event) {
            setState(() {
              isCardHovered = false;
            });
          },
          child: Stack(
            children: [
              AnimatedOpacity(
                duration: const Duration(milliseconds: 1500),
                opacity: isCardHovered ? 1.0 : 0.0,
                curve: Curves.ease,
                child: Image.asset("assets/images/question_bg.png"),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.sizeOf(context).height / 7.5),
                child: Form(
                  key: _formKey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: width / 1.1,
                        // height: height / 2.2,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/got.png"),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: width * 0.05,
                            vertical: width * 0.022,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Got an idea?",
                                    style: GoogleFonts.jost(
                                      fontWeight: FontWeight.bold,
                                      fontSize: width * 0.024,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    height: width * 0.005,
                                    width: width * 0.083,
                                  ),
                                  SizedBox(
                                    height: width * 0.04,
                                  ),
                                  Text(
                                    "Know what you want? Great.",
                                    style: GoogleFonts.jost(
                                      fontWeight: FontWeight.w300,
                                      fontSize: width * 0.012,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    "Got questions? Even better.",
                                    style: GoogleFonts.jost(
                                      fontWeight: FontWeight.w300,
                                      fontSize: width * 0.012,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: width / 1.8,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Tell Us About You",
                                                style: GoogleFonts.jost(
                                                  color:
                                                      const Color(0xff444444),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: width * 0.013, //16
                                                ),
                                              ),
                                              SizedBox(
                                                width: width / 5,
                                                child: TextFormField(
                                                  controller: _nameController,
                                                  style: TextStyle(
                                                    fontSize: width * 0.013,
                                                  ),
                                                  decoration: InputDecoration(
                                                    border:
                                                        const UnderlineInputBorder(),
                                                    hintText: 'Your name*',
                                                    hintStyle: TextStyle(
                                                        fontSize: width * 0.01,
                                                        color: Colors.black),
                                                    isDense: true,
                                                  ),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Please enter your name';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                              ),
                                              SizedBox(
                                                width: width / 5,
                                                child: TextFormField(
                                                  controller:
                                                      _phoneNumberController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  inputFormatters: <TextInputFormatter>[
                                                    FilteringTextInputFormatter
                                                        .digitsOnly
                                                  ],
                                                  style: TextStyle(
                                                    fontSize: width * 0.013,
                                                  ),
                                                  decoration: InputDecoration(
                                                    border:
                                                        const UnderlineInputBorder(),
                                                    hintText:
                                                        'Your phone number',
                                                    hintStyle: TextStyle(
                                                        fontSize: width * 0.01,
                                                        color: Colors.black),
                                                    isDense: true,
                                                  ),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Please enter your phone number';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                              ),
                                              SizedBox(
                                                width: width / 5,
                                                child: TextFormField(
                                                  controller:
                                                      _designTasksController,
                                                  style: TextStyle(
                                                    fontSize: width * 0.013,
                                                  ),
                                                  decoration: InputDecoration(
                                                    border:
                                                        const UnderlineInputBorder(),
                                                    hintText:
                                                        'What design tasks do you have?',
                                                    hintStyle: TextStyle(
                                                        fontSize: width * 0.01,
                                                        color: Colors.black),
                                                    isDense: true,
                                                  ),
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Please enter your Tasks';
                                                    }
                                                    return null;
                                                  },
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: width * 0.016),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: width / 5,
                                                  child: TextFormField(
                                                    controller:
                                                        _emailController,
                                                    style: TextStyle(
                                                      fontSize: width * 0.013,
                                                    ),
                                                    decoration: InputDecoration(
                                                      border:
                                                          const UnderlineInputBorder(),
                                                      hintText: 'Your email*',
                                                      hintStyle: TextStyle(
                                                          fontSize:
                                                              width * 0.01,
                                                          color: Colors.black),
                                                      isDense: true,
                                                    ),
                                                    validator: (value) {
                                                      if (value == null ||
                                                          value.isEmpty) {
                                                        return 'Please enter your email';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: width / 5,
                                                  child: TextFormField(
                                                    controller:
                                                        _companyNameController,
                                                    style: TextStyle(
                                                      fontSize: width * 0.013,
                                                    ),
                                                    decoration: InputDecoration(
                                                      border:
                                                          const UnderlineInputBorder(),
                                                      hintText:
                                                          'Your company name',
                                                      hintStyle: TextStyle(
                                                          fontSize:
                                                              width * 0.01,
                                                          color: Colors.black),
                                                      isDense: true,
                                                    ),
                                                    validator: (value) {
                                                      if (value == null ||
                                                          value.isEmpty) {
                                                        return 'Please enter your company name';
                                                      }
                                                      return null;
                                                    },
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: width * 0.01,
                                                ),
                                                Container(
                                                  height: height / 18,
                                                  width: width / 20,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xFF143274),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xFF143274),
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: InkWell(
                                                    onTap: _submitForm,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text(
                                                          "Submit",
                                                          style: GoogleFonts
                                                              .montserrat(
                                                            color: Colors.white,
                                                            fontSize:
                                                                width * 0.01,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
