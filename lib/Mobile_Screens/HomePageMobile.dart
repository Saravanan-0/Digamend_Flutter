import 'package:Digamend/Mobile_Screens/footer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;


class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _designTasksController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _companyNameController = TextEditingController();
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
  void initState() {
    scrollControllerBottom = ScrollController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        // foregroundColor: Colors.black,
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
                        color: const Color(0xFF143274)),
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
          padding: EdgeInsets.only(top: width * 0.08),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  height: width * 0.55,
                  // height: size.height,
                  width: size.width,
                  decoration: const BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                          image: AssetImage(
                        'assets/images/bgimage.png',
                      ))),
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: width * 0.03, top: width * 0.02),
                    child: Row(children: [
                      Column(
                        children: [
                          Column(children: [
                            Text(
                              'A new pardigm',
                              // textAlign: TextAlign.center,
                              style: GoogleFonts.jost(
                                  fontSize: width * 0.046,
                                  color: const Color(0xff143274),
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(children: [
                              Text(
                                'of',
                                style: GoogleFonts.jost(
                                    fontSize: width * 0.046,
                                    color: const Color(0xff143274),
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' Digital Experiences.',
                                style: GoogleFonts.jost(
                                    fontSize: width * 0.046,
                                    color: const Color(0xffCA256D),
                                    fontWeight: FontWeight.bold),
                              ),
                            ]),
                          ]),
                          SizedBox(
                            height: height * 0.003,
                          ),
                          SizedBox(
                            width: width * 0.5,
                            child: Text(
                              'Ready to embark  on an unforgettable journey into the world of virtual reality and gaming ? Explore our website to learn more about our products & services. Join us as we redefine the future of entertainment together.',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.jost(fontSize: width * 0.03),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.4,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/screenimage.png',
                            width: width * 0.44,
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  height: height * 0.008,
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
                            fontSize: width * 0.11,
                            fontWeight: FontWeight.w700),
                      ),
                      Positioned(
                        top: width * 0.06,
                        left: width * 0.076,
                        child: Text(
                          "About Us",
                          style: GoogleFonts.jost(
                              color: const Color(0xff143274),
                              fontSize: width * 0.065,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: width * 0.89,
                      child: Text(
                        'Welcome to Digamend, where imagination meets innovation in the world of Entertainment, Virtual Reality (VR), and Gaming.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.jost(
                            fontSize: width * 0.043,
                            color: const Color(0xff444444)),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.008,
                    ),
                    SizedBox(
                      width: width * 0.9,
                      child: Text(
                        "At Digamend, we're passionate about creating unforgettable experiences that transport you to new realms and redefine the boundaries of entertainment. Whether you're a gaming enthusiast, a VR adventurer, or simply seeking immersive entertainment, we have something extraordinary for you.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.jost(
                            fontSize: width * 0.043,
                            color: const Color(0xff444444)),
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
                        "Our Mission",
                        style: GoogleFonts.jost(
                            color: Colors.grey[200],
                            fontSize: width * 0.12,
                            fontWeight: FontWeight.w700),
                      ),
                      Positioned(
                        top: width * 0.06,
                        left: width * 0.12,
                        child: Text(
                          "Our Mission",
                          style: GoogleFonts.jost(
                              color: const Color(0xff143274),
                              fontSize: width * 0.065,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ]),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: width * 0.93,
                      child: Text(
                        'Our mission is simple yet ambitious: to revolutionize the way you experience entertainment. We strive to push the boundaries of creativity and technology, bringing you cutting-edge experiences that captivate your senses and leave you craving more.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.jost(
                            fontSize: width * 0.043,
                            color: const Color(0xff444444),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Container(
                      width: width * 0.9,
                      // height: height * 0.45,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/blurimage.png',
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(width * 0.12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Pushing the Boundaries of Innovation',
                              style: GoogleFonts.jost(
                                  fontSize: width * 0.038,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              // height: height * 0.025,
                              height: width * 0.02,
                            ),
                            SizedBox(
                              width: width * 0.7,
                              child: Text(
                                ' We are committed to pushing the boundaries of innovation in VR and gaming, constantly exploring new technologies, techniques, and concepts to enhance the user experience and drive the industry forward. Through our relentless pursuit of innovation, we aim to inspire and empower creators to push the limits of what is possible in virtual worlds.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.jost(
                                    fontSize: width * 0.0275,
                                    color: const Color(0xffFFFFFF)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: width * 0.9,
                      // height: height * 0.45,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/blurimage.png',
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(width * 0.12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Join Us on the Journey',
                              style: GoogleFonts.jost(
                                  fontSize: width * 0.038,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: width * 0.02,
                            ),
                            SizedBox(
                              width: width * 0.7,
                              child: Text(
                                "Join us on an exhilarating journey through the realms of Entertainment, Virtual Reality, and Gaming. Whether you're a seasoned explorer or a newcomer to the world of immersive experiences, there's always something new and exciting waiting for you at Digamend.Let's embark on this adventure together!",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.jost(
                                    fontSize: width * 0.0275,
                                    color: const Color(0xffFFFFFF)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.009,
                    ),
                    Column(children: [
                      Container(
                        // height: height * 0.6,
                        width: width * 0.999,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Image.asset(
                                  'assets/images/vrimage.png',
                                  width: width * 0.38,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(
                                width * 0.025,
                                width * 0.07,
                                width * 0.01,
                                width * 0.01,
                              ),
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'Immersive VR Experiences',
                                    style: GoogleFonts.jost(
                                        fontSize: width * 0.045,
                                        color: const Color(0xff143274),
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: height * 0.01,
                                  ),
                                  SizedBox(
                                    width: width * 0.55,
                                    child: Text(
                                      "Dive into captivating virtual worlds with our state-of-the-art VR experiences. From heart-pounding adventures to mind-bending simulations, our VR offerings will transport you to places you've only dreamed of. We strive to empower individuals to explore, create, and connect in virtual worlds that transcend the limits of reality. Through our VR and gaming platform, we aim to provide users with immersive experiences that captivate their senses, spark their imagination, and transport them to new realms of possibility.",
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.jost(
                                        fontSize: width * 0.029,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.02,
                      ),
                      Container(
                        // height: height * 0.6,
                        width: width * 0.999,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Row(children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(
                              width * 0.02,
                              width * 0.15,
                              width * 0.001,
                              width * 0.01,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Gaming Excellence',
                                  // textAlign: TextAlign.center,
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.045,
                                      color: const Color(0xff143274),
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                SizedBox(
                                  width: width * 0.55,
                                  child: Text(
                                    "Whether you're a casual player or a hardcore gamer, we've got you covered. Explore our diverse collection of games spanning various genres, platforms, and playstyles. Get ready to embark on epic quests, engage in thrilling competitions, and connect with fellow gamers from around the globe.",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.jost(
                                      fontSize: width * 0.029,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: width * 0.028,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/images/gamingimage2.png',
                                width: width * 0.4,
                              ),
                            ],
                          )
                        ]),
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
                              "We Offer",
                              style: GoogleFonts.jost(
                                  color: Colors.grey[200],
                                  fontSize: width * 0.12,
                                  fontWeight: FontWeight.w700),
                            ),
                            Positioned(
                              top: width * 0.06,
                              left: width * 0.12,
                              child: Text(
                                "We Offer",
                                style: GoogleFonts.jost(
                                    color: const Color(0xff143274),
                                    fontSize: width * 0.065,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ]),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/vrarmob.png',
                                width: width * 0.43,
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Image.asset(
                                'assets/images/gamingmob.png',
                                width: width * 0.43,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/uxuimob.png',
                                width: width * 0.43,
                              ),
                              SizedBox(
                                width: width * 0.02,
                              ),
                              Image.asset(
                                'assets/images/awsmob.png',
                                width: width * 0.43,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.02,
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
                                  fontSize: width * 0.1,
                                  fontWeight: FontWeight.w700),
                            ),
                            Positioned(
                              top: width * 0.06,
                              left: width * 0.1,
                              child: Text(
                                "Our Products",
                                style: GoogleFonts.jost(
                                    color: const Color(0xff143274),
                                    fontSize: width * 0.06,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ]),
                        ],
                      ),
                      Column(children: [
                        Container(
                          width: width * 0.9,
                          // height: height * 0.3,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/oneimage.png'))),
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.075),
                            child: Column(
                              children: [
                                Text(
                                  'RIVW',
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.07,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: width * 0.9,
                                ),
                                SizedBox(
                                  width: width * 0.61,
                                  child: Text(
                                    'Enjoy travelling around the world with your own Avatar. The virtual world is yours to explore, and the possibilities are limited only by your imagination Social Connections',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.jost(
                                        fontSize: width * 0.03,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: width * 0.9,
                          // height: height * 0.3,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/twoimage.png'))),
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.075),
                            child: Column(
                              children: [
                                Text(
                                  'Lost Continent',
                                  style: GoogleFonts.jost(
                                    fontSize: width * 0.07,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.9,
                                ),
                                SizedBox(
                                  width: width * 0.65,
                                  child: Text(
                                    'Are you ready for the ultimate treasure hunting adventure & Battle Combat? Join us as we embark on a thrilling journey to uncover hidden riches in the lost continents of the world! ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.jost(
                                        fontSize: width * 0.03,
                                        color: Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: width * 0.9,
                          // height: height * 0.3,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/threeimage.png'))),
                          child: Padding(
                            padding: EdgeInsets.all(width * 0.075),
                            child: Column(
                              children: [
                                Text(
                                  'Corlmart',
                                  style: GoogleFonts.jost(
                                      fontSize: width * 0.07,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: width * 0.9,
                                ),
                                SizedBox(
                                  width: width * 0.63,
                                  child: Text(
                                    'Empowering your 3D dreams, looking to  elevate your projects to the next dimension? Explore our vast collection of meticulously crafted 3D models designed to meet your creative needs.  ',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.jost(
                                        fontSize: width * 0.03,
                                        color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                // height: height * 0.7,
                                width: width * 0.9,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/images/blueimage.png",
                                    ),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(width * 0.04),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                      Text(
                                        "Got an idea?",
                                        style: GoogleFonts.jost(
                                          fontWeight: FontWeight.bold,
                                          fontSize: width * 0.08,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        height: width * 0.02,
                                        width: width * 0.27,
                                      ),
                                      SizedBox(
                                        height: width * 0.09,
                                      ),
                                      Text(
                                        "Know what you want? Great.",
                                        style: GoogleFonts.jost(
                                          fontWeight: FontWeight.w400,
                                          fontSize: width * 0.04,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        "Got questions? Even better.",
                                        style: GoogleFonts.jost(
                                          fontWeight: FontWeight.w400,
                                          fontSize: width * 0.04,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(
                                        height: height * 0.05,
                                      ),
                                      Container(
                                        // height: height*0.47,
                                        width: width / 1.2,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(6.0),
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
                                                      fontSize: width * 0.06, //16
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.6,
                                                    child: TextFormField(
                                                      controller: _nameController,
                                                      style: TextStyle(
                                                        fontSize: width * 0.053,
                                                      ),
                                                      decoration: InputDecoration(
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width: width *
                                                                        0.003)),
                                                        // border:
                                                        //     const UnderlineInputBorder(),
                                                        hintText: 'Your name*',
                                                        hintStyle:
                                                            GoogleFonts.jost(
                                                          fontSize: width * 0.045,
                                                        ),
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
                                                    height: height * 0.02,
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.6,
                                                    child: TextFormField(
                                                      controller: _phoneNumberController,
                                                      keyboardType:
                                                          TextInputType.number,
                                                      inputFormatters: <TextInputFormatter>[
                                                        FilteringTextInputFormatter
                                                            .digitsOnly
                                                      ],
                                                      style: TextStyle(
                                                        fontSize: width * 0.053,
                                                      ),
                                                      decoration: InputDecoration(
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors.black,
                                                              width:
                                                                  width * 0.003),
                                                        ),
                                                        // border:
                                                        //     const UnderlineInputBorder(),
                                                        hintText:
                                                            'Your phone number',
                                                        hintStyle:
                                                            GoogleFonts.jost(
                                                          fontSize: width * 0.045,
                                                        ),
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
                                                    height: height * 0.02,
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.6,
                                                    child: TextFormField(
                                                      controller: _designTasksController,
                                                      style: TextStyle(
                                                        fontSize: width * 0.053,
                                                      ),
                                                      decoration: InputDecoration(
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width: width *
                                                                        0.003)),
                                                        // border:
                                                        //     const UnderlineInputBorder(),
                                                        hintText:
                                                            'What design tasks do you have?',
                                                        hintStyle:
                                                            GoogleFonts.jost(
                                                          fontSize: width * 0.045,
                                                        ),
                                                        isDense: true,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: height * 0.02,
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.6,
                                                    child: TextFormField(
                                                      controller: _emailController,
                                                      style: TextStyle(
                                                        fontSize: width * 0.053,
                                                      ),
                                                      decoration: InputDecoration(
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width: width *
                                                                        0.003)),
                                                        // border:
                                                        //     const UnderlineInputBorder(),
                                                        hintText: 'Your email*',
                                                        hintStyle:
                                                            GoogleFonts.jost(
                                                          fontSize: width * 0.045,
                                                        ),
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
                                                    height: height * 0.02,
                                                  ),
                                                  SizedBox(
                                                    width: width * 0.6,
                                                    child: TextFormField(
                                                      controller: _companyNameController,
                                                      style: TextStyle(
                                                        fontSize: width * 0.053,
                                                      ),
                                                      decoration: InputDecoration(
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width: width *
                                                                        0.003)),
                                                        // border:
                                                        //     const UnderlineInputBorder(),
                                                        hintText:
                                                            'Your company name',
                                                        hintStyle:
                                                            GoogleFonts.jost(
                                                          fontSize: width * 0.045,
                                                        ),
                                                        isDense: true,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: width * 0.03,
                                                  ),
                                                  InkWell(
                                                    onTap: _submitForm,
                                                    child: Container(
                                                      // height: height * 0.05,
                                                      width: width * 0.18,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xFF143274),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                6),
                                                        border: Border.all(
                                                          color: const Color(
                                                              0xFF143274),
                                                          // width: 1,
                                                        ),
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    vertical:
                                                                        width *
                                                                            0.008),
                                                            child: Text(
                                                              "Submit",
                                                              style: GoogleFonts
                                                                  .jost(
                                                                color:
                                                                    Colors.white,
                                                                fontSize:
                                                                    width * 0.045,
                                                              ),
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
                        SizedBox(
                          height: height * 0.07,
                        ),
                        const FooterMobile()
                      ]),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
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
