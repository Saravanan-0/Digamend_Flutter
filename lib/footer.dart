import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher package for launching URLs

class FooterSection extends StatefulWidget {
  const FooterSection({Key? key}) : super(key: key);

  @override
  State<FooterSection> createState() => _FooterSectionState();
}

class _FooterSectionState extends State<FooterSection> {
  // bool _isHoveredConsulting = false;
  // bool _isHoveredExperience = false;
  // bool _isHoveredDesign = false;
  // bool _isHoveredCreative = false;
  // bool _isHoveredDevelopment = false;
  bool _isHoveredTerms = false;
  bool _isHoveredCorllel = false; // Added
  bool _isHoveredCorlmart = false; // Added
  bool _isHoveredPrivacy = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Container(
      width: width / 1,
      color: const Color(0xFFE9E9E9),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 70, right: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Our Products",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff143274)),
                    ),
                    SizedBox(height: height / 25),
                    InkWell(
                        onTap: () {
                          launch('http://corllel.com/');
                        },
                        child: buildMouseRegion(
                            "Corllel", _isHoveredCorllel)), // Modified
                    SizedBox(height: height * 0.025),
                    InkWell(
                        onTap: () {
                          launch('http://corlmart.com/');
                        },
                        child: buildMouseRegion(
                            "Corlmart", _isHoveredCorlmart)), // Modified
                    // Modified
                    SizedBox(
                      height: height * 0.025,
                    ),
                    Text(
                      "Company",
                      style: GoogleFonts.jost(
                        fontSize: width * 0.012,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff143274),
                      ),
                    ),
                    SizedBox(height: height * 0.029),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/privacypolicy');
                      },
                      child:
                          buildMouseRegion("Privacy Policy", _isHoveredPrivacy),
                    ), // Modified
                    SizedBox(height: height * 0.025),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/termsconditions');
                        },
                        child: buildMouseRegion(
                            "Terms & Conditions", _isHoveredTerms)),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact Us",
                      style: GoogleFonts.jost(
                        fontSize: width * 0.012,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff143274),
                      ),
                    ),
                    SizedBox(height: height / 25),
                    Text(
                      "Headquarters Address",
                      style: GoogleFonts.jost(
                          fontWeight: FontWeight.w700,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 126, 126, 126)),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "38, Gnanandha Nagar Main Road,",
                      style: GoogleFonts.jost(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 155, 155, 155)),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "Madambakkam,",
                      style: GoogleFonts.jost(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 155, 155, 155)),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "Chennai - 600 126,",
                      style: GoogleFonts.jost(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 155, 155, 155)),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Office Address",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff143274)),
                    ),
                    SizedBox(height: height / 25),
                    Text(
                      "A3, Ponniamman Koil 2nd Cross Street",
                      style: GoogleFonts.jost(
                          fontWeight: FontWeight.w700,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 126, 126, 126)),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "Madipakkam,",
                      style: GoogleFonts.jost(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 155, 155, 155)),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "Chennai - -600 091.",
                      style: GoogleFonts.jost(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 155, 155, 155)),
                    ),
                    SizedBox(height: height * 0.025),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Requests - info@digamend.com",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.012,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff143274)),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "+91-996-222-8 DAD (323)",
                      style: GoogleFonts.jost(
                          fontWeight: FontWeight.w600,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 155, 155, 155)),
                    ),
                    SizedBox(height: height * 0.025),
                    Text(
                      "+91-996-222-9 DAD (323)",
                      style: GoogleFonts.jost(
                          fontWeight: FontWeight.w600,
                          // fontWeight: FontWeight.normal,
                          fontSize: width * 0.012,
                          color: const Color.fromARGB(255, 155, 155, 155)),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: height / 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.069),
            child: const Divider(
                color: Color.fromARGB(255, 223, 219, 219), thickness: 2),
          ),
          // SizedBox(height: height / 18),
          Padding(
            padding:
                EdgeInsets.only(top: height * 0.009, bottom: height * 0.028),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width * 0.068,
                ),
                Image.asset(
                  'assets/images/DAD Footer.png',
                  width: width / 15,
                ),
                SizedBox(
                  width: width * 0.2,
                ),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.035),
                  child: Text(
                    'Copyright @ 2024 DIGAMEND Technology Pvt.Ltd. ',
                    style: GoogleFonts.jost(
                      fontSize: width * 0.012,
                      color: const Color(0xff143274),
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.14,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        launch('https://twitter.com/DigAmenD');
                      },
                      child: Image.asset('assets/images/twi.png',
                          width: width * 0.016),
                    ),
                    SizedBox(
                      width: width * 0.025,
                    ),
                    InkWell(
                      onTap: () {
                        launch('https://www.youtube.com/@DigAmenD');
                      },
                      child: Image.asset('assets/images/y.png',
                          height: MediaQuery.of(context).size.height * 0.03),
                    ),
                    SizedBox(
                      width: width * 0.025,
                    ),
                    InkWell(
                      onTap: () {
                        launch('https://www.instagram.com/digamend/');
                      },
                      child: Image.asset('assets/images/ins.png',
                          width: width * 0.016),
                    ),
                    SizedBox(
                      width: width * 0.025,
                    ),
                    // InkWell(
                    //   onTap: () {},
                    // ),
                    InkWell(
                      onTap: () {
                        launch(
                            'https://www.linkedin.com/company/digamend-technology-solutions/mycompany/verification/');
                      },
                      child: Image.asset('assets/images/lin.png',
                          height: MediaQuery.of(context).size.height * 0.036),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildMouseRegion(String text, bool isHovered) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          // _isHoveredConsulting = text == "Consulting Service";
          // _isHoveredExperience = text == "User Experience Enhancement";
          // _isHoveredDesign = text == "Graphic Design";
          // _isHoveredCreative = text == "Creative Service";
          // _isHoveredDevelopment = text == "Development";
          _isHoveredTerms = text == "Terms & Conditions";
          _isHoveredCorllel = text == "Corllel";
          _isHoveredCorlmart = text == "Corlmart";
          _isHoveredPrivacy = text == "Privacy Policy";
        });
      },
      onExit: (_) {
        setState(() {
          // _isHoveredConsulting = false;
          // _isHoveredExperience = false;
          // _isHoveredDesign = false;
          // _isHoveredCreative = false;
          // _isHoveredDevelopment = false;
          _isHoveredTerms = false;
          _isHoveredCorllel = false;
          _isHoveredCorlmart = false;
          _isHoveredPrivacy = false;
        });
      },
      child: Text(
        text,
        style: GoogleFonts.jost(
          fontWeight: FontWeight.w600,
          fontSize: MediaQuery.of(context).size.width * 0.013,
          color: isHovered
              ? Colors.pink
              : const Color.fromARGB(255, 155, 155, 155),
        ),
      ),
    );
  }
}
