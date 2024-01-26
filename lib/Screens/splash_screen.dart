import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:diet_planner/Screens/splash_screen_with_video.dart';
import 'package:diet_planner/Widgets/spacer_widget.dart';
import 'package:diet_planner/main.dart';
// import 'package:diet_planner/theme.dart';
import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

class SPlashScreen extends StatefulWidget {
  const SPlashScreen({super.key});

  @override
  State<SPlashScreen> createState() => _SPlashScreenState();
}

class _SPlashScreenState extends State<SPlashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => const SplashWithVideo())));
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.sizeOf(context).height;
    screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('Images/Nutrisync.png', height: screenHeight * 0.4),
            const SpacerWidget(height: 7),
            AnimatedTextKit(animatedTexts: [
              TyperAnimatedText('NOURISH. TRACK. THRIVE',
                  speed: const Duration(milliseconds: 140),
                  textStyle: const TextStyle(
                      height: 1.2,
                      fontFamily: 'GoodTime',
                      fontSize: 25,
                      color: Colors.amber,
                      fontWeight: FontWeight.w600)),
            ])
          ],
        ),
      ),
    );
  }
}
