import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: Row(
        children: [
          const Expanded(
            child: Image(
              image: AssetImage('assets/images/myphoto.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 80, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('About',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            decoration: TextDecoration.underline,
                            color: Colors.orange)),
                    const SizedBox(width: 8),
                    Text('Me',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .apply(color: Colors.black)),
                  ],
                ),
                const SizedBox(height: 50),
                Text(
                  'As a recent graduate with a Bachelor\'s degree of Computer Science from The University of Lahore, Islamabad Campus, I bring over a year of hands-on experience in mobile and web app development to the table. Originally from Nowshera, Pakistan, my journey into tech started with a strong passion for computer science, which led me to pursue and complete my BSCS degree.',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .titleSmall!
                      .apply(color: Colors.black),
                ),
                const SizedBox(height: 20),
                Text(
                  'Throughout my studies, I gained valuable experience in mobile app development using Flutter. This practical experience led me to successfully complete my final year project, where I used Flutter and Firebase to create a strong and dynamic solution. This project not only showed my technical skills but also sparked a strong interest in app development that still drives my professional goals.',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .titleSmall!
                      .apply(color: Colors.black),
                ),
                const SizedBox(height: 20),
                Text(
                  'Outside of academia, I had the privilege of gaining practical experience in Flutter through professionals at CHI NSTP, NUST. This experience refined my skills in navigating complex projects, communicating effectively, collaborating within team settings, and adapting to dynamic environments while working on diverse projects.',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .titleSmall!
                      .apply(color: Colors.black),
                ),
                const SizedBox(height: 20),
                Text(
                  'Now, as I step into the professional world, I\'m excited to use what I\'ve learned to contribute to innovative projects and make a real impact in the tech industry. My journey so far has taught me the importance of always learning and growing, and I can\'t wait to take on the challenges and opportunities ahead.',
                  style: Theme.of(context)
                      .primaryTextTheme
                      .titleSmall!
                      .apply(color: Colors.black),
                ),
                const SizedBox(height: 20),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
