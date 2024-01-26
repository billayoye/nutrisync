import 'package:diet_planner/Screens/login_screen.dart';
import 'package:diet_planner/Screens/signup_screen.dart';
import 'package:diet_planner/Widgets/buttons_widget.dart';
import 'package:diet_planner/Widgets/padding_widget.dart';
import 'package:diet_planner/Widgets/spacer_widget.dart';
import 'package:diet_planner/Widgets/text_widget.dart';
// import 'package:diet_planner/main.dart';
import 'package:diet_planner/theme.dart';
import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
import 'package:video_player/video_player.dart';

class SplashWithVideo extends StatefulWidget {
  const SplashWithVideo({super.key});

  @override
  State<SplashWithVideo> createState() => _SplashWithVideoState();
}

class _SplashWithVideoState extends State<SplashWithVideo> {
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        VideoPlayerController.asset('Images/splash.mp4')
          ..initialize().then((_) {
            _controller!.play();
            _controller!.setVolume(0.0);
            _controller!.setLooping(true);
            setState(() {});
          });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size buttonSize = Size(MediaQuery.of(context).size.width / 2 - 26, 56);
    return Scaffold(
      body: Stack(
        children: [
          // SizedBox(
          //     // height: MediaQuery.of(context).size.height,
          //     // width: MediaQuery.of(context).size.width,
          //     child: VideoPlayer(_controller!)),
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                  width: _controller!.value.size.width,
                  height: _controller!.value.size.height,
                  child: VideoPlayer(_controller!)),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                // image: DecorationImage(
                //     image: AssetImage('images/splash_video_image.png'),
                //     // image: AssetImage('images/video/gc_splash_video.gif'),
                //     fit: BoxFit.cover)
                ),
            child: Column(
              children: [
                const SpacerWidget(height: 20),
              //  Lottie.asset('Images/logo.json'),
               
                const PaddingWidget(
              horizontal: 10,
                  type: PaddingType.symmetric,
                  // padding: const EdgeInsets.all(24).copyWith(top: 36),
                  child:GCText(text: 'NUTRISYNC', type: TextType.h1, 
                  fontSize: 40, 
                  fontWeight: FontWeight.bold,)
                ),
                const SpacerWidget(height: 2),
                const PaddingWidget(
                  // all: 6,
                  horizontal: 10,
                  type: PaddingType.symmetric,
                  // padding: const EdgeInsets.all(24).copyWith(top: 36),
                  child: GCText(text: 'NOURISH. TRACK. THRIVE',
                  textAlign: TextAlign.center, 
                  fontSize: 18,
                  type: TextType.h1)
                ), //videoend
                const Spacer(),
                SafeArea(
                  child: Container(
                    // height: 90,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(30))),
                    child: PaddingWidget(
                      type: PaddingType.only,
                      top: 5,
                      left: 5,
                      right: 5,
                      bottom: 7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        CustomButton(
                          size: buttonSize,
                          color: primaryColor,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginScreen()));
                        }, child: const GCText(text: 'Login', type: TextType.buttonText)), 
                        CustomButton(
                          size: buttonSize,
                          color: const Color(0xFFECDEFD),
                          onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (_)=> SignupScreen()));
                        }, child: GCText(
                          text: 'Create account',
                          color: darkPrimaryColor,
                           type: TextType.buttonText))
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
