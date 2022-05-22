import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
            //   animatedTexts: [
            //     TypewriterAnimatedText('Mohsin Illahi',
            //         textStyle:
            //             TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            //         speed: Duration(milliseconds: 400))
            //   ],
            //   totalRepeatCount: 4,
            //   pause: Duration(milliseconds: 200),
            //   displayFullTextOnTap: true,
            //   stopPauseOnTap: true,
            // )
          animatedTexts: [
           WavyAnimatedText('Hello MOHSIN', textStyle:
             TextStyle(fontSize: 30, fontWeight: FontWeight.bold))
          ],        
        ),
        ],
        ),
      ),
    );
  }
}
