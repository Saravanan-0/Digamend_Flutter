import 'package:Digamend/Mobile_Screens/footer_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

class ServicesMobScreen extends StatefulWidget {
  const ServicesMobScreen({super.key});

  @override
  State<ServicesMobScreen> createState() => _ServicesMobScreenState();
}

class _ServicesMobScreenState extends State<ServicesMobScreen> {
  int _currentIndex = 0;
  final List<String> _images = [
    'assets/images/property1image.png',
    'assets/images/property2image.png',
    'assets/images/property3image.png',
  ];

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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xffFFFFFF),
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
                          color: Colors.black)),
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
                          color: Color(0xFF143274))),
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
                    // Close the drawer
                    Navigator.pop(context);
                    _scrollToYellowContainer() ;
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
                                    'Our Services',
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
                height: height * 0.01,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    Text(
                      "User Experience",
                      style: GoogleFonts.jost(
                          color: Colors.grey[200],
                          fontSize: width * 0.095,
                          fontWeight: FontWeight.w700),
                    ),
                    Positioned(
                      top: width * 0.052,
                      left: width * 0.099,
                      child: Text(
                        "User Experience",
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
                height: height * 0.02,
              ),
              SizedBox(
                width: width * 0.85,
                child: Text(
                  'Range of strategies and techniques, such as improving the navigation and layout of a website or application, simplifying complex tasks, optimizing load times, or providing more personalized experiences. The goal of user experience enhancement is to create a positive, memorable, and effective user experience that meets the needs and expectations of users.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.jost(fontSize: width * 0.043),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Column(
                children: [
                  Container(
                    width: width * 0.9,
                    // height: height*0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: const Offset(0, 3),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/reqimage.png',
                                  width: width * 0.17,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Text(
                                  'Requirement Optimization',
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.0423,
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                  // width: width * 0.05,
                                ),
                                SizedBox(
                                  width: width * 0.68,
                                  child: Text(
                                    'Refining and improving the requirements for a product, or service. The goal is to ensure that the requirements accurately reflect the needs and objectives of the stakeholders, and that they are feasible, testable, and complete.',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.jost(
                                        fontSize: width * 0.035,
                                        color: const Color(0xff444444),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    width: width * 0.9,
                    // height: height*0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: const Offset(0, 3),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Text(
                                  'Market Analysis',
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.0423,
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: width * 0.63,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: width * 0.034,
                                    ),
                                    child: Text(
                                      'Systematic investigation and study of a particular topic or problem to discover new information, gain insights, and expand knowledge.',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.jost(
                                          fontSize: width * 0.035,
                                          color: const Color(0xff444444),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/searchimage.png',
                                  width: width * 0.17,
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    width: width * 0.9,
                    // height: height*0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: const Offset(0, 3),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/lightimage.png',
                                  width: width * 0.17,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Text(
                                  'Competitor Analysis',
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.0423,
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                  // width: width * 0.05,
                                ),
                                SizedBox(
                                  width: width * 0.67,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: width * 0.02),
                                    child: Text(
                                      'Developing creative and effective solutions to design problems. The goal is to create designs that meet the needs and objectives of the stakeholders while also being aesthetically pleasing and functional.',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.jost(
                                          fontSize: width * 0.035,
                                          color: const Color(0xff444444),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Text(
                          "Development",
                          style: GoogleFonts.jost(
                              color: Colors.grey[200],
                              fontSize: width * 0.095,
                              fontWeight: FontWeight.w700),
                        ),
                        Positioned(
                          top: width * 0.052,
                          left: width * 0.099,
                          child: Text(
                            "Development",
                            style: GoogleFonts.jost(
                                color: const Color(0xff143274),
                                fontSize: width * 0.06,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  SizedBox(
                    width: width * 0.9,
                    child: Text(
                      'Creating software or applications by writing code and programming languages. It involves a variety of tasks, including designing the system architecture, writing and testing code, debugging, and deploying the final product.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.jost(fontSize: width * 0.043),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.025,
                  ),
                  Container(
                    width: width * 0.9,
                    // height: height*0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: const Offset(0, 3),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Image.asset(
                                  'assets/images/fullstackimage.png',
                                  width: width * 0.17,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Text(
                                  'Full Stack Developer',
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.0423,
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: width * 0.68,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: width * 0.045,
                                    ),
                                    child: Text(
                                      'Our Developers create and manage complete web applications, handling both front-end user interfaces and back-end server logic.',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.jost(
                                          fontSize: width * 0.035,
                                          color: const Color(0xff444444),
                                          fontWeight: FontWeight.w400
                                          //  color: const Color(0xff444444),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    width: width * 0.9,
                    // height: height*0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: const Offset(0, 3),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Text(
                                  'Azure cloud architect',
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.0423,
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: width * 0.66,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: width * 0.034,
                                        horizontal: width * 0.028),
                                    child: Text(
                                      "We design and implement scalable and reliable solutions using Microsoft's cloud platform to meet business and technical requirements.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.jost(
                                          fontSize: width * 0.035,
                                          color: const Color(0xff444444),
                                          fontWeight: FontWeight.w400
                                          //  color: const Color(0xff444444),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/searchimage.png',
                                  width: width * 0.17,
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    width: width * 0.9,
                    // height: height*0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: const Offset(0, 3),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Image.asset(
                                  'assets/images/.netimage.png',
                                  width: width * 0.17,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Text(
                                  '.Net developer',
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.0423,
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: width * 0.64,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: width * 0.035,
                                    ),
                                    child: Text(
                                      "A .NET developer creates software applications and solutions using Microsoft's .NET framework and associated technologies.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.jost(
                                          fontSize: width * 0.033,
                                          color: const Color(0xff444444),
                                          fontWeight: FontWeight.w400
                                          //  color: const Color(0xff444444),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Text(
                          "Cloud",
                          style: GoogleFonts.jost(
                              color: Colors.grey[200],
                              fontSize: width * 0.095,
                              fontWeight: FontWeight.w700),
                        ),
                        Positioned(
                          top: width * 0.052,
                          left: width * 0.045,
                          child: Text(
                            "Cloud",
                            style: GoogleFonts.jost(
                                color: const Color(0xff143274),
                                fontSize: width * 0.06,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ]),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    width: width * 0.9,
                    // height: height*0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: const Offset(0, 3),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Image.asset(
                                  'assets/images/networkimage.png',
                                  width: width * 0.17,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Text(
                                  'Networking services',
                                  style: GoogleFonts.jost(
                                    fontSize: width * 0.0423,
                                    color: const Color(0xff143274),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.68,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: width * 0.045,
                                    ),
                                    child: Text(
                                      'We specialize in building robust and reliable network architectures, enabling the establishment of secure, scalable, and isolated network environments.',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.jost(
                                          fontSize: width * 0.035,
                                          color: const Color(0xff444444),
                                          fontWeight: FontWeight.w400
                                          //  color: const Color(0xff444444),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    width: width * 0.9,
                    // height: height*0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: const Offset(0, 3),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: height * 0.02,
                                ),
                                Text(
                                  'Analytics and Big data',
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.0423,
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: width * 0.66,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: width * 0.034,
                                        horizontal: width * 0.028),
                                    child: Text(
                                      "The company provides tools and resources for collecting, processing, analyzing, and visualizing large volumes of data.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.jost(
                                          fontSize: width * 0.035,
                                          color: const Color(0xff444444),
                                          fontWeight: FontWeight.w400
                                          //  color: const Color(0xff444444),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/dataimage.png',
                                  width: width * 0.17,
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Container(
                    width: width * 0.9,
                    // height: height*0.32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          spreadRadius: 2,
                          offset: const Offset(0, 3),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(width * 0.02),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/computeimage.png',
                                  width: width * 0.17,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Text(
                                  'Compute & Storage service',
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.0423,
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: height * 0.02,
                                  // width: width * 0.05,
                                ),
                                SizedBox(
                                  width: width * 0.68,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: width * 0.02),
                                    child: Text(
                                      'We enable application execution and code processing, handle data storage and retrieval, and form the core of our cloud-based application deployment and data storage with AWS.',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.jost(
                                          fontSize: width * 0.035,
                                          color: const Color(0xff444444),
                                          fontWeight: FontWeight.w400
                                          //  color: const Color(0xff444444),
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: height * 0.06,
                  ),
                  FooterMobile()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
