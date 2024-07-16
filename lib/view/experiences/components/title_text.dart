import 'package:flutter/material.dart';
import '../../../view/intro/components/subtitle_text.dart';
import '../../../view model/responsive.dart';

class CombineExperienceTitle extends StatelessWidget {
  const CombineExperienceTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Responsive(
          desktop: AnimatedSubtitleText(
              start: 30, end: 40, text: 'My ', color: Colors.black),
          largeMobile: AnimatedSubtitleText(
              start: 30, end: 25, text: 'My ', color: Colors.black),
          mobile: AnimatedSubtitleText(
              start: 25, end: 20, text: 'My ', color: Colors.black),
          tablet: AnimatedSubtitleText(
              start: 40, end: 30, text: 'My ', color: Colors.black),
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
                start: 30, end: 40, text: 'Experience ', gradient: false),
            largeMobile: AnimatedSubtitleText(
                start: 30, end: 25, text: 'Experience ', gradient: false),
            mobile: AnimatedSubtitleText(
                start: 25, end: 20, text: 'Experience ', gradient: true),
            tablet: AnimatedSubtitleText(
                start: 40, end: 30, text: 'Experience ', gradient: false),
          ),
        )
      ],
    );
  }
}
