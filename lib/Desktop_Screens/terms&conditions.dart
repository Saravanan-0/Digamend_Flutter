// ignore_for_file: unused_field

import 'package:Digamend/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsConditions extends StatefulWidget {
  TermsConditions({super.key});

  @override
  State<TermsConditions> createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions>
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
    var height = MediaQuery.sizeOf(context).height;
    var width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: scrollControllerBottom,
        child: Padding(
          padding: const EdgeInsets.all(0),
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
                      "Terms&Conditions",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.015,
                    ),
                    Text(
                      "Welcome to DIGAMEND Technology Solutions, the website and mobile service of DIGAMEND Private Limited Company (“DIGAMEND,” “we,” or “us”).",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "These terms and conditions outline the rules and regulations for the use of DIGAMEND's Website, located at www.digamend.com.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "By accessing this website, we assume you accept these terms and conditions. Do not continue to use DIGAMEND Technology Solutions if you do not agree to take all of the terms and conditions stated on this page.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      """The following terminology applies to these Terms and Conditions, Privacy Statement, and Disclaimer Notice and all Agreements: "Client", "You", and "Your" refer to you, the person logging on to this website and compliant to the Company's terms and conditions. "The Company", "Ourselves", "We", "Our", and "Us", refers to our Company. "Party", "Parties", or "Us", refers to both the Client and us. All terms refer to the offer, acceptance, and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client's needs in respect of the provision of the Company's stated services, in accordance with and subject to prevailing law of in. Any use of the above terminology or other words in the singular, plural, capitalization, and/or he/she or they, are taken as interchangeable and therefore as referring to the same.""",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Cookies",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "We employ the use of cookies. By accessing DIGAMEND Technology Solutions, you agree to use cookies in agreement with DIGAMEND's Privacy Policy.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Most interactive websites use cookies to let us retrieve the user's details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "License",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Unless otherwise stated, DIGAMEND and/or its licensors own the intellectual property rights for all material on DIGAMEND Technology Solutions. All intellectual property rights are reserved. You may access this from DIGAMEND Technology Solutions for your own personal use subjected to restrictions set in these terms and conditions.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "You must not:",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Republish material from DIGAMEND Technology Solutions",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Sell, rent, or sub-license material from DIGAMEND Technology Solutions",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Reproduce, duplicate, or copy material from DIGAMEND Technology Solutions",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Redistribute content from DIGAMEND Technology Solutions",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the Free Terms and Conditions Generator.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "**Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. DIGAMEND does not filter, edit, publish, or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of DIGAMEND, its agents, and/or affiliates. Comments reflect the views and opinions of the person who posts their views and opinions. To the extent permitted by applicable laws, DIGAMEND shall not be liable for the Comments or for any liability, damages, or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "DIGAMEND reserves the right to monitor all Comments and to remove any Comments that can be considered inappropriate, offensive, or causes a breach of these Terms and Conditions.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "You warrant and represent that:",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• You are entitled to post the Comments on our website and have all necessary licenses and consents to do so.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• The Comments do not invade any intellectual property right, including without limitation copyright, patent, or trademark of any third party.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• The Comments do not contain any defamatory, libelous, offensive, indecent, or otherwise unlawful material which is an invasion of privacy.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "You hereby grant DIGAMEND a non-exclusive license to use, reproduce, edit, and authorize others to use, reproduce, and edit any of your Comments in any and all forms, formats, or media.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Hyperlinking to our Content",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "The following organizations may link to our website without prior written approval:",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Government agencies",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Search engines",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• News organizations",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Online directory distributors may link to our website in the same manner as they hyperlink to the Websites of other listed businesses",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• System-wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Website",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "These organizations may link to our home page, to publications, or to other Website information so long as the link:",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Is not in any way deceptive",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Does not falsely imply sponsorship, endorsement, or approval of the linking party and its products and/or services",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Fits within the context of the linking party's site",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "We may consider and approve other link requests from the following types of organizations:",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Commonly known consumer and/or business information sources",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Dot.com community sites",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Associations or other groups representing charities",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Online directory distributors",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Internet portals",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Accounting, law, and consulting firms",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Educational institutions and trade associations",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "We will approve link requests from these organizations if we decide that:",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• The link would not make us look unfavorably to ourselves or to our accredited businesses",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• The organization does not have any negative records with us",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• The benefit to us from the visibility of the hyperlink compensates the absence of DIGAMEND",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• The link is in the context of general resource information",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "These organizations may link to our home page so long as the link:",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Is not in any way deceptive",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Does not falsely imply sponsorship, endorsement, or approval of the linking party and its products or services",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• Fits within the context of the linking party's site",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to DIGAMEND. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Approved organizations may hyperlink to our website as follows:",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• By use of our corporate name",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• By use of the uniform resource locator being linked to",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "• By use of any other description of our website being linked to that makes sense within the context and format of content on the linking party's site",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "No use of DIGAMEND's logo or other artwork will be allowed for linking absent a trademark license agreement.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "I Frames",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our website.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Content Liability",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "We shall not be held responsible for any content that appears on your Website. You agree to protect and defend us against all claims that are rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene, or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third-party rights.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Reservation of Rights",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "We reserve the right to request that you remove all links or any particular link to our website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amend these terms and conditions and its linking policy at any time. By continuously linking to our website, you agree to be bound to and follow these linking terms and conditions.",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.0138, color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "Removal of links from our website",
                      style: GoogleFonts.jost(
                          fontSize: width * 0.027,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: width * 0.01,
                    ),
                    Text(
                      "If you find any link on our website that is offensive for any reason, you are free to contact and inform us at any moment. We will consider requests to remove links, but we are not obligated to or so or to respond to you directly.",
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
