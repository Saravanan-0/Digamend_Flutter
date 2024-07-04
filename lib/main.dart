import 'package:Digamend/Desktop_Screens/HomePageDesktop.dart';
import 'package:Digamend/Desktop_Screens/ProductsDesktop.dart';
import 'package:Digamend/Desktop_Screens/ServiceDesktop.dart';
import 'package:Digamend/Desktop_Screens/privacy_policy.dart';
import 'package:Digamend/Desktop_Screens/terms&conditions.dart';
import 'package:Digamend/Mobile_Screens/HomePageMobile.dart';
import 'package:Digamend/Mobile_Screens/PrivacyPolicy/Privacy_mobile.dart';
import 'package:Digamend/Mobile_Screens/PrivacyPolicy/terms_mobile.dart';
import 'package:Digamend/Mobile_Screens/ProductsMobile.dart';
import 'package:Digamend/Mobile_Screens/ServicesMobile.dart';
import 'package:Digamend/responsive_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digamend',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: const Color(0x00ffffff),
        body: ResponsiveLayout(
            mobileBody: const HomePageMobile(),
            desktopBody: const HomePageDesktop()),
      ),
      routes: {
        '/home': (context) => ResponsiveLayout(
            desktopBody: const HomePageDesktop(),
            mobileBody: const HomePageMobile()),
        '/products': (context) => ResponsiveLayout(
              desktopBody: const ProductsDesktopScreen(),
              mobileBody: const ProductScreenMobile(),
            ),
        '/services': (context) => ResponsiveLayout(
            desktopBody: const ServicesDesktop(),
            mobileBody: const ServicesMobScreen()),
        '/privacypolicy': (context) => ResponsiveLayout(
            desktopBody: const PrivacyPolicy(),
            mobileBody: const PrivacyMobile()),
        '/termsconditions': (context) => ResponsiveLayout(
            desktopBody: TermsConditions(),
            mobileBody: const TermsConditionsMobile()),
      },
    );
  }
}
