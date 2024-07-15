import 'package:flutter/material.dart';
import '../../../view/intro/components/subtitle_text.dart';
import '../../../view model/responsive.dart';

class CombileAboutMeTitle extends StatelessWidget {
  const CombileAboutMeTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: AnimatedSubtitleText(
              start: 30, end: 40, text: 'About ', color: Colors.black),
          largeMobile: AnimatedSubtitleText(
              start: 30, end: 25, text: 'About ', color: Colors.black),
          mobile: AnimatedSubtitleText(
              start: 25, end: 20, text: 'About ', color: Colors.black),
          tablet: AnimatedSubtitleText(
              start: 40, end: 30, text: 'About ', color: Colors.black),
        ),
        ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(colors: [
              Colors.pink,
              Colors.blue,
            ]).createShader(bounds);
          },
          child: const Responsive(
            desktop: AnimatedSubtitleText(
                start: 30, end: 40, text: 'Me ', gradient: false),
            largeMobile: AnimatedSubtitleText(
                start: 30, end: 25, text: 'Me ', gradient: false),
            mobile: AnimatedSubtitleText(
                start: 25, end: 20, text: 'Me ', gradient: true),
            tablet: AnimatedSubtitleText(
                start: 40, end: 30, text: 'Me ', gradient: false),
          ),
        )
      ],
    );
  }
}
