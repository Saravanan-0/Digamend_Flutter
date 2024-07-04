// ignore_for_file: unused_field

import 'package:Digamend/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> 
with SingleTickerProviderStateMixin{
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
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: scrollControllerBottom,
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Padding(
                padding: EdgeInsets.all(width / 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PRIVACY POLICY",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.015,
                    ),
                    Text(
                      "At DIGAMEND Technology Solutions, accessible from www.digamend.com, the privacy of our visitors is of utmost importance. This Privacy Policy document outlines the types of information we collect and how we utilize it.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Should you have any questions or require further clarification about our Privacy Policy, please feel free to contact us.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "This Privacy Policy applies solely to online activities and is applicable to visitors to our website concerning the information they share or collect through DIGAMEND Technology Solutions. It does not extend to any information collected offline or through channels other than this website.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Consent",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "By using our website, you consent to our Privacy Policy and agree to its terms.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Information We Collect",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "We collect personal information when it is provided to us voluntarily, and we make clear the reasons for its collection at the point of submission. This may include:",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Contact information such as name, email address, phone number, and address.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Information provided when you communicate with us directly, such as the contents of messages or attachments.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "How We Use Your Information",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "We utilize the information we collect in various ways, including:",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Providing, operating, and maintaining our website and services.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Improving, personalizing, and expanding our website's content and functionality.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Understanding and analysing how visitors use our website.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Developing new products, services, features, and functionalities.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Communicating with visitors directly or through partners for customer service, updates, and marketing purposes.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Sending emails.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.white),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Detecting and preventing fraudulent activities.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "OG Files",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Like many other websites, DIGAMEND Technology Solutions follows a standard procedure of using log files. These files capture visitors' information such as IP addresses, browser types, Internet Service Providers (ISPs), date and time stamps, referring/exit pages, and the number of clicks. This data is utilized for analysing trends, administering the site, tracking user movements, and gathering demographic information. It is not linked to personally identifiable information.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Cookies and Web Beacons",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "DIGAMEND Technology Solutions uses cookies to store information, including visitors' preferences and the pages visited on our website. This information is used to optimize the user experience by customizing web page content based on browser type and other details.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Advertising Partners Privacy Policies",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Please consult the respective Privacy Policies of our advertising partners for detailed information. Third-party ad servers or networks utilize technologies such as cookies, JavaScript, or web beacons in their advertisements. These technologies are used to measure advertising campaign effectiveness and personalize the content you see based on your browsing behavior. Note that DIGAMEND Technology Solutions has no access to or control over these cookies used by third-party advertisers.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Third Party Privacy Policies",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Our Privacy Policy does not apply to other advertisers or websites. We advise you to review the Privacy Policies of these third-party ad servers for more information on their practices and instructions on how to opt-out of certain options.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "CCPA Privacy Rights (Do Not Sell My Personal Information)",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Under the CCPA, California consumers have the right to request disclosure of the categories and specific pieces of personal data collected by a business, request deletion of personal data collected, and opt-out of the sale of personal data. If you wish to exercise any of these rights, please contact us.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "GDPR Data Protection Rights",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "We respect your data protection rights. You have the right to access, rectify, erase, restrict processing, object to processing, and data portability. If you wish to exercise any of these rights, please contact us.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Children's Information",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "DIGAMEND Technology Solutions does not knowingly collect personal identifiable information from children under the age of 13. If you believe your child has provided such information on our website, please contact us immediately, and we will take steps to remove it from our records.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Changes to This Privacy Policy",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "We may update our Privacy Policy periodically. We recommend reviewing this page regularly for any changes. We will notify you of any updates by posting the revised Privacy Policy on this page. Changes are effective immediately upon posting.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height / 18,
              ),
              const FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
