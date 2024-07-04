import 'dart:async';
import 'package:Digamend/Mobile_Screens/footer_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductScreenMobile extends StatefulWidget {
  const ProductScreenMobile({super.key});

  @override
  State<ProductScreenMobile> createState() => _ProductScreenMobileState();
}

class _ProductScreenMobileState extends State<ProductScreenMobile> {
  int _currentIndex = 0;
  final List<String> _images = [
    'assets/images/earthimage.png',
    'assets/images/boywithvr.png',
    'assets/images/robotimage.png',
  ];

  @override
  void initState() {
    super.initState();

    scrollControllerBottom = ScrollController();

    // Start carousel autoplay
    Timer.periodic(
      const Duration(milliseconds: 1900),
      (Timer timer) {
        if (_currentIndex < _images.length - 1) {
          _currentIndex++;
        } else {
          _currentIndex = 0;
        }
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFFFFFF),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: Padding(
        padding: EdgeInsets.only(
          top: width * 0.0009,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          // height: 600,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0),
              bottomRight: Radius.circular(10.0),
            ),
          ),
          child: Drawer(backgroundColor: Colors.white,
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.close, color: Colors.black),
                    ],
                  ),
                  onTap: () {
                    // Close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text(
                    'Home',
                    style: GoogleFonts.oxygen(
                      fontSize: MediaQuery.sizeOf(context).width * 0.05,
                      color: Colors.black,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/home');
                  },
                ),
                ListTile(
                  title: Text('Product',
                      style: GoogleFonts.oxygen(
                          fontSize: MediaQuery.sizeOf(context).width * 0.05,
                          color: Color(0xFF143274))),
                  onTap: () {
                    // Close the drawer
                    Navigator.pop(context);
                    // Navigate to the Settings screen
                    Navigator.pushNamed(context, '/products');
                  },
                ),
                ListTile(
                  title: Text('Services',
                      style: GoogleFonts.oxygen(
                          fontSize: MediaQuery.sizeOf(context).width * 0.05,
                          color: Colors.black)),
                  onTap: () {
                    // Close the drawer
                    Navigator.pop(context);
                    // Navigate to the Settings screen
                    Navigator.pushNamed(context, '/services');
                  },
                ),
                ListTile(
                  title: Text('Contact',
                      style: GoogleFonts.oxygen(
                          fontSize: MediaQuery.sizeOf(context).width * 0.05,
                          color: Colors.black)),
                  onTap: () {
                    Navigator.pop(context);
                    _scrollToYellowContainer();
                  },
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        controller: scrollControllerBottom,
        child: Padding(
          padding: EdgeInsets.only(top: width * 0.1),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: width / 1.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              AnimatedSwitcher(
                                duration: const Duration(milliseconds: 500),
                                child: Image.asset(
                                  _images[_currentIndex],
                                  key: ValueKey<String>(_images[_currentIndex]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Our Products',
                                    style: GoogleFonts.jost(
                                      fontSize: width * 0.04,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Image.asset('assets/images/corllelani.gif'),
              SizedBox(
                height: height * 0.02,
              ),
              SizedBox(
                width: width * 0.9,
                child: Text(
                  'At corllel we are passionate about creating unforgettable experiences that transport you to new realms and redefine the boundaries of entertainment & innovation. Whether you are a gaming enthusiast, a VR adventures, or simply seeking immersive entertainment, we have something extraordinary for you. Get ready to experience the best in- class.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.jost(fontSize: width * 0.037, height: 1.8),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              InkWell(
                onTap: () {
                  launch('http://corllel.com/');
                },
                child: Container(
                  height: width * 0.079,
                  width: width * 0.15,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                        color: const Color(0xff143274), width: width * 0.0035),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Text(
                      'Visit',
                      style: GoogleFonts.jost(
                          fontSize: width * 0.038,
                          color: const Color(0xff143274),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.025,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    Text(
                      "Our Products",
                      style: GoogleFonts.jost(
                          color: Colors.grey[200],
                          fontSize: width * 0.11,
                          fontWeight: FontWeight.w700),
                    ),
                    Positioned(
                      top: width * 0.06,
                      left: width * 0.15,
                      child: Text(
                        "Our Products",
                        style: GoogleFonts.jost(
                            color: const Color(0xff143274),
                            fontSize: width * 0.061,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(
                height: height * 0.015,
              ),
              Container(
                width: width * 0.92,
                // height: height * 0.82,
                // color: Colors.green,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border(
                    top: BorderSide(
                        color: const Color(0xff143274), width: width * 0.0035),
                    left: BorderSide(
                        color: const Color(0xff143274), width: width * 0.0035),
                    right: BorderSide(
                        color: const Color(0xff143274), width: width * 0.0035),
                    bottom: BorderSide(
                        color: const Color(0xff143274), width: width * 0.0035),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(width * 0.05),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/boywithcamera.png',
                            width: width * 0.3,
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/RIVWimage.png',
                                width: width * 0.35,
                                // color: Color(0xff143274),
                              ),
                              SizedBox(height: height * 0.015),
                              SizedBox(
                                width: width * 0.45,
                                child: Text(
                                  'Immersive VR/Metaverse Experience',
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.bold,
                                      fontSize: width * 0.023),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SizedBox(
                        width: width * 0.99,
                        child: Text(
                          'Embark on a journey like no other as we invite you to explore the infinite realms of the virtual universe. Our platform is your gateway to immersive experiences, where boundaries blur and imagination knows no limit. Dive into a kaleidoscope of virtual worlds each offering its own wonders and adventures. From bustling futuristic cities to serene natural landscapes, there’s something for every explorer to discovers. Ready to embark on the ultimate virtual reality world tour? The future of exploration is here. Step in to the virtual reality metaverse world tour and prepare to be amazed. Welcome to a world without limits. Welcome to the future adventure!!!',
                          style: GoogleFonts.poppins(fontSize: width * 0.032),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Text(
                            'Welcome to the future adventure!!!',
                            style: GoogleFonts.poppins(
                              fontSize: width * 0.028,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.016,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: width * 0.07,
                              width: width * 0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: const Color(0xff143274),
                                    width: width * 0.0035),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'Visit',
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.035,
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                width: width * 0.92,
                // height: height * 0.82,
                // color: Colors.green,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                      color: const Color(0xff143274), width: width * 0.0035),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(width * 0.05),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/continentimage.png',
                            width: width * 0.3,
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/lostcontinent.png',
                                width: width * 0.46,
                                // color: Color(0xff143274),
                              ),
                              SizedBox(
                                height: height * 0.027,
                              ),
                              Text(
                                'Gaming Excellence',
                                style: GoogleFonts.poppins(
                                    color: const Color(0xff143274),
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.024),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SizedBox(
                        width: width * 0.99,
                        child: Text(
                          'Gear up, adventure ! It’s time to embark on epic journey through time and space in search of lost treasures scattered across forgotten continents. Prepare to heart-pounding battles, thrilling challenges, and untold riches as you navigate the treacherous landscapes of our immersive combat lost continent game. Step in to the shoe of a fearless explorer and traverse ancient civilizations lost to the sands of time. From the mysterious jungles of Atlantis to the crumbling ruins of Eldorado & Chola kingdom each continent holds secrets waiting to be unearthed. Welcome to the treasure hunt of lost continents-where legends are born and fortunes are won.',
                          style: GoogleFonts.poppins(fontSize: width * 0.032),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Text(
                            'Let the hunt begin !!!',
                            style: GoogleFonts.poppins(
                                fontSize: width * 0.028,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.016,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: width * 0.07,
                              width: width * 0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: const Color(0xff143274),
                                    width: width * 0.0035),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'Visit',
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.035,
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                width: width * 0.93,
                // height: height * 0.82,
                // color: Colors.green,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                      color: const Color(0xff143274), width: width * 0.0035),
                  // border: Border(
                  //   top: BorderSide(
                  //       color: const Color(0xff143274), width: width * 0.0035),
                  //   left: BorderSide(
                  //       color: const Color(0xff143274), width: width * 0.0035),
                  //   right: BorderSide(
                  //       color: const Color(0xff143274), width: width * 0.0035),
                  //   bottom: BorderSide(
                  //       color: const Color(0xff143274), width: width * 0.0035),
                  // ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Padding(
                  padding: EdgeInsets.all(width * 0.05),
                  child: Column(
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/colmartimage.png',
                            width: width * 0.3,
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/colmarttext.png',
                                width: width * 0.45,
                                // color: Color(0xff143274),
                              ),
                              SizedBox(
                                height: height * 0.027,
                              ),
                              SizedBox(
                                // width: width * 0.47,
                                child: Text(
                                  'Denationalize Your Vision with our 3D',
                                  style: GoogleFonts.poppins(
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.bold,
                                      fontSize: width * 0.023),
                                ),
                              ),
                              Text(
                                'Assets',
                                style: GoogleFonts.poppins(
                                    color: const Color(0xff143274),
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.023),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      SizedBox(
                        width: width * 0.99,
                        child: Text(
                          'Empowering your 3D dreams, looking to  elevate your projects to the next dimension? Explore our vast collection of meticulously crafted 3D models designed to meet your creative needs. Whether you are an architect, designer, game developer or hobbyist, we have the perfect 3D assets to bring your vision to life. We are passionate about bridging the gap between imagination and reality.',
                          style: GoogleFonts.poppins(fontSize: width * 0.032),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Row(
                        children: [
                          Text(
                            'A masterpiece in every dimension',
                            style: GoogleFonts.poppins(
                                fontSize: width * 0.028,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.09,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                               launch('http://corlmart.com/');
                            },
                            child: Container(
                              height: width * 0.07,
                              width: width * 0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                    color: const Color(0xff143274),
                                    width: width * 0.0035),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  'Visit',
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.035,
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.09,
              ),
              const FooterMobile()
            ],
          ),
        ),
      ),
    );
  }
}

late ScrollController scrollControllerBottom;

void _scrollToYellowContainer() {
  final double offset = scrollControllerBottom.position.maxScrollExtent;
  scrollControllerBottom.animateTo(
    offset,
    duration: const Duration(milliseconds: 1000),
    curve: Curves.easeOut,
  );
}
