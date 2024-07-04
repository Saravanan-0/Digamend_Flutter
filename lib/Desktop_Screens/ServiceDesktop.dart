import 'package:Digamend/footer.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';

class ServicesDesktop extends StatefulWidget {
  const ServicesDesktop({super.key});

  @override
  State<ServicesDesktop> createState() => _ServicesDesktopState();
}

class _ServicesDesktopState extends State<ServicesDesktop> {
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
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
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
                    InkWell(onTap: () {
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
                                Container(
                                  width: width / 20,
                                  height: 1,
                                  decoration:
                                      BoxDecoration(gradient: _gradient),
                                )
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
                            borderRadius: BorderRadius.all(
                                Radius.circular(width / 500))),
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
        
            // Stack(children: [
            //   Image.asset("assets/images/bgimg.png"),
            //   Center(
            //       child: Image.asset(
            //     "assets/images/gif5.gif",
            //     width: width * 0.5,
            //   )),
            // ]),
        
            // Image.asset("assets/images/gif4.gif"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Text(
                    "User Experience Enhancement",
                    style: GoogleFonts.jost(
                        color: Colors.grey[200],
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w700),
                  ),
                  Positioned(
                    top: width * 0.036,
                    left: width * 0.178,
                    child: Text(
                      "User Experience Enhancement",
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
              height: height / 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width / 1.2,
                  child: Text(
                    "Range of strategies and techniques, such as improving the navigation and layout of a website or application, simplifying complex tasks, optimizing load times, or providing more personalized experiences. The goal of user experience enhancement is to create a positive, memorable, and effective user experience that meets the needs and expectations of users.",
                    style: GoogleFonts.jost(fontSize: width * 0.014),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height / 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "What We Do",
                  style: GoogleFonts.jost(
                    fontSize: width * 0.024,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff143274),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height / 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: width * 0.22,
                  height: height * 0.57,
                  child: WidgetFlipper(
                    //conatiner for fornt side
                    frontWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/req.png",
                            width: width / 12,
                          ),
                          SizedBox(
                            height: height / 22,
                          ),
                          Text(
                            "Requirement Optimization",
                            style: GoogleFonts.jost(
                                color: const Color(0xff143274),
                                fontSize: width * 0.014,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    //conatiner for back side
                    backWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "Refining and improving the requirements for a product, or service. The goal is to ensure that the requirements accurately reflect the needs and objectives of the stakeholders, and that they are feasible, testable, and complete.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.jost(
                                  color: const Color(0xff143274),
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.22,
                  height: height * 0.57,
                  child: WidgetFlipper(
                    //conatiner for fornt side
                    frontWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/market.png",
                            width: width / 12,
                          ),
                          SizedBox(
                            height: height / 22,
                          ),
                          Text(
                            "Market Analysis",
                            style: GoogleFonts.jost(
                                color: const Color(0xff143274),
                                fontSize: width * 0.014,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    //conatiner for back side
                    backWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "Systematic investigation and study of a particular topic or problem to discover new information, gain insights, and expand knowledge.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.jost(
                                  color: const Color(0xff143274),
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.22,
                  height: height * 0.57,
                  child: WidgetFlipper(
                    //conatiner for fornt side
                    frontWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/com.png",
                            width: width / 12,
                          ),
                          SizedBox(
                            height: height / 22,
                          ),
                          Text(
                            "Competitor Analysis",
                            style: GoogleFonts.jost(
                                color: const Color(0xff143274),
                                fontSize: width * 0.014,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    //conatiner for back side
                    backWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "Developing creative and effective solutions to design problems. The goal is to create designs that meet the needs and objectives of the stakeholders while also being aesthetically pleasing and functional.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.jost(
                                  color: const Color(0xff143274),
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height / 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Text(
                    "Development",
                    style: GoogleFonts.jost(
                        color: Colors.grey[200],
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w700),
                  ),
                  Positioned(
                    top: width * 0.036,
                    left: width * 0.077,
                    child: Text(
                      "Development",
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
              height: height / 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width / 1.2,
                  child: Text(
                    "Creating software or applications by writing code and programming languages. It involves a variety of tasks, including designing the system architecture, writing and testing code, debugging, and deploying the final product .",
                    style: GoogleFonts.jost(fontSize: width * 0.014),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
        
            SizedBox(
              height: height / 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "What We Do",
                  style: GoogleFonts.jost(
                    fontSize: width * 0.024,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff143274),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height / 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: width * 0.22,
                  height: height * 0.57,
                  child: WidgetFlipper(
                    //conatiner for fornt side
                    frontWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/full.png",
                            width: width / 12,
                          ),
                          SizedBox(
                            height: height / 22,
                          ),
                          Text(
                            "Full Stack Developer",
                            style: GoogleFonts.jost(
                                color: const Color(0xff143274),
                                fontSize: width * 0.014,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    //conatiner for back side
                    backWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "Our Developers create and manage complete web applications, handling both front-end user interfaces and back-end server logic.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.jost(
                                  color: const Color(0xff143274),
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.22,
                  height: height * 0.57,
                  child: WidgetFlipper(
                    //conatiner for fornt side
                    frontWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/azure.png",
                            width: width / 12,
                          ),
                          SizedBox(
                            height: height / 22,
                          ),
                          Text(
                            "Azure cloud architect",
                            style: GoogleFonts.jost(
                                color: const Color(0xff143274),
                                fontSize: width * 0.014,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    //conatiner for back side
                    backWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "We design and implement scalable and reliable solutions using Microsoft's cloud platform to meet business and technical requirements.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.jost(
                                  color: const Color(0xff143274),
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.22,
                  height: height * 0.57,
                  child: WidgetFlipper(
                    //conatiner for fornt side
                    frontWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/.net.png",
                            width: width / 12,
                          ),
                          SizedBox(
                            height: height / 22,
                          ),
                          Text(
                            ".Net developer",
                            style: GoogleFonts.jost(
                                color: const Color(0xff143274),
                                fontSize: width * 0.014,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    //conatiner for back side
                    backWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "A .NET developer creates software applications and solutions using Microsoft's .NET framework and associated technologies.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.jost(
                                  color: const Color(0xff143274),
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
        
            SizedBox(
              height: height / 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(children: [
                  Text(
                    "Cloud",
                    style: GoogleFonts.jost(
                        color: Colors.grey[200],
                        fontSize: width * 0.05,
                        fontWeight: FontWeight.w700),
                  ),
                  Positioned(
                    top: width * 0.036,
                    left: width * 0.034,
                    child: Text(
                      "Cloud",
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
              height: height / 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width / 1.2,
                  child: Text(
                    "Cloud services are employed to remotely host and manage data and applications, granting accessibility from anywhere with an internet connection. We offer scalability, cost-effectiveness, and robust security measures.",
                    style: GoogleFonts.jost(fontSize: width * 0.014),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
        
            SizedBox(
              height: height / 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "What We Do",
                  style: GoogleFonts.jost(
                    fontSize: width * 0.024,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xff143274),
                  ),
                )
              ],
            ),
            SizedBox(
              height: height / 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: width * 0.22,
                  height: height * 0.57,
                  child: WidgetFlipper(
                    //conatiner for fornt side
                    frontWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/networking.png",
                            width: width / 12,
                          ),
                          SizedBox(
                            height: height / 22,
                          ),
                          Text(
                            "Networking services",
                            style: GoogleFonts.jost(
                                color: const Color(0xff143274),
                                fontSize: width * 0.014,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    //conatiner for back side
                    backWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "We specialize in building robust and reliable network architectures, enabling the establishment of secure, scalable, and isolated network environments.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.jost(
                                  color: const Color(0xff143274),
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.22,
                  height: height * 0.57,
                  child: WidgetFlipper(
                    //conatiner for fornt side
                    frontWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/analytics.png",
                            width: width / 12,
                          ),
                          SizedBox(
                            height: height / 22,
                          ),
                          Text(
                            "Analytics and Big data",
                            style: GoogleFonts.jost(
                                color: const Color(0xff143274),
                                fontSize: width * 0.014,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    //conatiner for back side
                    backWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "The company provides tools and resources for collecting, processing, analyzing, and visualizing large volumes of data.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.jost(
                                  color: const Color(0xff143274),
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.22,
                  height: height * 0.57,
                  child: WidgetFlipper(
                    //conatiner for fornt side
                    frontWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/images/com.png",
                            width: width / 12,
                          ),
                          SizedBox(
                            height: height / 22,
                          ),
                          Text(
                            "Compute & Storage service",
                            style: GoogleFonts.jost(
                                color: const Color(0xff143274),
                                fontSize: width * 0.014,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    //conatiner for back side
                    backWidget: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: const Color(0xff143274), width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text(
                              "We enable application execution and code processing, handle data storage and retrieval, and form the core of our cloud-based application deployment and data storage with AWS.",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.jost(
                                  color: const Color(0xff143274),
                                  fontSize: width * 0.011,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height / 10,
            ),
        
            const FooterSection()
          ],
        ),
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
  // ignore: library_private_types_in_public_api
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
