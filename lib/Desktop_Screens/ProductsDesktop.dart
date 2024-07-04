// ignore_for_file: depend_on_referenced_packages

import 'package:Digamend/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductsDesktopScreen extends StatefulWidget {
  const ProductsDesktopScreen({Key? key}) : super(key: key);

  @override
  State<ProductsDesktopScreen> createState() => _ProductsDesktopScreenState();
}

class _ProductsDesktopScreenState extends State<ProductsDesktopScreen> {
  bool isRivwHovered = false;
  bool onRiwvVisit = false;

  bool isCorlMartHovered = false;
  bool onColrMartVisit = false;

  bool isLostContinentHovered = false;
  bool onLostContinentVisit = false;

  bool corllelVisit = false;

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
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(252, 252, 252, 252),
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
                                Container(
                                  width: width / 18,
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
            Image.asset("assets/images/gif11.gif"),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width / 20),
              child: Text(
                textAlign: TextAlign.center,
                "At corlel we are passionate about creating unforgettable experiences that transport you to new realms and redefine the boundaries of entertainment & innovation. Whether you are a gaming enthusiast, a VR adventures, or simply seeking immersive entertainment, we have something extraordinary for you. Get ready to experience the best in- class.",
                style: GoogleFonts.jost(fontSize: width * 0.0145, height: 1.7),
              ),
            ),
            SizedBox(
              height: height / 24,
            ),
            InkWell(
              onTap: () {
                launch('http://corllel.com/');
              },
              child: MouseRegion(
                onEnter: (event) {
                  setState(() {
                    corllelVisit = true;
                  });
                },
                onExit: (event) {
                  setState(() {
                    corllelVisit = false;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(3)),
                    border: corllelVisit
                        ? const GradientBoxBorder(
                            width: 2,
                            gradient: LinearGradient(colors: [
                              Color(0xFFFF5F6A),
                              Color(0xFF143274),
                            ]),
                          )
                        : Border.all(color: Colors.black, width: 2),
                    boxShadow: corllelVisit
                        ? [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 7,
                            ),
                          ]
                        : [],
                  ),
                  child: Text(
                    "Visit",
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.width * 0.0113,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 16,
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
              height: height / 13,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width / 17),
              child: Container(
                clipBehavior: Clip.hardEdge,
                // width: MediaQuery.sizeOf(context).width / 1.5,
                height: MediaQuery.sizeOf(context).height / 1.6,
                decoration: BoxDecoration(
                    boxShadow: isRivwHovered
                        ? [
                            BoxShadow(
                              color: const Color.fromARGB(255, 107, 106, 106)
                                  .withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: const Offset(5, 5),
                            )
                          ]
                        : [],
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        width: 2, color: const Color.fromARGB(255, 7, 43, 73)),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isRivwHovered = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isRivwHovered = false;
                    });
                  },
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: isRivwHovered ? 1 : 0,
                        child: AnimatedContainer(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              )),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          width: isRivwHovered
                              ? MediaQuery.sizeOf(context).width / 3.3
                              : 0,
                          height: double.infinity,
                          child: Center(
                              child: isRivwHovered
                                  ? AnimatedOpacity(
                                      duration:
                                          const Duration(milliseconds: 19000),
                                      opacity: isRivwHovered ? 1.0 : 0.0,
                                      curve: Curves.ease,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.sizeOf(context)
                                                    .width /
                                                50),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Embark on a journey like no other as we invite you to explore the infinite realms of the virtual universe. Our platform is your gateway to immersive experiences, where boundaries blur and imagination knows no limit. Dive into a kaleidoscope of virtual worlds each offering its own wonders and adventures. From bustling futuristic cities to serene natural landscapes, there’s something for every explorer to discovers. Ready to embark on the ultimate virtual reality world tour? The future of exploration is here. Step in to the virtual reality metaverse world tour and prepare to be amazed. Welcome to a world without limits. Welcome to the future adventure!!!Welcome to the future adventure!!!",
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 10,
                                              style: GoogleFonts.poppins(
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.011,
                                                  height: 1.8),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.sizeOf(context)
                                                      .height /
                                                  40,
                                            ),
                                            Text(
                                              "Welcome to the future adventure!!!",
                                              style: GoogleFonts.poppins(
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.012,
                                                  fontWeight: FontWeight.w700),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  : const SizedBox()),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(20),
                              bottomLeft: const Radius.circular(20),
                              topRight: isRivwHovered
                                  ? const Radius.circular(20)
                                  : Radius.zero,
                              bottomRight: isRivwHovered
                                  ? const Radius.circular(20)
                                  : Radius.zero,
                            )),
                        // padding: EdgeInsets.only(
                        // left: MediaQuery.sizeOf(context).width / 500),
                        width: MediaQuery.sizeOf(context).width / 2.4,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Center(
                              widthFactor: 1.25,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right:
                                        MediaQuery.sizeOf(context).width / 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/rivw letter.png',
                                      width:
                                          MediaQuery.sizeOf(context).width / 4,
                                      // height: MediaQuery.sizeOf(context).height / 1,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              24,
                                    ),
                                    Text(
                                      "Immersive VR/Metaverse Experience",
                                      style: GoogleFonts.poppins(
                                          fontSize:
                                              MediaQuery.sizeOf(context).width *
                                                  0.0113,
                                          color: const Color(0xFF143274),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              24,
                                    ),
                                    AnimatedOpacity(
                                        duration:
                                            const Duration(milliseconds: 3000),
                                        opacity: isRivwHovered ? 1.0 : 0.0,
                                        curve: Curves.ease,
                                        child: isRivwHovered
                                            ? MouseRegion(
                                                onEnter: (event) {
                                                  setState(() {
                                                    onRiwvVisit = true;
                                                  });
                                                },
                                                onExit: (event) {
                                                  setState(() {
                                                    onRiwvVisit = false;
                                                  });
                                                },
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 20,
                                                      vertical: 6),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(3)),
                                                    border: onRiwvVisit
                                                        ? const GradientBoxBorder(
                                                            width: 2,
                                                            gradient:
                                                                LinearGradient(
                                                                    colors: [
                                                                  Color(
                                                                      0xFFFF5F6A),
                                                                  Color(
                                                                      0xFF143274),
                                                                ]),
                                                          )
                                                        : Border.all(
                                                            color: Colors.black,
                                                            width: 2),
                                                    boxShadow: onRiwvVisit
                                                        ? [
                                                            BoxShadow(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.5),
                                                              spreadRadius: 2,
                                                              blurRadius: 7,
                                                            ),
                                                          ]
                                                        : [],
                                                  ),
                                                  child: Text(
                                                    "Visit",
                                                    style: GoogleFonts.poppins(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.0113,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : const SizedBox()),
                                    AnimatedContainer(
                                      height: isRivwHovered
                                          ? MediaQuery.sizeOf(context).height /
                                              15
                                          : 0,
                                      curve: Curves.ease,
                                      duration:
                                          const Duration(milliseconds: 2000),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: MediaQuery.sizeOf(context).height / 7.4,
                              child: Image.asset(
                                'assets/images/ellipse rivw.png',
                                fit: BoxFit.cover,
                                width: MediaQuery.sizeOf(context).width / 11.2,

                                // height: MediaQuery.sizeOf(context).height / 1,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: isRivwHovered ? 0 : 1,
                        child: AnimatedContainer(
                            decoration: const BoxDecoration(
                                // color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                            duration: const Duration(seconds: 1),
                            curve: Curves.ease,
                            width: isRivwHovered
                                ? 0
                                : MediaQuery.sizeOf(context).width / 3.3,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(18),
                                    bottomRight: Radius.circular(18),
                                  ),
                                  child: Image.asset(
                                    'assets/images/manVR1.png',
                                    fit: BoxFit.cover,
                                    width: MediaQuery.sizeOf(context).width / 1,
                                    height: double.infinity,
                                  ),
                                ),
                                Positioned(
                                  top: MediaQuery.sizeOf(context).height / 7.4,
                                  // left: -2,
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width /
                                                11.2,
                                        // height:
                                        //     MediaQuery.sizeOf(context).height /
                                        //         2.5,
                                        child: Image.asset(
                                            "assets/images/Ellipse.png"),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 13,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width / 17),
              child: Container(
                clipBehavior: Clip.hardEdge,
                // width: MediaQuery.sizeOf(context).width / 1.5,
                height: MediaQuery.sizeOf(context).height / 1.6,
                decoration: BoxDecoration(
                    boxShadow: isLostContinentHovered
                        ? [
                            BoxShadow(
                              color: const Color.fromARGB(255, 107, 106, 106)
                                  .withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: const Offset(5, 5),
                            )
                          ]
                        : [],
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        width: 2, color: const Color.fromARGB(255, 7, 43, 73)),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isLostContinentHovered = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isLostContinentHovered = false;
                    });
                  },
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: isLostContinentHovered ? 0 : 1,
                        child: AnimatedContainer(
                            decoration: const BoxDecoration(
                                // color: Color.fromARGB(255, 255, 255, 255),
                                //     borderRadius: BorderRadius.only(
                                //   topRight: Radius.circular(20),
                                //   bottomRight: Radius.circular(20),
                                // )
                                ),
                            duration: const Duration(seconds: 1),
                            curve: Curves.ease,
                            width: isLostContinentHovered
                                ? 0
                                : MediaQuery.sizeOf(context).width / 3.3,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(18),
                                    bottomLeft: Radius.circular(18),
                                  ),
                                  child: Image.asset(
                                    'assets/images/map.png',
                                    fit: BoxFit.cover,
                                    width: MediaQuery.sizeOf(context).width / 1,
                                    height: double.infinity,
                                  ),
                                ),
                                Positioned(
                                  top: MediaQuery.sizeOf(context).height / 7.4,
                                  right: 0,
                                  // left: -2,
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width /
                                                11.2,
                                        // height:
                                        //     MediaQuery.sizeOf(context).height /
                                        //         2.5,
                                        child: Image.asset(
                                            "assets/images/ellipse_left.png"),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              topLeft: isLostContinentHovered
                                  ? const Radius.circular(20)
                                  : const Radius.circular(0),
                              bottomLeft: isLostContinentHovered
                                  ? const Radius.circular(20)
                                  : const Radius.circular(0),
                              topRight: const Radius.circular(20),
                              bottomRight: const Radius.circular(20),
                            )),
                        // padding: EdgeInsets.only(
                        // left: MediaQuery.sizeOf(context).width / 500),
                        width: MediaQuery.sizeOf(context).width / 2.4,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Center(
                              widthFactor: 1.25,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left:
                                        MediaQuery.sizeOf(context).width / 15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/continent_letter.png',
                                      width:
                                          MediaQuery.sizeOf(context).width / 4,
                                      // height: MediaQuery.sizeOf(context).height / 1,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              24,
                                    ),
                                    Text(
                                      "Gaming Excellence",
                                      style: GoogleFonts.poppins(
                                          fontSize:
                                              MediaQuery.sizeOf(context).width *
                                                  0.0113,
                                          color: const Color(0xFF143274),
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              24,
                                    ),
                                    AnimatedOpacity(
                                        duration:
                                            const Duration(milliseconds: 3000),
                                        opacity:
                                            isLostContinentHovered ? 1.0 : 0.0,
                                        curve: Curves.ease,
                                        child: isLostContinentHovered
                                            ? MouseRegion(
                                                onEnter: (event) {
                                                  setState(() {
                                                    onLostContinentVisit = true;
                                                  });
                                                },
                                                onExit: (event) {
                                                  setState(() {
                                                    onLostContinentVisit =
                                                        false;
                                                  });
                                                },
                                                child: Container(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 20,
                                                      vertical: 6),
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        const BorderRadius.all(
                                                            Radius.circular(3)),
                                                    border: onLostContinentVisit
                                                        ? const GradientBoxBorder(
                                                            width: 2,
                                                            gradient:
                                                                LinearGradient(
                                                                    colors: [
                                                                  Color(
                                                                      0xFFFF5F6A),
                                                                  Color(
                                                                      0xFF143274),
                                                                ]),
                                                          )
                                                        : Border.all(
                                                            color: Colors.black,
                                                            width: 2),
                                                    boxShadow:
                                                        onLostContinentVisit
                                                            ? [
                                                                BoxShadow(
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.5),
                                                                  spreadRadius:
                                                                      2,
                                                                  blurRadius: 7,
                                                                ),
                                                              ]
                                                            : [],
                                                  ),
                                                  child: Text(
                                                    "Visit",
                                                    style: GoogleFonts.poppins(
                                                      fontSize:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.0113,
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : const SizedBox()),
                                    AnimatedContainer(
                                      height: isLostContinentHovered
                                          ? MediaQuery.sizeOf(context).height /
                                              15
                                          : 0,
                                      curve: Curves.ease,
                                      duration:
                                          const Duration(milliseconds: 2000),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: MediaQuery.sizeOf(context).height / 7.4,
                              child: Image.asset(
                                'assets/images/ellipse_map.png',
                                fit: BoxFit.cover,
                                width: MediaQuery.sizeOf(context).width / 11.2,

                                // height: MediaQuery.sizeOf(context).height / 1,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: isLostContinentHovered ? 1 : 0,
                        child: AnimatedContainer(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          width: isLostContinentHovered
                              ? MediaQuery.sizeOf(context).width / 3.3
                              : 0,
                          height: double.infinity,
                          child: Center(
                              child: isLostContinentHovered
                                  ? AnimatedOpacity(
                                      duration:
                                          const Duration(milliseconds: 1000),
                                      opacity:
                                          isLostContinentHovered ? 1.0 : 0.0,
                                      curve: Curves.ease,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            right: MediaQuery.sizeOf(context)
                                                    .width /
                                                50),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Gear up, adventure ! It’s time to embark on epic journey through time and space in search of lost treasures scattered across forgotten continents. Prepare to heart-pounding battles, thrilling challenges, and untold riches as you navigate the treacherous landscapes of our immersive combat lost continent game. Step in to the shoe of a fearless explorer and traverse ancient civilizations lost to the sands of time. From the mysterious jungles of Atlantis to the crumbling ruins of Eldorado & Chola kingdom each continent holds secrets waiting to be unearthed. Welcome to the treasure hunt of lost continents-where legends are born and fortunes are won.",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.end,
                                              maxLines: 10,
                                              style: GoogleFonts.poppins(
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.011,
                                                  height: 1.8),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.sizeOf(context)
                                                      .height /
                                                  40,
                                            ),
                                            Text(
                                              "Let the hunt begin !!!",
                                              style: GoogleFonts.poppins(
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.0113,
                                                  fontWeight: FontWeight.w700),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  : const SizedBox()),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 13,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width / 17),
              child: Container(
                clipBehavior: Clip.hardEdge,
                // width: MediaQuery.sizeOf(context).width / 1.5,
                height: MediaQuery.sizeOf(context).height / 1.6,
                decoration: BoxDecoration(
                    boxShadow: isCorlMartHovered
                        ? [
                            BoxShadow(
                              color: const Color.fromARGB(255, 107, 106, 106)
                                  .withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 10,
                              offset: const Offset(5, 5),
                            )
                          ]
                        : [],
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(
                        width: 2, color: const Color.fromARGB(255, 7, 43, 73)),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: MouseRegion(
                  onEnter: (_) {
                    setState(() {
                      isCorlMartHovered = true;
                    });
                  },
                  onExit: (_) {
                    setState(() {
                      isCorlMartHovered = false;
                    });
                  },
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: isCorlMartHovered ? 1 : 0,
                        child: AnimatedContainer(
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              )),
                          duration: const Duration(seconds: 1),
                          curve: Curves.ease,
                          width: isCorlMartHovered
                              ? MediaQuery.sizeOf(context).width / 3.3
                              : 0,
                          height: double.infinity,
                          child: Center(
                              child: isCorlMartHovered
                                  ? AnimatedOpacity(
                                      duration:
                                          const Duration(milliseconds: 1000),
                                      opacity: isCorlMartHovered ? 1.0 : 0.0,
                                      curve: Curves.ease,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: MediaQuery.sizeOf(context)
                                                    .width /
                                                50),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "Empowering your 3D dreams, looking to  elevate your projects to the next dimension? Explore our vast collection of meticulously crafted 3D models designed to meet your creative needs. Whether you are an architect, designer, game developer or hobbyist, we have the perfect 3D assets to bring your vision to life. We are passionate about bridging the gap between imagination and reality.",
                                              textAlign: TextAlign.left,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 10,
                                              style: GoogleFonts.poppins(
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.011,
                                                  height: 1.8),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.sizeOf(context)
                                                      .height /
                                                  40,
                                            ),
                                            Text(
                                              "A masterpiece in every dimension",
                                              style: GoogleFonts.poppins(
                                                  fontSize:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.0113,
                                                  fontWeight: FontWeight.w700),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  : const SizedBox()),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(20),
                              bottomLeft: const Radius.circular(20),
                              topRight: isCorlMartHovered
                                  ? const Radius.circular(20)
                                  : Radius.zero,
                              bottomRight: isCorlMartHovered
                                  ? const Radius.circular(20)
                                  : Radius.zero,
                            )),
                        // padding: EdgeInsets.only(
                        // left: MediaQuery.sizeOf(context).width / 500),
                        width: MediaQuery.sizeOf(context).width / 2.4,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Center(
                              widthFactor: 1.25,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right:
                                        MediaQuery.sizeOf(context).width / 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/corlmart_letter.png',
                                      width:
                                          MediaQuery.sizeOf(context).width / 4,
                                      // height: MediaQuery.sizeOf(context).height / 1,
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              24,
                                    ),
                                    Text(
                                      "Denationalize Your Vision with our 3D Assets ",
                                      style: GoogleFonts.poppins(
                                          fontSize:
                                              MediaQuery.sizeOf(context).width *
                                                  0.0113,
                                          color: const Color(0xFF143274),
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.sizeOf(context).height /
                                              24,
                                    ),
                                    AnimatedOpacity(
                                        duration:
                                            const Duration(milliseconds: 3000),
                                        opacity: isCorlMartHovered ? 1.0 : 0.0,
                                        curve: Curves.ease,
                                        child: InkWell(
                                          onTap: () {
                                            launch('http://corlmart.com/');
                                          },
                                          child: isCorlMartHovered
                                              ? MouseRegion(
                                                  onEnter: (event) {
                                                    setState(() {
                                                      onColrMartVisit = true;
                                                    });
                                                  },
                                                  onExit: (event) {
                                                    setState(() {
                                                      onColrMartVisit = false;
                                                    });
                                                  },
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                        horizontal: 20,
                                                        vertical: 6),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  3)),
                                                      border: onColrMartVisit
                                                          ? const GradientBoxBorder(
                                                              width: 2,
                                                              gradient:
                                                                  LinearGradient(
                                                                      colors: [
                                                                    Color(
                                                                        0xFFFF5F6A),
                                                                    Color(
                                                                        0xFF143274),
                                                                  ]),
                                                            )
                                                          : Border.all(
                                                              color:
                                                                  Colors.black,
                                                              width: 2),
                                                      boxShadow: onColrMartVisit
                                                          ? [
                                                              BoxShadow(
                                                                color: Colors
                                                                    .grey
                                                                    .withOpacity(
                                                                        0.5),
                                                                spreadRadius: 2,
                                                                blurRadius: 7,
                                                              ),
                                                            ]
                                                          : [],
                                                    ),
                                                    child: Text(
                                                      "Visit",
                                                      style:
                                                          GoogleFonts.poppins(
                                                        fontSize: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.0113,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : const SizedBox(),
                                        )),
                                    AnimatedContainer(
                                      height: isCorlMartHovered
                                          ? MediaQuery.sizeOf(context).height /
                                              15
                                          : 0,
                                      curve: Curves.ease,
                                      duration:
                                          const Duration(milliseconds: 2000),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: MediaQuery.sizeOf(context).height / 7.4,
                              child: Image.asset(
                                'assets/images/ellipse_basket.png',
                                fit: BoxFit.cover,
                                width: MediaQuery.sizeOf(context).width / 11.2,

                                // height: MediaQuery.sizeOf(context).height / 1,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: isCorlMartHovered ? 0 : 1,
                        child: AnimatedContainer(
                            decoration: const BoxDecoration(
                                // color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            )),
                            duration: const Duration(seconds: 1),
                            curve: Curves.ease,
                            width: isCorlMartHovered
                                ? 0
                                : MediaQuery.sizeOf(context).width / 3.3,
                            height: double.infinity,
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(18),
                                    bottomRight: Radius.circular(18),
                                  ),
                                  child: Image.asset(
                                    'assets/images/basket.png',
                                    fit: BoxFit.cover,
                                    width: MediaQuery.sizeOf(context).width / 1,
                                    height: double.infinity,
                                  ),
                                ),
                                Positioned(
                                  top: MediaQuery.sizeOf(context).height / 7.4,
                                  // left: -2,
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width /
                                                11.2,
                                        // height:
                                        //     MediaQuery.sizeOf(context).height /
                                        //         2.5,
                                        child: Image.asset(
                                            "assets/images/Ellipse.png"),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 8,
            ),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
