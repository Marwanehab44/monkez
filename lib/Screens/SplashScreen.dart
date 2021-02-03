import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:monkez/Screens/Home.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedSplashScreen(
              nextScreen: Home(),
              animationDuration: Duration(seconds: 3),
              splash: Image.asset(
                "assets/images/ambulance.png",
                height: 600,
                width: 100,
                fit: BoxFit.cover,
              ),
              backgroundColor: Colors.red[900],
              splashTransition: SplashTransition.scaleTransition,
              pageTransitionType: PageTransitionType.rightToLeft,
            ),
            AnimatedPositioned(
              duration: Duration(seconds: 2),
              bottom: 50,
              right: 30,
              left: 90,
              top: 440,
              child: TweenAnimationBuilder(
                duration: Duration(seconds: 4),
                child: Text(
                  'Stay Safe',
                  style: GoogleFonts.orbitron(
                      fontSize: 18,
                      color: Colors.white,
                      wordSpacing: 3,
                      letterSpacing: 15),
                ),
                tween: Tween<double>(begin: 0, end: 1),
                builder: (BuildContext context, double _val, Widget child) {
                  return Opacity(
                    opacity: _val,
                    child: child,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
